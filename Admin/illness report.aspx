<%@ Page Language="VB" MasterPageFile="~/Admine.master" AutoEventWireup="false" CodeFile="illness report.aspx.vb" Inherits="Admin_illness_report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="232px" Width="1177px">
    <center>    <asp:Label ID="lblpersonal_details" runat="server" BackColor="#009900" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
            Text="Illness Wise Report"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
        <asp:DropDownList ID="ddlillness" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="121px">
            <asp:ListItem Selected="True">Select IIness</asp:ListItem>
            <asp:ListItem Selected="false"> Accident (unintentional injury)</asp:ListItem>
            <asp:ListItem Selected="false"> Alcoholism and drug addiction</asp:ListItem>
            <asp:ListItem Selected="false"> Alzheimer&#39;s disease</asp:ListItem>
            <asp:ListItem Selected="false"> Amputation</asp:ListItem>
            <asp:ListItem Selected="false"> Arthritis</asp:ListItem>
            <asp:ListItem Selected="false"> Asperger syndrome</asp:ListItem>
            <asp:ListItem Selected="false"> Attention deficit hyperactivity disorder</asp:ListItem>
            <asp:ListItem Selected="false"> Autism</asp:ListItem>
            <asp:ListItem Selected="false"> Bipolar disorder</asp:ListItem>
            <asp:ListItem Selected="false"> Burn injury</asp:ListItem>
            <asp:ListItem Selected="false"> Cancer</asp:ListItem>
            <asp:ListItem Selected="false"> Celiac disease</asp:ListItem>
            <asp:ListItem Selected="false">Cerebral palsy</asp:ListItem>
            <asp:ListItem Selected="false">Charcot-Marie-Tooth disease</asp:ListItem>
            <asp:ListItem Selected="false">Chronic fatigue syndrome</asp:ListItem>
            <asp:ListItem Selected="false">Chronic obstructive pulmonary disease</asp:ListItem>
            <asp:ListItem Selected="false">Crohn&#39;s disease</asp:ListItem>
            <asp:ListItem Selected="false">Cystic fibrosis</asp:ListItem>
            <asp:ListItem Selected="false">Dementia</asp:ListItem>
            <asp:ListItem Selected="false">Depression</asp:ListItem>
            <asp:ListItem Selected="false">Diabetes</asp:ListItem>
            <asp:ListItem Selected="false">Dissociative disorder</asp:ListItem>
            <asp:ListItem Selected="false">Down syndrome</asp:ListItem>
            <asp:ListItem Selected="false">Dwarfism</asp:ListItem>
            <asp:ListItem Selected="false">Eating disorders</asp:ListItem>
            <asp:ListItem Selected="false">Epilepsy</asp:ListItem>
            <asp:ListItem Selected="false">Fetal alcohol spectrum disorders</asp:ListItem>
            <asp:ListItem Selected="false">Fibromyalgia</asp:ListItem>
            <asp:ListItem Selected="false">Generalized anxiety disorder</asp:ListItem>
            <asp:ListItem Selected="false">Hearing loss and deafness</asp:ListItem>
            <asp:ListItem Selected="false">Heart disease</asp:ListItem>
            <asp:ListItem Selected="false">HIV/AIDS</asp:ListItem>
            <asp:ListItem Selected="false">Huntington&#39;s disease</asp:ListItem>
            <asp:ListItem Selected="false">Intellectual disability</asp:ListItem>
            <asp:ListItem Selected="false">Kidney disease</asp:ListItem>
            <asp:ListItem Selected="false">Learning disabilities</asp:ListItem>
            <asp:ListItem Selected="false">Lupus</asp:ListItem>
            <asp:ListItem Selected="false">Multiple sclerosis</asp:ListItem>
            <asp:ListItem Selected="false">Narcolepsy</asp:ListItem>
            <asp:ListItem Selected="false">Obsessive-compulsive disorder</asp:ListItem>
            <asp:ListItem Selected="false">Panic disorder</asp:ListItem>
            <asp:ListItem Selected="false">Pervasive developmental disorders</asp:ListItem>
            <asp:ListItem Selected="false">Polio and post-polio syndrome</asp:ListItem>
            <asp:ListItem Selected="false">Post-traumatic stress disorder</asp:ListItem>
            <asp:ListItem Selected="false">Psoriasis</asp:ListItem>
            <asp:ListItem Selected="false">Rare diseases</asp:ListItem>
            <asp:ListItem Selected="false">Schizophrenia</asp:ListItem>
            <asp:ListItem Selected="false">Scleroderma</asp:ListItem>
            <asp:ListItem Selected="false">Social phobia</asp:ListItem>
            <asp:ListItem Selected="false">Speech and language disorders</asp:ListItem>
            <asp:ListItem Selected="false">Spina bifida</asp:ListItem>
            <asp:ListItem Selected="false">Spinal cord injury</asp:ListItem>
            <asp:ListItem Selected="false">Stroke</asp:ListItem>
            <asp:ListItem Selected="false">Thyroid diseases</asp:ListItem>
            <asp:ListItem Selected="false">Traumatic brain injury</asp:ListItem>
            <asp:ListItem Selected="false">Tuberous sclerosis</asp:ListItem>
            <asp:ListItem Selected="false">Turner syndrome</asp:ListItem>
            <asp:ListItem Selected="false">Ulcerative colitis</asp:ListItem>
            <asp:ListItem Selected="false">Vision loss and blindness</asp:ListItem>
            <asp:ListItem Selected="false">Williams syndrome</asp:ListItem>
        </asp:DropDownList>
        </ContentTemplate>
        </asp:UpdatePanel>
        
        <br />
        <asp:Button ID="btnviewreport" runat="server" BackColor="#009900" 
            ForeColor="White" 
            PostBackUrl="~/Admin Report/illness_report.aspx" 
            Text="View Report" />
        </center>
    </asp:Panel>
</asp:Content>

