table 50201 "External Project"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Guid"; Guid)
        {
            
        }

        field(2; Id; Integer)
        {

        }

        field(3; JobDiscription; Text[2000])
        {

        }

        field(4; Price; Decimal)
        {

        }

        field(5; Expenses; Decimal)
        {

        }

        field(6; StartDate; Date)
        {

        }

        field(7; EndDate; Date)
        {

        }

        field(8; Status; Enum Status)
        {

        }

        field(9; Rating; Enum Rating)
        {

        }

        field(10; Consultant; Text[100])
        {
            TableRelation = Consultant.Name where(Name = field(Consultant));
        }
    }
    
    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }

    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}