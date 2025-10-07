unit WebModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TWebModule1 = class(TWebModule)
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content :=
    '<html>' +
    '<head><title>Web Server Application</title></head>' +
    '<body>Web Server Application</body>' +
    '</html>';
end;

end.
