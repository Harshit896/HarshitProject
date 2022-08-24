<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Project.AboutUs" %>
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
            <h1><b>ACM-BHU</b></h1>
            <br />
            <br />
            <h2>
                ACM (Association for Computing Machinery), the world’s
                largest educational &
                scientific computing society
                that offers its members to interact with experts in different fields. The BHU ACM student chapter is
                establishing now(in 2021). BHU
                ACM focuses on a new way to explore the breadth and variety of computing content. Here we use the
                mathematical knowledge and programming skills under the guidance of expertised speakers of different
                areas to advance the profession
                and promote ethical computing environment in India to make a positive impact across the global computing
                community.
            </h2>
        </div>
        </div>
</asp:Content>
