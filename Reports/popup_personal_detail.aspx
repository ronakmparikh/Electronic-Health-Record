<%@ Page Language="VB" AutoEventWireup="false" CodeFile="popup_personal_detail.aspx.vb" Inherits="popup_personal_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</head>
<body background="#ff9933" bgcolor="#ff9933">
    <form id="form1" runat="server">
    <div>
     
          &nbsp;<center>       <asp:Label ID="lblpersonal_details" runat="server" BackColor="#009900" 
            ForeColor="White" Text="Registration From" Font-Size="X-Large"></asp:Label>
    </center>
        <br />
    
 

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblfather_name0" runat="server" Font-Size="Small" 
            ForeColor="Blue" Text=" Name:-"></asp:Label>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
    &nbsp;
        <asp:TextBox ID="txtname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtname2" ErrorMessage="*" ToolTip="NO BLANK"></asp:RequiredFieldValidator>
    &nbsp;<asp:TextBox ID="txtname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
          &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="*" 
            ToolTip="Password is not blank"></asp:RequiredFieldValidator>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="first name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Small" Text="middle name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Font-Size="Small" Text="last name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="password"></asp:Label>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblfather_name2" runat="server" Font-Size="Small" 
              ForeColor="Blue" Text="Upload Photo"></asp:Label>
          &nbsp;&nbsp;&nbsp;
          <asp:FileUpload ID="FileUpload_photo" runat="server" Width="215px" />
          &nbsp;passport size photo<br />
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblfather_name" runat="server" Font-Size="Small" 
            ForeColor="Blue" Text="Father Name:-"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtfname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
&nbsp;
        <asp:TextBox ID="txtfname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtfname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
    &nbsp;<asp:TextBox ID="txtfname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txtfname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;
&nbsp;&nbsp;
        &nbsp;&nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="first name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Size="Small" Text="middle name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="last name"></asp:Label>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmother_name" runat="server" Font-Size="Small" 
            ForeColor="Blue" Text="Mother Name:-"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtmname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
            ControlToValidate="txtmname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
&nbsp;
        <asp:TextBox ID="txtmname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
            ControlToValidate="txtfname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
    &nbsp;<asp:TextBox ID="txtmname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
            ControlToValidate="txtmname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;
&nbsp;&nbsp;
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Font-Size="Small" Text="first name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Font-Size="Small" Text="middle name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="last name"></asp:Label>
        <br />
    <asp:Panel ID="Panel_of_husbandname" runat="server" Visible="False" Width="1078px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblspouse_name" runat="server" Font-Size="Small" 
            ForeColor="Blue" Text="Spouse Name:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txthname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="txthname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;<asp:TextBox ID="txthname2" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ControlToValidate="txthname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="txthname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ControlToValidate="txthname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="first name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Size="Small" Text="middle name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="last name"></asp:Label>
        &nbsp; &nbsp;<br />
        </asp:Panel>
    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblfather_name1" runat="server" Font-Size="Small" 
            ForeColor="Blue" Text=" Date of Birth:-"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddldate" runat="server" 
        Height="22px" Width="52px">
            <asp:ListItem Selected="True">Date</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
            ControlToValidate="ddldate" ErrorMessage="*" InitialValue="Date" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;<asp:DropDownList ID="ddlmonth" runat="server" 
        Height="22px" Width="52px">
            <asp:ListItem Selected="True">Month</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ControlToValidate="ddlmonth" ErrorMessage="*" InitialValue="Month" 
            ToolTip="Not blank"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:DropDownList ID="ddlyear" runat="server" 
                Width="52px" Height="22px" AutoPostBack="True">
                <asp:ListItem Selected="True">Year</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
            ControlToValidate="ddlyear" ErrorMessage="*" InitialValue="Year" 
            ToolTip="Not blank"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;<asp:Label ID="lblage" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Age:-"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtage" 
        runat="server" Width="60px" MaxLength="3" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblgender" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Gender:-"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlgender" runat="server" 
            Height="22px" Width="121px">
            <asp:ListItem>Select Gender</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Enuch</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
            ControlToValidate="ddlgender" ErrorMessage="*" InitialValue="Select" 
            ToolTip="prorer gender"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmarital_stutus" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
            Text="Marital Status:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlmarital_status" runat="server" 
            Width="121px" Height="22px">
            <asp:ListItem Selected="True">Select Marital Status</asp:ListItem>
            <asp:ListItem>Un married</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Divorcee</asp:ListItem>
            <asp:ListItem Value="Saparated">Saparated</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ControlToValidate="ddlmarital_status" ErrorMessage="*" InitialValue="Select" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="lblidentification_mark" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
            Text="Identification Mark:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtid_mark" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="txtid_mark" ErrorMessage="*" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblemail" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="E-mail ID :-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtemail" runat="server" 
        Height="22px" Width="121px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label10" runat="server" Font-Size="Small" 
            Text="[ex:abc@gmail.com]"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="*" ToolTip="write proper email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
 
        <br />
 
        &nbsp;&nbsp;
 
        <asp:Label ID="lblmobile_number" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
            Text="Mobile Number:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtmobilenumber" runat="server" MaxLength="10" 
        Height="22px" Width="121px"></asp:TextBox>
        <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="give a numeric mobile no" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lbllandline_number" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
            Text="Landline Number:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator45" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" InitialValue="Select" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ControlToValidate="txtstd_code" ErrorMessage="*" ToolTip="give a numeric std code" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
    <asp:TextBox ID="txtstd_code" 
        runat="server" MaxLength="5" 
        Width="56px" Height="22px"></asp:TextBox>
    <asp:TextBox ID="txtlandline_number" runat="server" MaxLength="12" 
        Height="22px" Width="121px"></asp:TextBox>
    <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" ToolTip="give a numeric landline no" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>

        &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblidentification" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
        Text="Identification type:-"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="ddlidentification_type" runat="server">
            <asp:ListItem Selected="True">Select Identification</asp:ListItem>
            <asp:ListItem>Pan Card</asp:ListItem>
            <asp:ListItem>Addhar Card</asp:ListItem>
            <asp:ListItem>Ration Card</asp:ListItem>
            <asp:ListItem>Voter Card</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
            ControlToValidate="ddlidentification_type" ErrorMessage="*" 
            InitialValue="Select Identification" ToolTip="Select Type"></asp:RequiredFieldValidator>
        &nbsp;<asp:FileUpload ID="FileUpload_identification" runat="server" />
          <br />
&nbsp;
          <asp:Label ID="lblidentification_number" runat="server" Font-Bold="False" 
              Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
              Text="Identification_Number:-"></asp:Label>
          &nbsp;&nbsp;<asp:TextBox ID="txtidentificatio_number" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
              ControlToValidate="txtidentificatio_number" ErrorMessage="*" 
              ToolTip="require number"></asp:RequiredFieldValidator>
          &nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <asp:Label ID="lblcommunicationaddress" runat="server" Font-Bold="True" 
              Font-Italic="False" Font-Size="Large" ForeColor="Blue" 
              Text="Communication Address:-"></asp:Label>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
          <asp:Label ID="lblhousenumber" runat="server" Font-Bold="True" 
              Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="House Number:-"></asp:Label>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txthousenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
            ControlToValidate="txthousenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblstreetaddress" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Street Address:-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txta_streetaddress" runat="server" Height="22px" 
            TextMode="MultiLine" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
            ControlToValidate="txta_streetaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblarea" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Area:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlarea" runat="server" Height="22px" 
            Width="121px" AutoPostBack="True" DataSourceID="sqlarea" 
              DataTextField="Area" DataValueField="Area">
        </asp:DropDownList>
          <asp:SqlDataSource ID="sqlarea" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblpincode0" runat="server" Font-Bold="True" Font-Italic="False" 
            Font-Size="Small" ForeColor="Blue" Text="Pin Code:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList 
            ID="ddlpincode" runat="server" Height="22px" Width="121px" 
              AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pincode" 
              DataValueField="Pincode">
        </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblstate" runat="server" Font-Bold="True" Font-Italic="False" 
            Font-Size="Small" ForeColor="Blue" Text="State:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlstate" runat="server" 
            Height="22px" Width="121px" AutoPostBack="True" DataSourceID="Sqlstate" 
              DataTextField="State" DataValueField="State">
        </asp:DropDownList>
          <asp:SqlDataSource ID="Sqlstate" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlpincode" Name="Pincode" 
                      PropertyName="SelectedValue" Type="Decimal" />
              </SelectParameters>
          </asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcontry" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Country:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList 
              ID="ddl_country" runat="server" 
            Height="22px" Width="121px" AutoPostBack="True" DataSourceID="Sqlcountry" 
              DataTextField="Country" DataValueField="Country">
        </asp:DropDownList>
          <asp:SqlDataSource ID="Sqlcountry" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([State] = @State)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlstate" Name="State" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblcity" runat="server" Font-Bold="True" Font-Italic="False" 
            Font-Size="Small" ForeColor="Blue" Text="City:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtcity" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="*" InitialValue="Select City" 
            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="lblperrmedent_address" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Large" ForeColor="Blue" 
            Text="Parmanent Address:"></asp:Label>
        &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Blue" 
            Text="&quot;Same as Communication&quot;"></asp:Label>
        <br />
        <asp:Label ID="lblppincode0" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Address:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbpermanentyes" runat="server" AutoPostBack="True" 
            ForeColor="Blue" GroupName="per_add" Text="Yes" Checked="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbpermanentno" runat="server" AutoPostBack="True" 
              ForeColor="Blue" GroupName="per_add" Text="No" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel_of_per_add" runat="server" Height="324px" 
            Visible="False">
            <asp:Label ID="lblphouse_number" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="House Number:-"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtphouse_number" runat="server" Height="22px" 
                Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                ControlToValidate="txtphouse_number" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpstreetaddress0" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Street Address:-"></asp:Label>
            &nbsp;<asp:TextBox ID="txtpstreetaddress" runat="server" Height="22px" 
                TextMode="MultiLine" Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                ControlToValidate="txta_streetaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
            <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblparea" runat="server" Font-Bold="True" 
                  Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Area:-"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
              <asp:DropDownList ID="ddlParea" runat="server" Height="22px" Width="121px">
              </asp:DropDownList>
                <asp:SqlDataSource ID="SqlParea" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblppincode" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Pin Code:-"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                ID="ddlPpincode" runat="server" Height="22px" Width="121px" 
                  AutoPostBack="True" DataSourceID="Sqlppincode" DataTextField="Pincode" 
                  DataValueField="Pincode">
            </asp:DropDownList>
              <asp:SqlDataSource ID="Sqlppincode" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlParea" Name="Area" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblpstate" runat="server" Font-Bold="True" 
                  Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="State:-"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                  ID="ddlPstate" runat="server" Height="22px" 
                  Width="121px" AutoPostBack="True" DataSourceID="Sqlpstate" 
                  DataTextField="State" DataValueField="State">
              </asp:DropDownList>
              <asp:SqlDataSource ID="Sqlpstate" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlPpincode" Name="Pincode" 
                          PropertyName="SelectedValue" Type="Decimal" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblpcontry" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Country:-"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                ID="ddlpcountry" runat="server" Height="22px" Width="121px" 
                  AutoPostBack="True" DataSourceID="Sqlpcountry" DataTextField="Country" 
                  DataValueField="Country">
            </asp:DropDownList>
              <asp:SqlDataSource ID="Sqlpcountry" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([State] = @State)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlPstate" Name="State" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpcity" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="City:-"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                  ID="txtpcity" runat="server" Height="22px" Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                ControlToValidate="txtpcity" ErrorMessage="*" InitialValue="Select City" 
                ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
        <br />
        <br />
        <br />
        
        <asp:Label ID="lblpdepartment" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Dependent:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbdeptyes" runat="server" AutoPostBack="True" 
            ForeColor="Blue" GroupName="dependent" Text="Yes" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbdeptno" runat="server" AutoPostBack="True" 
            Checked="True" ForeColor="Blue" GroupName="dependent" Text="No" />
        &nbsp;&nbsp;&nbsp;<br />
        <asp:Panel ID="Panel1_dependent" runat="server" Visible="False">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbluid" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" Text="Uid:-"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtpu_id" runat="server" Height="22px" 
                Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                ControlToValidate="txtpu_id" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblprelationship" runat="server" Font-Bold="True" 
                Font-Size="Small" ForeColor="Blue" Text="Relationship:-"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlprelationship" runat="server" 
                Height="22px" Width="121px">
                <asp:ListItem Selected="True">Select Relationships</asp:ListItem>
                <asp:ListItem>Mohter</asp:ListItem>
                <asp:ListItem>Brother</asp:ListItem>
                <asp:ListItem>Sister</asp:ListItem>
                <asp:ListItem>Meternal ancle</asp:ListItem>
                <asp:ListItem>Peternal ancle</asp:ListItem>
                <asp:ListItem>Meternal ant</asp:ListItem>
                <asp:ListItem>Peternal ant</asp:ListItem>
                <asp:ListItem>Meternal Grandfather</asp:ListItem>
                <asp:ListItem>Meternal Grandmother</asp:ListItem>
                <asp:ListItem>Peternal Grandfather</asp:ListItem>
                <asp:ListItem>Peternal Grandmother</asp:ListItem>
                <asp:ListItem>Father</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="ddlprelationship" ErrorMessage="*" InitialValue="Mother" 
                ToolTip="Not blank"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;<br />
        </asp:Panel>
          <asp:Label ID="lblnoofdept" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Small" ForeColor="Blue" 
                Text="No of Dependent:-"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                ID="txtnoofdependent" runat="server" Height="22px" 
                Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                ControlToValidate="txtnoofdependent" ErrorMessage="*" 
              ToolTip="Not blank"></asp:RequiredFieldValidator>
            &nbsp;
            <br />
          &nbsp;&nbsp;&nbsp;
          <asp:Panel ID="Panel9" runat="server" BackColor="White" Font-Bold="True" 
              Height="173px" ScrollBars="Vertical" Width="538px">
              <p class="MsoNormal" style="text-align:justify">
                  I hereby declare that all details are recorded as per my declarations are true 
                  to the best of my Knowledge. No information differs from the declaration can be 
                  changeable in future related to Past history and Family History. I relieve the 
                  Company from all the legal liabilities arising out of any false information 
                  given in the data.</p>
              <p class="MsoNormal" style="text-align:justify">
                  I further give my consent to record all these details with the record and same 
                  can be furnished to the government organizations, research work , Insurance 
                  companies and other such organizations as deemed fit by Health Guard on the 
                  satisfaction of confidentiality by the organization.</p>
          </asp:Panel>
          <br />
          <asp:CheckBox ID="Chkaggrement" runat="server" Font-Bold="True" 
              Text="I Have Accept and Read the Terms And Condition" />
          <br />
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" />
&nbsp;
        <asp:Button ID="btnreset" runat="server" Text="RESET" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" style="height: 26px" />

   
    </div>
    </form>
</body>
</html>
