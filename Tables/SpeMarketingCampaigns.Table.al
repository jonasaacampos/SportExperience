table 50204 SpeMarketingCampaigns
{
    Caption = 'Marketing Campaigns', Comment = 'PTB: Campanhas de Marketing';

    fields
    {
        field(1; Code; Code[20])
        {
            NotBlank = true;

        }

        field(2; Title; Text[100])
        {
            NotBlank = true;
            Caption = 'Title', Comment = 'Título';

        }

        field(3; Summary; Text[300])
        {
            Caption = 'Summary', Comment = 'Resumo';
        }

        field(4; MediaType; Option)
        {
            Caption = 'Media Type', Comment = 'Tipo de Midia';
            OptionCaption = 'TV,Podcast,Influencer,Paper', Comment = 'PTB: TV,Podcast,Influencer,Impresso';
            OptionMembers = TV,Podcast,Influencer,Paper;
        }
        field(5; Premiere; Date)
        {
            Caption = 'Premiere Date', Comment = 'Data de Estreia';

            trigger onValidate()
            begin
                dateValidate();
            end;
        }

        field(6; Insertions; Integer)
        {
            Caption = 'Insertions', Comment = 'PTB: Inserções';
            InitValue = 10;
            MinValue = 10;
        }
        field(7; DataExpires; Date)
        {
            Caption = 'Date Expires', Comment = 'PTB: Data final';
            trigger onValidate()
            begin
                dateValidate();
            end;
        }

        field(8; LogCriacao; Code[50])
        {
            Caption = 'Criado por';
            Editable = False;
            DataClassification = EndUserPseudonymousIdentifiers;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }

    }

    trigger OnInsert()
    begin
        LogCriacao := UserId();
    end;

    local procedure dateValidate()
    var
        DataNaoPodeSerAnteriorEstreia: Label '%1 not before the %2', Comment = 'PTB:%1 não pode ser anterior à %2';
    begin
        if DataExpires = 0D then
            exit;
        if DataExpires < Premiere then
            Error(DataNaoPodeSerAnteriorEstreia, FieldCaption(DataExpires), FieldCaption(Premiere));
    end;

}