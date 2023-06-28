page 50202 SpeRegionalRunsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SpeRegionalRunsTable;
    Caption = 'Regional Runs Card', Comment = 'Card de Corridas Regionais';
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(BasicInformation)
            {
                Caption = 'Basic Information', Comment = 'PTB: Informações Básicas';
                Description = 'Basic Information events';

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

            group(ManagementIformation)
            {
                Caption = 'Management Information', Comment = 'Informações gerenciais';
                Description = 'Data for planners and revenues';
                field(RunDistance; Rec.RunDistance)
                {
                    ToolTip = 'Specifies the value of the Distance in Kilometers field.', Comment = 'PTB: Distância em Kilômetros';
                }
                field(RunLocationCity; Rec.RunLocationCity)
                {
                    ToolTip = 'Specifies the value of the City Location field.', Comment = 'PTB: Cidade do Evento';
                }
                field(RunLocationState; Rec.RunLocationState)
                {
                    ToolTip = 'Specifies the value of the State Location field.', Comment = 'PTB: UF do Evento';
                }
                field(SubscribersTotal; Rec.SubscribersTotal)
                {
                    ToolTip = 'Specifies the value of the Subscribers Total field.', Comment = 'PTB: Total de Inscritos';
                }
            }

            group(Revenues)
            {
                Caption = 'Total Revenues', Comment = 'PTB: Receita Total';
                field(SubscriptionTotalRevenue; Rec.SubscriptionTotalRevenue)
                {
                    ToolTip = 'Total Revenue (automatic field)', Comment = 'PTB: Total Arrecadado';
                }

            }

        }

    }

    actions
    {
        area(Processing)
        {
            action(TimeWeatherNowInSaoPaulo)
            {
                ApplicationArea = All;
                Caption = 'Weather Now in São Paulo/SP', Comment = 'PTB: Clima agora em São Paulo/SP';
                Image = Web;
                RunObject = page SpeRegionalRunsCard;

                trigger OnAction()
                begin
                    CurrPage.Update(true);
                    city := 'saopaulo';
                    cityFormated := 'São Paulo';
                    GetInfoTimeNow.TimeWeatherInfo(city, cityFormated);
                end;

            }
            action(TimeWeatherNowInSalvador)
            {
                ApplicationArea = All;
                Caption = 'Weather Now in Salvador/BA', Comment = 'PTB: Clima agora em Salvador/BA';
                Image = Web;

                trigger OnAction()
                begin
                    city := 'salvador';
                    cityFormated := 'Salvador';
                    GetInfoTimeNow.TimeWeatherInfo(city, cityFormated);
                end;
            }

        }
    }



    var
        GetInfoTimeNow: Codeunit SpeApiConsumer;
        city: text[50];
        cityFormated: text[50];


}