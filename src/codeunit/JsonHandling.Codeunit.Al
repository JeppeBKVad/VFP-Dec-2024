codeunit 50200 JsonHandling
{
    procedure GetValueFromKey(JsonString: Text; "Key": Text) : JsonValue
    var 
        JValue: JsonValue;
        JObject: JsonObject;
        JToken, JTokenResult : JsonToken;

    begin
        JToken.ReadFrom(JsonString);
        JObject := JToken.AsObject();
        JObject.Get("Key", JTokenResult);
        JValue := JTokenResult.AsValue();
        exit(JValue);
        
    end;
}