<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="addclass.aspx.cs" Inherits="StudentManagement.addclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

           // $(document).ready(function () {
             //   $('.table).DataTable();
             //});

            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 my-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Add class</h3>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row my-2">
                            <div class="col">
                                <label>Class name <span style="color:gray; font-size:small;">(Ex - 06-mat-loc)</span></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="Grade-Subject-Syllabus" ReadOnly="False">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Please enter class name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[a-zA-Z0-9\s]*-[a-zA-Z0-9\s]*-[a-zA-Z0-9\s]*$"  ErrorMessage="* Invalid format" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                            </div>
                                </div>


                            

                            </div>
                           


                       

                         <div class="row my-2">
                            <div class="col-md-4">
                             <label>Grade <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>
                                        <asp:ListItem Value="8">8</asp:ListItem>
                                        <asp:ListItem Value="9">9</asp:ListItem>
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem Value="11">11</asp:ListItem>
                                        <asp:ListItem Value="12">12</asp:ListItem>
                                        <asp:ListItem Value="13">13</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select grade" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                                


                            <div class="col-md-4">
                                <label>Syllabus <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Local">Local</asp:ListItem>
                                        <asp:ListItem Value="London">London</asp:ListItem>
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="* Select syllabus" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    
                                </div>

                        </div>
                             <div class="col-md-4">
                                 <label>Monthly fee (Rs.) <sup style="color:red">*</sup></label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Rs." ReadOnly="False" TextMode="Number">

                                    </asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Please enter fee" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                            </div>

                      
                        
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Subject ID <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Mat-Loc">Mat-Loc</asp:ListItem>
                                        <asp:ListItem Value="Sci-Loc">Sci-Loc</asp:ListItem>
                                        <asp:ListItem Value="Eng-Loc">Eng-Loc</asp:ListItem>
                                        <asp:ListItem Value="Sci-Lon">Sci-Lon</asp:ListItem>
                                        <asp:ListItem Value="Mat-Lon">Mat-Lon</asp:ListItem>
                                        <asp:ListItem Value="Eng-Lon">Eng-Lon</asp:ListItem>
                                        <asp:ListItem Value="CM-Loc">CM-Loc</asp:ListItem>
                                        <asp:ListItem Value="Phy-Loc">Phy-Loc</asp:ListItem>
                                        <asp:ListItem Value="Che-Loc">Che-Loc</asp:ListItem>
                                        <asp:ListItem Value="CM-Lon">CM-Lon</asp:ListItem>
                                        <asp:ListItem Value="Phy-Lon">Phy-Lon</asp:ListItem>
                                        <asp:ListItem Value="Che-Lon">Che-Lon</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList4" ErrorMessage="* Select subject ID" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Subject name <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList5" runat="server">
                                        <asp:ListItem Value=""></asp:ListItem>
                                        <asp:ListItem Value="Maths">Maths</asp:ListItem>
                                        <asp:ListItem Value="Science">Science</asp:ListItem>
                                        <asp:ListItem Value="English">English</asp:ListItem>
                                        <asp:ListItem Value="Combined Maths">Combined Maths</asp:ListItem>
                                        <asp:ListItem  Value="Physics">Physics</asp:ListItem>
                                        <asp:ListItem Value="Chemistry">Chemistry</asp:ListItem>
                                    
                                       
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList5" ErrorMessage="* Select subject name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                            </div>

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Media <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Google Meets">Google Meets</asp:ListItem>
                                        <asp:ListItem Value="MS Teams">Microsoft Teams</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="* Select media" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             


                            <div class="col-md-7">
                                <label>Link <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"
                                        placeholder="Link">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Select syllabus" style="color:red; font-size:small"></asp:RequiredFieldValidator>


                            </div>

                        </div>

                            </div>
                         <div class="row my-4">
                             <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary" Style="width: 100%" ID="Button" runat="server" Text="Add class" OnClick="Button_Click" />
                                 </div>
                         </div>

                            </div>
                        </div>
                            
                    </div>


                        

                    
                        </div>

                
                </div>

        
              


            </div>
         
   

</asp:Content>
