report 50201 SpeRegionalEventsReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = SpeRegionalEventsReportRDLC;
    Caption = 'Regional Events Report', Comment = 'PTB=Relatório de Eventos Regionais';
    PreviewMode = Normal;

    dataset
    {
        dataitem(SpeRegionalRunsTable; SpeRegionalRunsTable)
        {
            column(No; No)
            {
                IncludeCaption = true;

            }
            column(EventTitle; EventTitle)
            {
                IncludeCaption = true;

            }
            column(RunType; RunType)
            {
                IncludeCaption = true;
            }
            column(Subscribers; SubscribersTotal)
            {
                IncludeCaption = true;
            }
            column(TotalRevenue; SubscriptionTotalRevenue)
            {
                IncludeCaption = true;
                AutoFormatType = 10;
                AutoFormatExpression = '1,USD';
            }
        }
    }


    rendering
    {
        layout(SpeRegionalEventsReportRDLC)
        {
            Type = RDLC;
            LayoutFile = 'ReportLayouts/SpeRegionalEventsReport.rdl';
            Summary = 'Regional Events Report in RDL format', Comment = 'PTB: Relatório de Eventos Regionais no formato RDL';
            Caption = 'Regional Events Report', Comment = 'PTB=Relatório de Eventos Regionais';
        }
        layout(SpeRegionalEventsReportExcel)
        {
            Type = Excel;
            LayoutFile = 'ReportLayouts/SpeRegionalEventsReport.xlsx';
            Summary = 'Regional Events Report in ExcelFormat', Comment = 'PTB=Relatório de Eventos Regionais';
            Caption = 'Regional Events Report', Comment = 'PTB=Relatório de Eventos Regionais';
        }

    }

    labels
    {
        PageLbl = 'Page', Comment = 'PTB=Página';
        ReportTitleLbl = 'Regional Events Report', Comment = 'PTB=Relatório de Eventos Regionais';
        TotalLbl = 'Total', Comment = 'PTB=Total';
    }


}