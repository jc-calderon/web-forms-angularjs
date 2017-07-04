<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2>All Products</h2>   
        <table id="products-table">
            <tr>
            <th>Name</th>
            <th>Quantity</th>
            </tr>
        </table>
    </div>

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.min.js"></script>
    <script>
        var uri = 'api/product';

        $(document).ready(function () {
        // Send an AJAX request
        $.getJSON(uri)
            .done(function (data) {
                // On success, 'data' contains a list of products.
                $.each(data, function (key, item) {
                    var tCell1 = $('<td>').html(item.name);
                    var tCell2 = $('<td>').html(item.quantity);
                    var tRow = $('<tr>').append(tCell1).append(tCell2);

                    $('#products-table').append(tRow);
                });
            });
        });
    </script>
</asp:Content>
