page 50204 SpeClimateViewRegister
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SpeClimateViewRegister;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = 'PTB: ID';
                }
                field(RegisterDate; Rec.RegisterDate)
                {
                    ToolTip = 'Specifies the value of the Date Register Time Weather field.', Comment = 'PTB: Data do registro da previsão do tempo';
                }
                field(WeatherComents; Rec.WeatherComents)
                {
                    ToolTip = 'Specifies the value of the Wheater Coments field.', Comment = 'PTB: Comentários do Tempo';
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}