<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="disclosure.aspx.cs" Inherits="disclosure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        @media (max-width:991px){

            .action-btn{
            display:block;
            width:100%;
            margin-bottom:6px;
            }

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container py-5 ">

<h2 class="text-center mb-5">Mandatory Disclosure</h2>

<div class="table-responsive">

<table class="table table-bordered table-striped">

<thead class="table-dark">
<tr>
<th style="width:70%">Document Name</th>
<th style="width:30%" class="text-center">View</th>
</tr>
</thead>

<tbody>

<asp:Repeater ID="rptDisclosure" runat="server">

<ItemTemplate>

<tr>

<td>
<i class="fa fa-file-pdf text-danger me-2"></i>
<%# Eval("Title") %>
</td>

<td class="text-center">

<a href='uploads/disclosure/<%# Eval("ImagePath") %>'
target="_blank"
class="btn btn-primary btn-sm  action-btn ">

<i class="fa fa-eye"></i> View Document

</a>

    <a href='uploads/disclosure/<%# Eval("ImagePath") %>'
download
class="btn btn-success btn-sm action-btn">

<i class="fa fa-download"></i> Download

</a>

</td>

</tr>

</ItemTemplate>

</asp:Repeater>

</tbody>

</table>

</div>

</div>

</asp:Content>

