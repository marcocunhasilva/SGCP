unit uConexao;

interface

uses
    IniFiles, SysUtils, Forms, FireDAC.Comp.Client, Dialogs;

type
   TConexao = class
   private
      FPath     : string;
      FServidor : string;
      FPorta    : integer;
      FDatabase : string;
      FSenha    : string;
      FUsuario  : string;
      FDriver   : string;
      FSecao    : string;

   public
      property Path      : string  read FPath     write FPath;
      property Servidor  : string  read FServidor write FServidor;
      property Porta     : integer read FPorta    write FPorta;
      property Database  : string  read FDatabase write FDatabase;
      property Senha     : string  read FSenha    write FSenha;
      property Usuario   : string  read FUsuario  write FUsuario;
      property DriveName : string  read FDriver   write FDriver;
      property Secao     : string  read FSecao    write FSecao;

      constructor Create(Path: string; Secao: string);

      procedure LeINI(); virtual;
      procedure GravaINI(DriveName, Usuario, Senha, Servidor, Banco: string; Porta: integer); virtual;
      procedure Conectar(var Conexao: TFDConnection); virtual;
   end;


implementation

// L� o arquivo INI e carrega os par�metros no componente TFDConnection
procedure TConexao.Conectar(var Conexao: TFDConnection);
begin
     LeINI();

     try
        //Passa os par�metros para o objeto Conex�o
        Conexao.Connected   := false;
        Conexao.LoginPrompt := false;
        Conexao.Params.Clear;
        Conexao.Params.Add('hostname='  + Servidor);
        Conexao.Params.Add('user_name=' + Usuario);
        Conexao.Params.Add('password='  + Senha);
        Conexao.Params.Add('port='      + IntToStr(Porta));
        Conexao.Params.Add('Database='  + Database);
        Conexao.Params.Add('DriverID='  + DriveName);
     Except
        on E:Exception do
        ShowMessage('Erro ao carregar par�metros de conex�o!'#13#10 + E.Message);
     end;
end;

// M�todo construtor recebe o caminho do INI e nome da Se��o para Leitura
constructor TConexao.Create(Path: string; Secao: string);
var f : TextFile;
begin
      if not FileExists(path) then
      begin
         AssignFile(F, Path);
         Rewrite(F);
         writeln(F,'[Conexao]');
         writeln(F,'DriveName=MYSQL');
         writeln(F,'Usuario=root');
         writeln(F,'Senha=root');
         writeln(F,'Database=francisco');
         writeln(F,'Servidor=127.0.0.1');
         writeln(F,'Porta=3306');
         writeln(F,'');
         CloseFile(f);
      end;

    if FileExists(Path) then
    begin
       Self.Path := Path;
       Self.Secao := Secao;
    end
    else
       raise Exception.Create('Arquivo INI para configura��o n�o encontrado.'#13#10+
                              'Aplica��o ser� finalizada.');

end;

// Grava os par�metros recebidos no arquivo INI
procedure TConexao.GravaINI(DriveName, Usuario, Senha, Servidor, Banco: string; Porta: integer);
var
    ArqIni : TIniFile;
begin
     ArqIni := TIniFile.Create(Path);
     try
        ArqIni.WriteString(Secao, 'DriveName' , DriveName);
        ArqIni.WriteString(Secao, 'Usuario'   , Usuario);
        ArqIni.WriteString(Secao, 'Senha'     , Senha);
        ArqIni.WriteString(Secao, 'Database'  , Banco);
        ArqIni.WriteString(Secao, 'Servidor'  , Servidor);
        ArqIni.WriteInteger(Secao,'Porta'     , Porta);
     finally
         ArqIni.Free;
     end;
end;

// L� os par�metros do arquivo INI e atribui para os atributos
procedure TConexao.LeINI();
var
    ArqIni : TIniFile;
begin
     ArqIni := TIniFile.Create(Path);
     try
        Servidor    := ArqIni.ReadString(Secao, 'Servidor' , '');
        Porta       := ArqIni.ReadInteger(Secao, 'Porta'   , 0);
        Database    := ArqIni.ReadString(Secao, 'Database' , '');
        Senha       := ArqIni.ReadString(Secao, 'Senha'    , '');
        Usuario     := ArqIni.ReadString(Secao, 'Usuario'  , '');
        DriveName   := ArqIni.ReadString(Secao, 'DriveName', '');
     finally
         ArqIni.Free;
     end;
end;

end.
