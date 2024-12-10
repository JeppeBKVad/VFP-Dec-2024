table 50200 "Consultant"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Id; Integer)
        {

        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            
        }
        field(3; Age; Integer)
        {

        }
        field(4; Job; Text[200])
        {

        }
        field(5; "Guid"; Guid)
        {

        }
        field(6; Salary; Decimal)
        {

        }

        
    }

    
    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }

        key(Key2; Name)
        {
            
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