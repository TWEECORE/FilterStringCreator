var document;

function InitializeFilterStringCreator() {

    document.addEventListener('DOMContentLoaded', function () {
        var btnClear = document.getElementById('btnClear');
        var btnProcess = document.getElementById('btnProcess');
        var btnCopy = document.getElementById('btnCopyToClip');

        btnClear.addEventListener('click', function () {
            clear();
        });

        btnProcess.addEventListener('click', function () {
            createFilterString();
        });

        btnCopy.addEventListener('click', function () {
            copyToClipboard();
        });
    });
}

function clear() {
    document.getElementById('inputArea').value = "";
    document.getElementById('outputArea').value = "";
}

function createFilterString() {
    var inputText = document.getElementById('inputArea').value;
    var outputArea = document.getElementById('outputArea');
    var incremented = false;

    var arrTemp = inputText.split(/[\n\r]/g);
    var arr = [];
    $.each(arrTemp, function (i, el) {
        if ($.inArray(el, arr) === -1) arr.push(el);
    });
    arr.sort();

    var temp;
    var nextValue;
    inputText = "";

    for (var i = 0; i < arr.length; i++) {
        var arrValue = arr[i];
        if (i > 0) {
            temp = incrementAlphanumeric(temp);
            if (temp == arrValue) {
                nextValue = incrementAlphanumeric(arrValue);
                if (nextValue == arr[i + 1]) {
                    incremented = true;
                } else {
                    if (incremented) {
                        incremented = false;
                        inputText += ".." + arrValue;
                    } else {
                        inputText += "|" + arrValue;
                    }
                }
            } else {
                inputText += "|" + arrValue;
            }
        } else {
            inputText += arrValue;
        }
        temp = arrValue;
    }

    if (inputText.startsWith('|'))
        inputText = inputText.substring(1);

    outputArea.value = inputText;
}

function incrementAlphanumeric(str) {
    try {
        const numPart = str.match(/(0?[1-9])+$|0?([1-9]+?0+)$/)[0];
        if (numPart != 0) {
            const strPart = str.slice(0, str.indexOf(numPart));
            const isLastIndexNine = numPart.match(/9$/);

            if (isLastIndexNine && strPart != null) {
                return strPart + numPart.replace(/\d+$/, (n) => ++n);
            } else if (numPart.length > 1) {
                return strPart + '0' + numPart.replace(/\d+$/, (n) => ++n);
            } else {
                return strPart + numPart.replace(/\d+$/, (n) => ++n);
            }

        }
    } catch (error) {
        console.log(error);
    }
    return str;
}

function copyToClipboard() {
    var outputArea = document.getElementById('outputArea');
    outputArea.select();
    document.execCommand('copy');
}