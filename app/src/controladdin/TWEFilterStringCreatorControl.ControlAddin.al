/// <summary>
/// ControlAddIn "TWEFilterStringCreatorControl."
/// </summary>
controladdin "TWEFilterStringCreator"
{
    HorizontalShrink = true;
    HorizontalStretch = true;
    VerticalShrink = false;
    VerticalStretch = false;

    MinimumHeight = 380;
    RequestedHeight = 380;
    //MaximumHeight = 800;

    Scripts = './src/controladdin/jquery/jquery.min.js';
    StartupScript = './src/controladdin/StartupScript.js';
    StyleSheets = './src/controladdin/style.css';
    event ControlAddInReady();

    /// <summary>
    /// InitializeFilterStringCreator.
    /// </summary>
    procedure InitializeFilterStringCreator();
}