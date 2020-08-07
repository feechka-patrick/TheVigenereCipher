<%@ Page Title="Калькулятор" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TheVigenereCipher.About" MaintainScrollPositionOnPostback ="true"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Шифр Виженера</h2>
    <p>Калькулятор шифрует входной текст на русском языке шифром Виженера. Неалфавитные символы (пробелы, знаки препинания, цифры) — не преобразуются.</p>
    <div class="jumbotron">
         <div> 
         <br />
         <asp:FileUpload ID="fileUpload" runat="server" />
             <asp:Label ID="Uplmessage" runat="server" BorderColor="Red"></asp:Label>
         <br /><br />
         <asp:Button ID="downloadButton" runat="server" align ="right" BorderStyle="Solid" Height="40px" Text="ЗАГРУЗИТЬ ТЕКСТ" Width="184px" OnClick="download_Click" />
         <br /><br />
         <asp:Label ID="lblmessage" runat="server" />
         </div>         
        <br />
         <small>Текст</small><br />
        <asp:TextBox ID="textbox" runat="server" Height="144px" OnTextChanged="textbox_TextChanged" Width=776px AutoPostBack="True" Columns="200" MaxLength="100000" Rows="10" ToolTip="Введите текст для преобразования" TextMode="MultiLine">бщцфаирщри, бл ячъбиуъ щбюэсяёш гфуаа!!! </asp:TextBox>
        <br />
        <br />
         <small>Ключ</small><br />
        <asp:TextBox ID="keybox" runat="server" align="center" Height="40px" Width="193px" OnTextChanged="keybox_TextChanged" Rows="10" AutoPostBack="True">скорпион</asp:TextBox>
        <asp:RadioButton ID="encrypt" runat="server" OnCheckedChanged="encrypt_CheckedChanged" Text="ЗАШИФРОВАТЬ" AutoPostBack="True" />
        <asp:RadioButton ID="decrypt" runat="server" OnCheckedChanged="decrypt_CheckedChanged" Text="РАСШИФРОВАТЬ" AutoPostBack="True" Checked="True" />
        <asp:Button ID="calculateButton" runat="server" align ="right" BorderStyle="Solid" Height="40px" Text="РАССЧИТАТЬ" Width="145px" OnClick="calculate_Click" />
        <br />
         <asp:Label ID="KeyMessage" runat="server" BorderColor="Red"></asp:Label>
         <br />
         <br />
         <small>Преобразованный текст</small> 
        <br />
        <asp:TextBox ID="convertedtext" runat="server" align="center" Height="102px" MaxLength="100000" ReadOnly="True" Width="781px" BorderColor="White" BorderStyle="None" Rows="10" TextMode="MultiLine">поздравляю, ты получил исходный текст!!! </asp:TextBox>
        <br />
        <br />
         <asp:TextBox ID="filePath" runat="server" OnTextChanged="filePath_TextChanged">D:\Result</asp:TextBox>
         <asp:RadioButton ID="doc_button" runat="server" AutoPostBack="True" OnCheckedChanged="doc_button_CheckedChanged" Text="doc" />
         <asp:RadioButton ID="txt_button" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="txt_button_CheckedChanged" Text="txt" />
         <asp:Button ID="save" runat="server" align ="right" BorderStyle="Solid" Height="40px" Text="СОХРАНИТЬ РЕЗУЛЬТАТ" Width="189px" OnClick="save_Click" />

         <br />
         <asp:Label ID="PathMessage" runat="server" BorderColor="Red"></asp:Label>

        <br />
    </div>



    <p>&nbsp;</p>
</asp:Content>
