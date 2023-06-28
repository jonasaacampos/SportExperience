tableextension 50201 SpeRegionalRunsSponsors extends Customer
{
    fields
    {
        field(50200; EventTitle; text[50])
        {
            TableRelation = SpeRegionalRunsTable;
            Caption = 'Event Title', Comment = 'PTB: Título do Evento';
        }

        field(50201; SponsorAmount; Decimal)
        {
            Caption = 'Sponsor Value', Comment = 'PTB: Valor do Patrocínio';
        }

        modify("No.")
        {
            Caption = 'Sponsor ID', Comment = 'PTB: ID do patrocinador';
        }

        modify(Name)
        {
            Caption = 'Sponsor Company Name', Comment = 'PTB: Razão Social do patrocinador';
        }

        modify("Name 2")
        {
            Caption = 'Sponsor Branding Name', Comment = 'PTB: Nome Fantasia do patrocinador';
        }

        modify(Image)
        {
            Caption = 'Sponsor Brand', Comment = 'PTB: Logomarca do patrocinador';
        }



    }

}
