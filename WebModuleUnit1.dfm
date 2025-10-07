object WebModule1: TWebModule1
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end>
  Height = 230
  Width = 415
  object RESTClient1: TRESTClient
    BaseURL = 'http://127.0.0.1:9000'
    Params = <>
    SynchronizedEvents = False
    Left = 136
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    Left = 136
    Top = 152
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Resource = 'generate-video'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 136
    Top = 88
  end
end
