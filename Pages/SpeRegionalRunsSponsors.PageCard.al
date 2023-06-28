page 50207 SpeRegionalRunsSponsorsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Name 2"; Rec."Name 2")
                {
                    ToolTip = 'Specifies an additional part of the name.';
                }

                field(SponsorAmount; Rec.SponsorAmount)
                {
                    ToolTip = 'Specifies the value of the Sponsor Value field.', Comment = 'PTB: Valor do Patrocínio';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(EventTitle; Rec.EventTitle)
                {
                    ToolTip = 'Specifies the value of the Event Title field.', Comment = 'PTB: Título do Evento';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}