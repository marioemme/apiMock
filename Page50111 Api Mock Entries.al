page 50111 "API Mock Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "API Mock Entry";
    layout
    {
        area(Content)
        {
            repeater(Entries)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                    Caption = 'Description';
                }

                field("DataTime Example"; "DataTime Example")
                {
                    ApplicationArea = all;
                    Caption = 'DataTime Example';
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
            action(Push)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    lClientType: ClientType;
                    lObiType: ObjectType;
                    apiPage: page "API Mock Entity";
                begin
                    //Message(GetUrl(lClientType::Api, CompanyName, ObjectType::Page, 50110));
                    apiPage.Run();
                end;
            }
        }
    }
}