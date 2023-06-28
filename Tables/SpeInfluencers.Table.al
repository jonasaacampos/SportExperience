table 50203 SpeInfluencers
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; id; Integer)
        {
            Caption = 'ID', Comment = 'PTB: ID';
            Editable = false;
            AutoIncrement = true;
        }

        field(2; No; Integer)
        {
            Caption = 'ID', Comment = 'PTB: ID';

            trigger OnValidate()
            var
                InfluencersRegister: Codeunit SpeApiConsumer;

            begin
                InfluencersRegister.InfluencersRegister(Rec);
            end;
        }

        field(3; InfluencerName; Text[50])
        {
            Caption = 'Name', Comment = 'PTB: Nome';
        }

        field(4; InfluencerNick; Text[50])
        {
            Caption = 'NickName', Comment = 'PTB: NickName';
        }

        field(5; InfluencerMail; Text[100])
        {
            Caption = 'email', Comment = 'PTB: email';
        }

        field(6; AddressStreet; Text[100])
        {
            Caption = 'address street', Comment = 'PTB: Rua';
        }

        field(7; Suite; Text[100])
        {
            Caption = 'Suite', Comment = 'PTB: Complemento';
        }

        field(8; City; Text[100])
        {
            Caption = 'City', Comment = 'PTB: Cidade';
        }

        field(9; Phone; Text[100])
        {
            Caption = 'Phone', Comment = 'PTB: Telefone';
        }
        field(10; EventParticipant; Text[100])
        {
            TableRelation = SpeRegionalRunsTable;
            Caption = 'ID Event Participant', Comment = 'PTB: ID Evento que participou';
            NotBlank = true;
        }

    }

    keys
    {
        key(Key1; id, EventParticipant)
        {
            Clustered = true;
        }
    }

}