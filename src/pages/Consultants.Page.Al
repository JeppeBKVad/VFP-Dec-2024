page 50200 "External Consultants"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Consultant;
    AdditionalSearchTerms = 'Nypage Demo';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {

                }
                field(Name; Rec.Name)
                {

                }
                field(Age; Rec.Age)
                {

                }
                field(Job; Rec.Job)
                {

                }

                field(Salary;Rec.Salary)
                {

                }

            
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(GetJson)
            {
                Caption = 'GetJson';
                trigger OnAction()
                var
                    Client: HttpClient;
                    Url, ResponseAsText : Text;
                    Response: HttpResponseMessage;
                    JCode: Codeunit "JsonHandling";
                    JValue1, JValue2, JValue3, JValue4, JValue5: JsonValue;
                    counter: Integer;
                    test: Record Consultant;

                
                begin
                    Url := 'https://jeppetestwebapp-smartapitest.azurewebsites.net/api/person?id=%1';
                
                    for counter := 1 to 5 do begin
                        
                    
                    Client.Get(StrSubstNo(Url, counter), Response);

                    if not Response.IsSuccessStatusCode then exit;
                    Response.Content.ReadAs(ResponseAsText);

                    JValue1 := JCode.GetValueFromKey(ResponseAsText, 'id');
                    JValue2 := JCode.GetValueFromKey(ResponseAsText, 'name');
                    JValue3 := JCode.GetValueFromKey(ResponseAsText, 'age');
                    JValue4 := JCode.GetValueFromKey(ResponseAsText, 'job');
                    //JValue5 := JCode.GetValueFromKey(ResponseAsText, 'salary');

                    // Message('Id: %1 \Name: %2 \Age: %3 \Job: %4', JValue1.AsInteger(), JValue2.AsText(), JValue3.AsInteger(), JValue4.AsText());
                    
                    test.Init();
                    test.Validate(Id, JValue1.AsInteger());
                    test.Validate(Name, JValue2.AsText());
                    test.Validate(Age, JValue3.AsInteger());
                    test.Validate(Job, JValue4.AsText());

                    //test.Validate(Salary, JValue5.AsDecimal());
                    

                    if  not test.Insert() then 
                        test.Modify(); 

                    end;
                    
                    
                end;
            }
        }
    }
}