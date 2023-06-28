page 50206 SpeInfluencersCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SpeInfluencers;

    layout
    {
        area(Content)
        {
            group(InfluencerData)
            {

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the ID influencer field.', Comment = 'PTB: ID do influenciador';
                }
                field(InfluencerNick; Rec.InfluencerNick)
                {
                    ToolTip = 'Specifies the value of the Influencer NickName field.';
                }
                field(InfluencerName; Rec.InfluencerName)
                {
                    ToolTip = 'Specifies the value of the Influencer Name field.', Comment = 'PTB: Nome do Influenciador';
                }
                field(AddressStreet; Rec.AddressStreet)
                {
                    ToolTip = 'Specifies the value of the Influencer address street field.', Comment = 'PTB: Rua endereço do Influenciador';
                }
                field(Suite; Rec.Suite)
                {
                    ToolTip = 'Specifies the value of the Influencer address Suite field.', Comment = 'PTB: Complemento endereço do Influenciador';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the Influencer address city field.';
                }
                field(InfluencerMail; Rec.InfluencerMail)
                {
                    ToolTip = 'Specifies the value of the Influencer email contact field.';
                }
                field(EventParticipant; Rec.EventParticipant)
                {
                    ToolTip = 'Specifies the value of the Event Participant field.', Comment = 'PTB: Participação no Evento';
                }

            }

            group(SystemLog)
            {

                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = 'PTB: ID';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}