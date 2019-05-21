table 50110 "API Mock Entry"
{
    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(5; Description; text[50])
        {
            Caption = 'Description';
        }

        field(10; "DataTime Example"; DateTime)
        {
            Caption = 'DataTime Example';
        }
        field(8000; Id; Guid)
        {
            Caption = 'Id';
            Editable = false;
            DataClassification = SystemMetadata;
        }

        field(9630; "Last Modified Date Time"; DateTime)
        {
            Caption = 'Last Modified Date Time';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if not IsNullGuid(Id) then
            Error('Control Id is read-only');

        Id := CreateGuid();
        "Last Modified Date Time" := CurrentDateTime();
    end;

    trigger OnModify()
    begin
        "Last Modified Date Time" := CurrentDateTime();
    end;
}