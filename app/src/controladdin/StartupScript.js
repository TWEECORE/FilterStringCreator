var body =
    '<table>' +
    '   <thead>' +
    '   <tr>' +
    '       <th>Source</th>' +
    '       <th>Processed</th>' +
    '   </tr>' +
    '   </thead>' +
    '   <tr>' +
    '       <td><textarea id="inputArea" cols="25" rows="40" class="inline-txtarea"></textarea></td>' +
    '       <td><textarea id="outputArea" cols="25" rows="40" class="inline-txtarea"></textarea></td>' +
    '   </tr>' +
    '</table>' +
    '<div class="containerForButtons">' +
    '   <button id="btnClear" type="button">clear</button>' +
    '   <button id="btnProcess" type="button" class="middleButton">process</button>' +
    '   <button id="btnCopyToClip" type="button">copy</button>' +
    '</div>'

var control = document.getElementById('controlAddIn');
control.innerHTML = body;

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddInReady', null);
