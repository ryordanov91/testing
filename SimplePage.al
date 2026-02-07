// SimplePage - A basic Card-type page for the AL extension.
// Object ID 50101 is within the project's allowed range (50100-50149).

namespace DefaultPublisher.ALProject4;

page 50101 SimplePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Simple Page';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Information';

                field(WelcomeMessage; WelcomeText)
                {
                    ApplicationArea = All;
                    Caption = 'Welcome';
                    ToolTip = 'Displays a welcome message.';
                    Editable = false;
                }
            }
        }
    }

    var
        WelcomeText: Text;

    trigger OnOpenPage()
    begin
        WelcomeText := 'Welcome to the Simple Page!';
    end;
}
