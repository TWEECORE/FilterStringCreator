/// <summary>
/// Page TWE Filter String Creator (ID 50000).
/// </summary>
page 50000 "TWE Filter String Creator"
{
    ApplicationArea = All;
    PageType = NavigatePage;
    UsageCategory = Administration;
    AdditionalSearchTerms = 'tweecore,creator';
    Caption = 'Filter String Creator';

    layout
    {
        area(Content)
        {
            group(FilterStringCreator)
            {
                Visible = (CurrentStep = 1);
                Caption = 'Create a Filter String';
                group(FilterCreator)
                {
                    ShowCaption = false;
                    usercontrol(FilterStringCreatorControl; TWEFilterStringCreator)
                    {
                        ApplicationArea = All;
                        trigger ControlAddInReady()
                        begin
                            CurrPage.FilterStringCreatorControl.InitializeFilterStringCreator();
                        end;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionClose)
            {
                ApplicationArea = All;
                Caption = 'Close';
                Image = Approve;
                InFooterBar = true;

                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }

    var
        CurrentStep: Integer;

    trigger OnOpenPage()
    begin
        CurrentStep := 1;
    end;
}
