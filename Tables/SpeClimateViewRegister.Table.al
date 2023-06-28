table 50202 SpeClimateViewRegister
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID', Comment = 'PTB: ID';
            Editable = false;
        }

        field(2; RegisterDate; Date)
        {
            Caption = 'Date Register Time Weather', Comment = 'PTB: Data do registro da previsão do tempo';


        }

        field(3; WeatherComents; text[200])
        {

            Caption = 'Wheater Coments', Comment = 'PTB: Comentários do Tempo';

        }

    }

    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }

    var
        ClimateView: Codeunit SpeApiConsumer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}