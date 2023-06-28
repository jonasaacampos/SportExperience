codeunit 50201 CalculateFunctions
{

    // Passagem de parâmetros por Referência (var...) ou por valor parecem ter o mesmo comportamento
    procedure CalculateTotalRevenue(var Rec: Record SpeRegionalRunsTable)
    begin
        Rec.SubscriptionTotalRevenue := Rec.SubscribersTotal * Rec.SubscriptionPrice;
    end;

}