<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izinEkle.aspx.cs" Inherits="PersonelIzınTakip.izinEkle" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple checkbox value in javascript </title>
    <style>
        .header {
            text-align: center;
            background-color: rgb(68, 25, 211);
            color: white;
            padding: 10px;
        }

        .wrapper {
            width: 20%;
            margin: auto;
            border-radius: 8px;
            box-shadow: 0 3px 10px rgb(54, 54, 54);
            overflow: hidden;
        }

        .item {
            padding: 10px;
            margin-left: 40px;
        }

        button {
            display: block;
            margin: 10px auto;
            outline: none;
            padding: 12px;
            border: none;
            background-color: rgb(68, 25, 211);
            border-radius: 8px;
            color: white;
            cursor: pointer;
            width: 150px;
        }

        .result {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="header">
            <h3>Items</h3>
        </div>
        <div id="itemForm">
            <div class="item">
                <label for="green">Green</label>
                <input id="green" type="checkbox" value="Green">
            </div>
            <div class="item">
                <label for="pink">Pink</label>
                <input id="pink" type="checkbox" value="Pink">
            </div>
            <div class="item">
                <label for="yellow">Yellow</label>
                <input id="yellow" type="checkbox" value="Yellow">
            </div>
            <div class="item">
                <label for="black">Black</label>
                <input id="black" type="checkbox" value="Black">
            </div>
            <%--<a href="Main.aspx">--%>
                <button id="submit" onclick="www.google.com">Save </button>
            <%--</a>--%>
        </div>
    </div>
    <p class="result"></p>

    
   <%-- <script type="text/javascript">
        function cb(uc_id)//user control id'si ile checkbox id'sini giriyoruz
        {
            for (i = 0; i < document.elements.length; i++)//formdaki bütün nesneleri dolaşıyoruz
            {
                if (uc_id == form1.elements[i].id.split("_")[0] && event.srcElement.id != form1.elements[i].id)//cb id'is ile içinde bulunduğu user control idsi denetleniyor
                {
                    form1.elements[i].checked = false;
                }
            }
        }
    </script>--%>


    <script>
        var itemForm = document.getElementById('itemForm'); // getting the parent container of all the checkbox inputs
        var checkBoxes = itemForm.querySelectorAll('input[type="checkbox"]'); // get all the check box
        document.getElementById('submit').addEventListener('click', getData); //add a click event to the save button

        let result = [];

        function getData() { // this function will get called when the save button is clicked
            result = [];
            checkBoxes.forEach(item => { // loop all the checkbox item
                if (item.checked) {  //if the check box is checked
                    let data = {    // create an object
                        item: item.value,
                        selected: item.checked
                    }
                    result.push(data); //stored the objects to result array
                }
            })
            document.querySelector('.result').textContent = JSON.stringify(result); // display result
        }
    </script>
</body>

</html>
