
<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="StudentManagement.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
        </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row my-5">
           


            <div class="col">



                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Teacher list</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                     

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [TeacherID], [Fname], [Lname], [Gender], [Email], [Equalification], [Fee], [Media], [ContactNo] FROM [Teacher]"></asp:SqlDataSource>
                                <div class="table-responsive">
                                    <asp:GridView class="table table-striped table-bordered" runat="server" DataSourceID="SqlDataSource1" ID="ctl00" AutoGenerateColumns="False" DataKeyNames="TeacherID" OnSelectedIndexChanged="ctl00_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="TeacherID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="TeacherID"></asp:BoundField>
                                            
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="container">
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fname")+" "+Eval("Lname") %>' Font-Bold="True" Font-Size="X-Large" ></asp:Label>
                                                                </div>
                                                            </div>

                                                              <div class="row">
                                                                <div class="col-12">
                                                                    <span>Gender - </span>
                                                                     <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Gender") %>'></asp:Label>
                                                                     &nbsp;| <span><span>&nbsp;</span>Contact No. - </span>
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("ContactNo") %>'></asp:Label>
                                                                     &nbsp;| 
                                                   <span>
                                                      Fee -<span>&nbsp;</span>
                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Fee") %>'></asp:Label></span>
                                                                </div>
                                                            </div>

                                                              <div class="row">
                                                                <div class="col-12">
                                                                     Email -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("Email") %>'></asp:Label>
                                                                    &nbsp;| Media -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Media") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                              <div class="row">
                                                                <div class="col-12">
                                                                    Educational qualification -
                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Equalification") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>


                                    </div>
                            </div>
                        </div>

                       
                    </div>


                         

                            
                    </div>



            </div>


            </div>
         </div>
</asp:Content>
