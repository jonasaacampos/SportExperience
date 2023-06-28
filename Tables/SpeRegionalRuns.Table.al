table 50201 SpeRegionalRunsTable
{
    Caption = 'Regional Runs Events', Comment = 'PTB: Eventos Regionais Corridas';

    fields
    {
        field(1; No; Integer)
        {
            AutoIncrement = true;
            Caption = 'Event Number', Comment = 'PTB: Evento Número';
            Editable = false;
        }
        field(2; RunType; Enum SpeRunType)
        {
            Caption = 'Event Type', Comment = 'PTB: Tipo de Evento';
        }
        field(3; EventTitle; Text[50])
        {
            Caption = 'Event Title', Comment = 'PTB: Nome do Evento';
        }
        field(4; RunLocationCity; Text[30])
        {
            Caption = 'City Location', Comment = 'PTB: Cidade do Evento';
        }
        field(5; RunLocationState; Text[30])
        {
            Caption = 'State Location', Comment = 'PTB: UF do Evento';
        }
        field(6; RunDistance; Decimal)
        {
            Caption = 'Distance in Kilometers', Comment = 'PTB: Distância em Kilômetros';
        }
        field(7; RunDate; Date)
        {
            Caption = 'Date Event', Comment = 'PTB: Data da Corrida';
        }
        field(8; SubscribersTotal; Integer)
        {
            Caption = 'Subscribers Total', Comment = 'PTB: Total de Inscritos';
            trigger OnValidate()
            begin
                CalculateTotalRevenue.CalculateTotalRevenue(Rec);
            end;
        }
        field(9; SubscriptionPrice; Decimal)
        {
            Caption = 'Subscription Price', Comment = 'PTB: Valor da Inscrição';
            trigger OnValidate()
            begin
                CalculateTotalRevenue.CalculateTotalRevenue(Rec);
            end;
        }
        field(10; SubscriptionTotalRevenue; Decimal)
        {
            Caption = 'Subscription Total Revenue', Comment = 'PTB: Total da Arrecadado Inscrições';
            Editable = false;
        }

    }

    keys
    {
        key(PK; No) { }
        key(EventTitle; EventTitle) { }
        key(RunLocationState; RunLocationState) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; No, EventTitle, RunLocationState) { }
        fieldgroup(Brick; No, EventTitle, RunType) { }
    }

    var
        CalculateTotalRevenue: Codeunit CalculateFunctions;


}