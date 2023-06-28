page 50205 SpeInfluencers
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SpeInfluencers;
    CardPageId = SpeInfluencersCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(InfluencerNick; Rec.InfluencerNick)
                {
                    ToolTip = 'Specifies the value of the Influencer NickName field.', Comment = 'PTB: NickName do Influenciador';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the Influencer address city field.', Comment = 'PTB: Cidade do Influenciador';
                }
                field(InfluencerMail; Rec.InfluencerMail)
                {
                    ToolTip = 'Specifies the value of the Influencer email contact field.', Comment = 'PTB: email do Influenciador';
                }
            }
        }

    }
}