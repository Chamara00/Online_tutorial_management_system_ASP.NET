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
                                <label>Class name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="Grade-Subject-Syllabus" ReadOnly="False">

                                    </asp:TextBox>
                            </div>
                                </div>


                            

                            </div>
                           


                       

                         <div class="row my-2">
                            <div class="col-md-4">
                                <label>Grade</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                
                                        
                                    </asp:DropDownList>
                            </div>
                                </div>


                            <div class="col-md-4">
                                <label>Syllabus</label>
                                <div class="form-group">
                                      <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="London" Value="London"></asp:ListItem>
                                        <asp:ListItem Text="Local" Value="Local"></asp:ListItem>
                                       
                                    </asp:DropDownList>
                            </div>

                        </div>
                             <div class="col-md-4">
                                 <label>Monthly fee (Rs.)</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Rs." ReadOnly="False" TextMode="Number">

                                    </asp:TextBox>
                                 </div>
                             </div>

                            </div>

                      
                        
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Subject ID</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Mat-Loc" Value="Mat-Loc"></asp:ListItem>
                                        <asp:ListItem Text="Sci-Loc" Value="Sci-Loc"></asp:ListItem>
                                        <asp:ListItem Text="Eng-Loc" Value="Eng-Loc"></asp:ListItem>
                                        <asp:ListItem Text="Sci-Lon" Value="Sci-Lon"></asp:ListItem>
                                        <asp:ListItem Text="Mat-Lon" Value="Mat-Lon"></asp:ListItem>
                                        <asp:ListItem Text="Eng-Lon" Value="Eng-Lon"></asp:ListItem>
                                        <asp:ListItem Text="CM-Loc" Value="CM-Loc"></asp:ListItem>
                                        <asp:ListItem Text="Phy-Loc" Value="Phy-Loc"></asp:ListItem>
                                        <asp:ListItem Text="Che-Loc" Value="Che-Loc"></asp:ListItem>
                                        <asp:ListItem Text="CM-Lon" Value="CM-Lon"></asp:ListItem>
                                        <asp:ListItem Text="Phy-Lon" Value="Phy-Lon"></asp:ListItem>
                                        <asp:ListItem Text="Che-Lon" Value="Che-Lon"></asp:ListItem>
                                       
                                    </asp:DropDownList>

                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Subject name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList5" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Maths" Value="Maths"></asp:ListItem>
                                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Combined Maths" Value="Combined Maths"></asp:ListItem>
                                        <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                                        <asp:ListItem Text="Chemistry" Value="Chemistry"></asp:ListItem>
                                    
                                       
                                    </asp:DropDownList>
                            </div>

                        </div>

                            </div>

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Media</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Google Meets" Value="Google Meets"></asp:ListItem>
                                        <asp:ListItem Text="MS Teams" Value="MS Teams"></asp:ListItem>
                                       
                                    </asp:DropDownList>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Link</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"
                                        placeholder="Link">

                                    </asp:TextBox>
                            </div>

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


            <div class="col-md-7 my-5">



                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your classes</h3>
                                </center>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT * FROM [Teacher_schedule]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered"></asp:GridView>
                                </div>
                            </div>

                       
                    </div>


                         
                        
                            
                    </div>



            </div>


            </div>
         </div>
        </div>


</asp:Content>
