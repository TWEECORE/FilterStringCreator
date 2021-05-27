/// <summary>
/// Page TWE Filter String Creator (ID 70704751).
/// </summary>
page 70704751 "TWE Filter String Creator"
{
    PageType = NavigatePage;
    UsageCategory = Administration;
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
