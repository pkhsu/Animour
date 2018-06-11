<!DOCTYPE html>
<html>

<head>
    <title>Editable Table with jQuery</title>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var h = [];
            //建立一個3x3個欄位的Table，含標題列、欄為4x4
            for (var r = 0; r <= 3; r++) {
                h.push("<tr>");
                for (var c = 0; c <= 3; c++) {
                    if (r == 0) {
                        if (c == 0)
                            h.push("<td class='rh ch'>&nbsp;</td>");
                        else
                            h.push("<td class='ch'>C" + c + "</td>");
                    }
                    else if (c == 0)
                        h.push("<td class='rh'>R" + r + "</td>");
                    else
                        h.push("<td class='cell'>V" + r + c + "</td>");
                }
                h.push("</tr>");
            }
            $("#tblEditor").html(h.join(''));
            //加上點選進入編輯模式的事件
            $("td.cell").live("dblclick", function () {
                //若已有其他欄位在編輯中，強制結束
                if (window.$currEditing)
                    finishEditing($currEditing);
                var $cell = $(this);
                var $inp = $("<input type='text' />");
                $inp.val($cell.text());
                $cell.addClass("cell-editor").html("").append($inp);
                $inp[0].select();
                window.$currEditing = $inp;
            }).live("click", function () {
                //點選其他格子，強制結束目前的編輯欄
                if (window.$currEditing
                    //排除點選目前編輯欄位的情況
                    && $currEditing.parent()[0] != this)
                    finishEditing($currEditing);
            });
            //加上按Enter/Tab切回原來Text的事件
            $("td.cell-editor input").live("keydown", function (e) {
                if (e.which == 13 || e.which == 9)
                    finishEditing($(this));
            });
            //結束編輯模式
            function finishEditing($inp) {
                $inp.parent().removeClass("cell-editor").text($inp.val());
                window.$currEditing = null;
            }
        });
    </script>
    <style type="text/css">
        #tblEditor {
            width: 300px;
            height: 300px;
        }

        #tblEditor td {
            border: 1px solid #444444;
            text-align: center;
            width: 25%;
        }

        td.cell-editor {
            background-color: #ddffdd;
        }

        td.cell-editor input {
            width: 90%;
            border: 0px none black;
            background-color: #ddffdd;
        }

        .ch,
        .rh {
            background-color: #dddddd;
        }
    </style>
</head>

<body>
    <table id="tblEditor"></table>
</body>

</html>