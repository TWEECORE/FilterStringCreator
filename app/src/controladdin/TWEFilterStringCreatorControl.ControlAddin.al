/// <summary>
/// ControlAddIn "TWEFilterStringCreatorControl."
/// </summary>
controladdin "TWEFilterStringCreator"
{
    HorizontalShrink = false;
    HorizontalStretch = false;
    VerticalShrink = false;
    VerticalStretch = false;

    MinimumHeight = 370;
    RequestedHeight = 370;
    //MaximumHeight = 800;

    MinimumWidth = 420;
    RequestedWidth = 420;
    //MaximumWidth = 600;

    Scripts = './src/controladdin/Script.js', './src/controladdin/jquery/jquery.min.js';
    StartupScript = './src/controladdin/StartupScript.js';
    StyleSheets = './src/controladdin/style.css';
    event ControlAddInReady();

    /// <summary>
    /// InitializeFilterStringCreator.
    /// </summary>
    procedure InitializeFilterStringCreator();
}