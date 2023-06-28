page 50209 SpeMarketingCampaignsCard
{
    Caption = 'Marketing Campaigns', Comment = 'Campanhas de Marketing';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SpeMarketingCampaigns;

    layout
    {
        area(Content)
        {
            group(MediaInfo)
            {
                Caption = 'Media Information', Comment = 'PTB: Informação de mídia';
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field(DataExpires; Rec.DataExpires)
                {
                    ToolTip = 'Specifies the value of the Date Expires field.';
                }
                field(Premiere; Rec.Premiere)
                {
                    ToolTip = 'Specifies the value of the Premiere Date field.', Comment = 'Data de Estreia';
                }
                field(Insertions; Rec.Insertions)
                {
                    ToolTip = 'Specifies the value of the Insertions field.', Comment = 'PTB: Inserções';
                }
                field(MediaType; Rec.MediaType)
                {
                    ToolTip = 'Specifies the value of the Media Type field.';
                }
            }

            group(AditionalData)
            {
                Caption = 'Aditional Data', Comment = 'PTB: Dados Adicionais';
                field(Summary; Rec.Summary)
                {
                    ToolTip = 'Specifies the value of the Summary field.', Comment = 'Resumo';
                }
                field(LogCriacao; Rec.LogCriacao)
                {
                    ToolTip = 'Specifies the value of the Criado por field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
            }
        }
    }


}