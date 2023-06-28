codeunit 50202 SpeApiConsumer
{
    procedure TimeWeatherInfo(var city: Text; var cityFormated: text)
    var
        TemperatureInformation, WindInformation, WeatherInformation : Text;
    begin
        Request.SetRequestUri('https://goweather.herokuapp.com/weather/' + city);
        Request.Method('GET');
        Client.Send(Request, Response);
        if Response.IsSuccessStatusCode then
            Content := Response.Content
        else
            Message('Requisition Error (%1: %2)', Response.HttpStatusCode, Response.ReasonPhrase);

        Content.ReadAs(Output);
        RawText := Output.Split('":"', '",', '"}');
        TamanhoLista := RawText.Count;
        TemperatureInformation := RawText.Get(2);
        WindInformation := RawText.Get(4);
        WeatherInformation := RawText.Get(6);
        Message('%1 now: \🏖️ Temperature: %2 \🌬️ Wind: 3% \🤯 %4.', cityFormated, TemperatureInformation, WindInformation, WeatherInformation);
        Content.Clear();

    end;


    procedure InfluencersRegister(var TableRegister: Record SpeInfluencers)

    begin
        apiUrl := 'https://sportinfluencersapi.jonasaacampos67.repl.co/json/';
        apiURI := apiUrl + Format(TableRegister.No);
        //Message('%1', apiURI);

        Client.Get(apiURI, Response);

        if Response.IsSuccessStatusCode then begin
            Content := Response.Content;
            Content.ReadAs(Result);
            JObject.ReadFrom(Result);
            JObject.Get('name', JToken);
            TableRegister.InfluencerName := JToken.AsValue().AsText();
            JObject.Get('email', JToken);
            TableRegister.InfluencerMail := JToken.AsValue().AsText();
            JObject.Get('username', JToken);
            TableRegister.InfluencerNick := JToken.AsValue().AsText();
            JObject.Get('username', JToken);
            TableRegister.InfluencerNick := JToken.AsValue().AsText();

            JObject.Get('address', JToken);
            if JToken.IsObject then begin
                JToken.WriteTo(Output);
                NewJObject.ReadFrom(Output);
                NewJObject.Get('street', NewJToken);
                TableRegister.AddressStreet := NewJToken.AsValue().AsText();
                NewJObject.Get('suite', NewJToken);
                TableRegister.Suite := NewJToken.AsValue().AsText();
                NewJObject.Get('city', NewJToken);
                TableRegister.City := NewJToken.AsValue().AsText();

            end
            else
                Error('Json Token is not exist or indispinible');

        end

        else
            Message('Requisition Error (%1: %2)', Response.HttpStatusCode, Response.ReasonPhrase);
    end;


    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        Content: HttpContent;
        Request: HttpRequestMessage;
        Headers: HttpHeaders;
        Output: Text;
        Result: Text;
        RawText: List of [Text];
        TamanhoLista: Integer;
        JObject: JsonObject;
        JToken: JsonToken;
        NewJObject: JsonObject;
        NewJToken: JsonToken;

        apiTokenName: Text;
        apiTokenKey: Text;

        apiObject: Text;
        apiUrl: Text;
        apiURI: Text;


}
