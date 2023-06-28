page 50201 SpeRegionalRunsPage
{
    PageType = List;
    SourceTable = SpeRegionalRunsTable;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Regional Runs Page List', Comment = 'PTB: Lista Corridas Regionais';
    CardPageId = SpeRegionalRunsCard;
    HelpLink = 'https://www.corridaderuasuperacao.com.br/calendario';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; Rec.No)
                {
                    ToolTip = '(auto-generate) Event Id', Comment = 'PTB: (Preenchimento automático) Evento Número';
                    Caption = 'Event Number', Comment = 'PTB: Evento Número';
                }
                field(EventTitle; Rec.EventTitle)
                {
                    ToolTip = 'Insert Event Title', Comment = 'PTB: Nome do Evento';
                    Caption = 'Event Title', Comment = 'PTB: Nome do Evento';
                }
                field(RunDate; Rec.RunDate)
                {
                    ToolTip = 'Insert the date event', Comment = 'PTB: Insira a Data da Corrida';
                    Caption = 'Date Event', Comment = 'PTB: Data da Corrida';
                }
                field(RunType; Rec.RunType)
                {
                    ToolTip = 'Specifies the value of the Event Type field.', Comment = 'PTB: Tipo de Evento';
                    Caption = 'Event Type', Comment = 'PTB: Tipo de Evento';
                }
                field(SubscriptionPrice; Rec.SubscriptionPrice)
                {
                    ToolTip = 'Specifies the value of the Subscription Price field.', Comment = 'PTB: Valor da Inscrição';
                    Caption = 'Subscription Price', Comment = 'PTB: Valor da Inscrição';
                }


            }
        }


    }


}