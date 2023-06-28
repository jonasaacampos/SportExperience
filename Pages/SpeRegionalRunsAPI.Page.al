page 50203 SpeRegionalRunsAPI
{
    PageType = API;
    Caption = 'Regional Runs Page List', Comment = 'PTB: Lista Corridas Regionais';
    APIPublisher = 'jaac';
    APIGroup = 'spe';
    APIVersion = 'v1.0';

    EntityName = 'RegionalRunsTable';
    EntitySetName = 'regionalRunsTableSet';
    SourceTable = SpeRegionalRunsTable;
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId', Comment = 'PTB: ID sistema';
                    Editable = false;
                    ApplicationArea = All;
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