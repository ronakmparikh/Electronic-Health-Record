<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Past_And_Family_History.aspx.vb" Inherits="Past_And_Family_History" %>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="Panel6" runat="server" Height="815px" Width="1171px" 
            ScrollBars="Auto">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
            &nbsp;&gt; Past History AND Family History<br />
            <br />
           <center> <asp:Label ID="lblfamilyhistory0" runat="server" BackColor="Green" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Past History"></asp:Label></center>
            <br />
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblphistory1" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Illness:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="ddlhistory" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="121px">
                            <asp:ListItem Selected="True">Select IIness</asp:ListItem>
                          <asp:ListItem Selected="false">       Accident (unintentional injury)</asp:ListItem>
  <asp:ListItem Selected="false">   Alcoholism and drug addiction</asp:ListItem>
   <asp:ListItem Selected="false">  Alzheimer's disease</asp:ListItem>
   <asp:ListItem Selected="false">  Amputation</asp:ListItem>
   <asp:ListItem Selected="false">  Arthritis</asp:ListItem>
   <asp:ListItem Selected="false">  Asperger syndrome</asp:ListItem>
   <asp:ListItem Selected="false">  Attention deficit hyperactivity disorder</asp:ListItem>
   <asp:ListItem Selected="false">  Autism</asp:ListItem>
    <asp:ListItem Selected="false">    Bipolar disorder</asp:ListItem>
   <asp:ListItem Selected="false"> Burn injury</asp:ListItem>
     <asp:ListItem Selected="false">  Cancer</asp:ListItem>

   <asp:ListItem Selected="false"> Celiac disease</asp:ListItem>

    <asp:ListItem Selected="false">Cerebral palsy</asp:ListItem>

    <asp:ListItem Selected="false">Charcot-Marie-Tooth disease</asp:ListItem>

    <asp:ListItem Selected="false">Chronic fatigue syndrome</asp:ListItem>

    <asp:ListItem Selected="false">Chronic obstructive pulmonary disease</asp:ListItem>

    <asp:ListItem Selected="false">Crohn's disease</asp:ListItem>

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

    <asp:ListItem Selected="false">Huntington's disease</asp:ListItem>

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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                            ControlToValidate="ddlillness" ErrorMessage="*" InitialValue="Select Madicine" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblpdate" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Date:-"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="txtpast_history_date" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                            ControlToValidate="txtpast_history_date" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnaddpast" runat="server" BackColor="#009900" Font-Bold="True" 
                            ForeColor="White" style="height: 26px" Text="ADD" 
                            CausesValidation="False" />
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="lblpmadicine0" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Medicine:-"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:DropDownList ID="ddlmadicine" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="121px">
                            <asp:ListItem Selected="True">Select Madicine</asp:ListItem>

  <asp:ListItem>Methapred (Methylprednisolone Sodium Succinate)- FDA</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate (Ziagen)- FDA</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate (Ziagen)- Multum</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate and Lamivudine Tablets (Epzicom)- FDA</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate and Lamivudine Tablets (Epzicom)- Multum</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate, Lamivudine, and Zidovudine (Trizivir)- FDA</asp:ListItem>
 <asp:ListItem>Abacavir Sulfate, Lamivudine, and Zidovudine (Trizivir)- Multum</asp:ListItem>
 <asp:ListItem>Abarelix (Plenaxis)- FDA</asp:ListItem>
 <asp:ListItem>Abarelix (Plenaxis)- Multum</asp:ListItem>
 <asp:ListItem>Abatacept (Orencia)- FDA</asp:ListItem>
 <asp:ListItem>Abatacept (Orencia)- Multum</asp:ListItem>
 <asp:ListItem>Abciximab (ReoPro)- FDA</asp:ListItem>
 
    <asp:ListItem> Liver-Stomach Concentrate With Intrinsic Factor)- FDA</asp:ListItem>
   <asp:ListItem> Bacillus of Calmette and Guerin (Tice)- FDA</asp:ListItem>
   <asp:ListItem> Bacillus of Calmette and Guerin (Tice)- Multum</asp:ListItem>
   <asp:ListItem> Bacitracin (Bacitracin)- FDA</asp:ListItem>
   <asp:ListItem> Bacitracin (Bacitracin)- Multum</asp:ListItem>
   <asp:ListItem> Baclofen (Baclofen Tablets)- FDA</asp:ListItem>
    <asp:ListItem>Baclofen (Kemstro)- FDAv</asp:ListItem>
  <asp:ListItem>  Baclofen Injection (Gablvofen)- FDA</asp:ListItem>
    <asp:ListItem>Baclofen Injection (Liorevsal Intrathecal)- FDA</asp:ListItem>
   <asp:ListItem> Baclofen Tablets (Baclofenv)- FDA</asp:ListItem>
    <asp:ListItem>Bacteriostatic NaCl (Bacteriostatic Saline)- FDA</asp:ListItem>
    <asp:ListItem>Bacteriostatic Saline (Bacteriostatic NaCl)- FDA</asp:ListItem>
    <asp:ListItem>Bacteriostatic Water (Bacteriostatic Water for Injection)- FDAv</asp:ListItem>
    <asp:ListItem>Bacteriostatic Water for Injection (Bacteriostatic Water)- FDAv</asp:ListItem>
    <asp:ListItem>Bactrim (Trimethoprim and Sulfamethoxazole)- FDAv</asp:ListItem>
    <asp:ListItem>Bactrim (Trimethoprim and Sulfamethoxazole)- Multvum</asp:ListItem>
    <asp:ListItem>Bactroban Cream (Mupirocin Calcium Cream)- FDAv</asp:ListItem>
   <asp:ListItem> Bactroban Cream (Mupirocin Calcium Cream)- Mult</asp:ListItem>
    <asp:ListItem>Bactroban Nasal (Mupirocin Calcium Ointment)- FDA</asp:ListItem>
    <asp:ListItem>Bactroban Nasal (Mupirocin Calcium Ointment)- Multum</asp:ListItem>
    <asp:ListItem>Bactroban Ointment (Mupirocin)- FDA</asp:ListItem>
    <asp:ListItem>Bactroban Ointment (Mupirocin)- Multum</asp:ListItem>
    <asp:ListItem>Bal in Oil Ampules (Dimercarprol Injection)- FDA</asp:ListItem>
   <asp:ListItem> Bal in Oil Ampules (Dimercarprol Injection)- Multum</asp:ListItem>
  <asp:ListItem>  Balanced Salt Ophthalmic Solution (Navstel)- FDA</asp:ListItem>
    <asp:ListItem>Balanced Salt Solution (BSS Plus 250 mL)- FDAv</asp:ListItem>
    <asp:ListItem>Balsalazide (Colazal)- FDA</asp:ListItem>
    <asp:ListItem>Balsalazide (Colazal)- Multum</asp:ListItem>
    <asp:ListItem>Balsalazide Disodium (Giazo)- FDA</asp:ListItem>
    <asp:ListItem>Banzel (Rufinamide Tablets)- FDA</asp:ListItem>
   <asp:ListItem> Banzel (Rufinamide Tablets)- Multum</asp:ListItem>
 <asp:ListItem>   Baraclude (Entecavir)- FDA</asp:ListItem>
    <asp:ListItem>Baraclude (Entecavir)- Multum</asp:ListItem>
    <asp:ListItem>Basiliximab (Simulect)- Multum</asp:ListItem>
    <asp:ListItem>Baycol (Cerivastatin (Removed from Market 8/2</asp:ListItem>
    <asp:ListItem>Baycol (Cerivastatin (Removed from Market 8/2001))- Multum</asp:ListItem>
   <asp:ListItem> Bayer (Aspirin)- FDA</asp:ListItem>
   <asp:ListItem> Bayer (Aspirin)- Multum</asp:ListItem>
    <asp:ListItem>Baygam (Immune Globulin)- FDA</asp:ListItem>
    <asp:ListItem>BayHep B (Hepatitis B Immune Globulin (Human))- FDA</asp:ListItem>
    <asp:ListItem>BayRab (Rabies Immune Globulin (Human) Solvent/Detergent Treated)- FDA</asp:ListItem>
    <asp:ListItem>BayTet (Tetanus Immune Globulin (Human) Solvent/Detergent Treated 250 Units)- FDA</asp:ListItem>
  <asp:ListItem>  Ca-DTPA (Pentetate Calcium Trisodium Inj)- FDA</asp:ListItem>
  
<asp:ListItem>Cabazitaxel Injection (Jevtana)- FDA</asp:ListItem>
<asp:ListItem>Cabazitaxel Injection (Jevtana)- Multum</asp:ListItem>
<asp:ListItem>Cabergoline (Dostinex)- FDA</asp:ListItem>
<asp:ListItem>Cabergoline (Dostinex)- Multum</asp:ListItem>
<asp:ListItem>Cabozantinib Capsules (Cometriq)- FDA</asp:ListItem>
<asp:ListItem>Caduet (Amlodipine Besylate, Atorvastatin Calcium)- </asp:ListItem>
<asp:ListItem>Dabigatran Etexilate Mesylate (Pradaxa)- FDA</asp:ListItem>
<asp:ListItem>Dabigatran Etexilate Mesylate (Pradaxa)- Multum</asp:ListItem>
<asp:ListItem>Dacarbazine (Dtic-Dome)- FDA</asp:ListItem>
<asp:ListItem>Dacarbazine (Dtic-Dome)- Multum</asp:ListItem>
<asp:ListItem>Daclizumab (Zenapax)- FDA</asp:ListItem>
<asp:ListItem>Daclizumab (Zenapax)- Multum</asp:ListItem>
<asp:ListItem>Dacogen (Decitabine Injection)- FDA</asp:ListItem>



                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                            ControlToValidate="ddlmadicine" ErrorMessage="*" InitialValue="Select Madicine" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style12">
                    </td>
                    <td class="style13">
                    </td>
                    <td class="style14">
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
 
            <br /><center>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    PageSize="3">
                <RowStyle BackColor="White" ForeColor="#330099" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView></center>
         
 
    <br />
         <center><asp:Label 
        ID="lblfamilyhistory" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
        Text="Family History"></asp:Label></center>
   
            &nbsp;<br />
            <table align="center" class="style1">
                <tr>
                    <td class="style6">
                        <asp:Label ID="lblfhistory0" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Relation:-"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="ddlrelation" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="121px">
                            <asp:ListItem Selected="True">Select Relation</asp:ListItem>
                            <asp:ListItem>Father</asp:ListItem>
                            <asp:ListItem>Mother</asp:ListItem>
                            <asp:ListItem>Grand Father</asp:ListItem>
                            <asp:ListItem>Grand Mother</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                            ControlToValidate="ddlrelation" ErrorMessage="*" InitialValue="Select Relation" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="lblphistory2" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Ilness:-"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="ddlillness" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="121px">
                            <asp:ListItem Selected="True">Select Ilness</asp:ListItem>
                           
                               <asp:ListItem Selected="false">  Attention deficit hyperactivity disorder</asp:ListItem>
   <asp:ListItem Selected="false">  Autism</asp:ListItem>
    <asp:ListItem Selected="false">    Bipolar disorder</asp:ListItem>
   <asp:ListItem Selected="false"> Burn injury</asp:ListItem>
     <asp:ListItem Selected="false">  Cancer</asp:ListItem>

   <asp:ListItem Selected="false"> Celiac disease</asp:ListItem>

    <asp:ListItem Selected="false">Cerebral palsy</asp:ListItem>

    <asp:ListItem Selected="false">Charcot-Marie-Tooth disease</asp:ListItem>

    <asp:ListItem Selected="false">Chronic fatigue syndrome</asp:ListItem>

    <asp:ListItem Selected="false">Chronic obstructive pulmonary disease</asp:ListItem>

    <asp:ListItem Selected="false">Crohn's disease</asp:ListItem>

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

    <asp:ListItem Selected="false">Huntington's disease</asp:ListItem>

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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                            ControlToValidate="ddlillness" ErrorMessage="*" InitialValue="SelectIlness" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnaddfamily" runat="server" BackColor="#009900" 
                            Font-Bold="True" ForeColor="White" style="height: 26px" Text="ADD" 
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
            <br />
    &nbsp;<asp:GridView ID="GridView2" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                PageSize="3">
                <RowStyle BackColor="White" ForeColor="#330099" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
 
        <br />
   
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                 
 
</asp:Panel> 
</asp:content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 43%;
        }
        .style2
        {
            width: 63px;
        }
        .style3
        {
            width: 137px;
        }
        .style4
        {
            width: 40px;
        }
        .style5
        {
            width: 139px;
        }
        .style6
        {
            width: 78px;
        }
        .style7
        {
            width: 147px;
        }
        .style10
        {
            width: 63px;
            height: 30px;
        }
        .style11
        {
            width: 137px;
            height: 30px;
        }
        .style12
        {
            width: 40px;
            height: 30px;
        }
        .style13
        {
            width: 139px;
            height: 30px;
        }
        .style14
        {
            height: 30px;
        }
    </style>


</asp:Content>

