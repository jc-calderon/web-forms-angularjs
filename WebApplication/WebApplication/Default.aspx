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
    
    <div ng-app="webForms" ng-controller="webFormsController as webFormCtrl">
        <h2>All Products AngularJS way</h2>  
        <table>
            <tr>
                <th>Name</th>
                <th>Quantity</th>
            </tr>
            <tr ng-repeat="product in webFormCtrl.products">
                <td>{{product.name}}</td>
                <td>{{product.quantity}}</td>
            </tr>
        </table>
    </div>

    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/restangular/1.5.1/restangular.min.js"></script>
    <script type="text/javascript" src="/Scripts/AngularJS/angular.module.js"></script>
    <script type="text/javascript" src="/Scripts/AngularJS/web-form.controller.js"></script>

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
