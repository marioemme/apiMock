page 50110 "API Mock Entity"
{
    PageType = API;
    Caption = 'apiMockEntry';
    APIPublisher = 'mario';
    APIGroup = 'demos';
    EntityName = 'apiMockEntry';
    EntitySetName = 'apiMockEntries';
    SourceTable = "API Mock Entry";
    DelayedInsert = true;


    layout
    {
        area(Content)
        {
            repeater(MockEntries)
            {
                field(Id; Id)
                {
                    Caption = 'id';
                }
                field(Code; Code)
                {
                    Caption = 'code';
                }
                field(Description; Description)
                {
                    Caption = 'description';
                }
                field(DataTimeExample; "DataTime Example")
                {
                    Caption = 'datetimeExample';
                }
                field(LastModifiedDateTime; "Last Modified Date Time")
                {
                    Caption = 'lastModifiedDateTime';
                    Editable = false;
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin

    end;

    trigger OnModifyRecord(): Boolean
    begin

    end;
}