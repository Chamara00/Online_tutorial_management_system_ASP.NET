<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="StudentManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
     </script>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/bg1.png" class="img-fluid"/>
    </section>


<section>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [TeacherID], [Lname], [Fname], [Gender], [Email], [Equalification], [Fee], [Media], [ContactNo] FROM [Teacher]"></asp:SqlDataSource>
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                                     

                                    </div>
                            </div>
                        </div>

                       
                    </div>


                         

                            
                    </div>



            </div>


            </div>
         </div>
</section>

    <section>
        <img src="images/bg2.jpg" class="img-fluid"/>
    </section>

</asp:Content>
