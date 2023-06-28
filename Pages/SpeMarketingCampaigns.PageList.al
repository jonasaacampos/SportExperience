page 50208 SpeMarketingCampaignsPage
{
    Caption = 'Marketing Campaigns List', Comment = 'Lista de Campanhas de Marketing';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SpeMarketingCampaigns;
    Editable = false;
    HelpLink = 'https://github.com/jonasaacampos';
    CardPageId = SpeMarketingCampaignsCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = 'Título';
                }
                field(MediaType; Rec.MediaType)
                {
                    ToolTip = 'Specifies the value of the Media Type field.', Comment = 'Tipo de Midia';
                }
                field(DataExpires; Rec.DataExpires)
                {
                    ToolTip = 'Specifies the value of the Date Expires field.', Comment = 'PTB: Data final';
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