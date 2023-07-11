var selectedRow = null;

function onFormSubmit(){
    var formData = readFormData();
    if(selectedRow == null)
        insertNewData(formData);
        else
        updateRecord(formData);
    resetForm();
}

function readFormData(){
    var formData = {};
    formData["product"] = document.getElementById("product").value;
    formData["price"] = document.getElementById("price").value;
    formData["quantity"] = document.getElementById("quantity").value;
    formData["tax_percent"] = document.getElementById("tax_percent").value;

    price_decimal = Number.parseInt(formData["price"]);

    taxAmount = (price_decimal * formData["tax_percent"] / 100) * formData["quantity"];
    document.getElementById("taxAmount").innerHTML = taxAmount;

    netTotal = (taxAmount + price_decimal);
    document.getElementById("netTotal").innerHTML = netTotal;
    
    console.log(taxAmount);
    console.log(netTotal);

    return formData;
}

function insertNewData(data){
        var table = document.getElementById('productList').getElementsByTagName('tbody')[0];
        var newRow = table.insertRow(table.length);

        cell1 = newRow.insertCell(0);
        cell1.innerHTML = data.product;

        cell2 = newRow.insertCell(1);
        cell2.innerHTML = data.price;

        cell3 = newRow.insertCell(2);
        cell3.innerHTML = data.quantity;

        cell4 = newRow.insertCell(3);
        cell4.innerHTML = data.tax_percent;

        cell5 = newRow.insertCell(4);
        cell5.innerHTML = `<button class="btn btn-success btn-sm" onclick="onEdit(this)">Edit</button>
                            <button class="btn btn-danger btn-sm" onclick="onDelete(this)">Delete</button>
                            `;
        let total = 0
        let net_tax = 0
        for(let line = 0; line < table.rows.length; line++){
            let price = parseInt(table.rows[line].cells[1].textContent)
            let quantity = parseInt(table.rows[line].cells[2].textContent)
            let tax_percent = parseInt(table.rows[line].cells[3].textContent)
            total += (price * quantity)
            net_tax += ((tax_percent/100)*(price * quantity))
        }
        $("#netTotal").text(total);
        $("#taxAmount").text(net_tax);
        $("#Total").text(total + net_tax);


}

function resetForm(){
    document.getElementById("product").value = "";
    document.getElementById("price").value = "";
    document.getElementById("quantity").value = "";
    document.getElementById("tax_percent").value = "";
    selectedRow = null;
}

function onEdit(td){
    selectedRow = td.parentElement.parentElement;
    document.getElementById("product").value = selectedRow.cells[0].innerHTML;
    document.getElementById("price").value = selectedRow.cells[1].innerHTML;
    document.getElementById("quantity").value = selectedRow.cells[2].innerHTML;
    document.getElementById("tax_percent").value = selectedRow.cells[3].innerHTML;
}

function updateRecord(formData){
    selectedRow.cells[0].innerHTML = formData.product;
    selectedRow.cells[1].innerHTML = formData.price;
    selectedRow.cells[2].innerHTML = formData.quantity;
    selectedRow.cells[3].innerHTML = formData.tax_percent;
}

function onDelete(td){
    if(confirm("Are you Sure to Delete this Data ?")){
        row = td.parentElement.parentElement;
        document.getElementById("productList").deleteRow(row.rowIndex);
        resetForm();
    }       
    

}