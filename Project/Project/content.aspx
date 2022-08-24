<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Project.content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .a {
            margin: auto;
            padding: 0;
            height: 100vh;
            background-image: url("images-assets/Backgrounds/m.jpeg");
        }
        .a h1{
            font-size:xx-large;
            font-display:block;
            color:white
        }

       .a h2 {
            color: white;
            font-size:x-large;
            font-display:block;
            font-family:poppins;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="a">
        <div align="center">
            <h1><b>ACM</b></h1>
            <br />
            <br />

            <h2 align="center"><q>The Association for Computing Machinery is a US-based international
                learned society for computing. It was founded in 1947 and is the world's largest 
                scientific and educational computing society. The ACM is a non-profit professional 
                membership group, claiming nearly 110,000 student and 
                professional members as of 2022.</q></h2>
        </div>
    </div>
</asp:Content>
