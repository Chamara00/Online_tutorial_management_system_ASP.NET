<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="studentmanagement.aspx.cs" Inherits="StudentManagement.studentmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     
    <div class="container-fluid">
        <div class="row my-5">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student details</h3>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/generaluser.png" width="100"/>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Student ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"
                                        placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                               </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>First name</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Student name"></asp:TextBox>
                                </div>
                            </div>
                       <div class="col-md-4">
                                <label>Last name</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Student name"></asp:TextBox>
                                </div>
                            </div>
                           

                            </div>

                    
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                        placeholder="+94xxxxxxxxx" ReadOnly="True"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-7">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                        placeholder="username@example.com" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                        </div>
                    </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Pay ID</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox Cssclass="form-control" ID="TextBox11" runat="server"
                                        placeholder="Pay ID" TextMode="Number"></asp:TextBox>
                                    
                               </div>

                                
                            </div>
                            <div class="col-md-5">
                                <label>Class name</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox Cssclass="form-control" ID="TextBox6" runat="server"
                                        placeholder="Class name"></asp:TextBox>
                                    
                               </div>

                                
                            </div>
                            <div class="col-md-4">
                                <label>Class fee</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox7" runat="server"
                                        placeholder="Class fee" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                           
                            </div>

                        <div class="row my-2">
                            <div class="col-md-4">
                                <label>Teacher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox8" runat="server"
                                        placeholder="Teacher ID" >
                                       
                                    </asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                        </div>
                               </div>

                                
                            </div>
                            <div class="col-md-4">
                                <label>First name</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox9" runat="server"
                                        placeholder="First name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Last name</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox10" runat="server"
                                        placeholder="Last name"></asp:TextBox>
                                </div>
                            </div>
                           
                            </div>

                        <div class="row my-4">
                             <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary" Style="width: 100%" ID="Button1" runat="server" Text="Add to class" OnClick="Button1_Click" />
                                 </div>
                         </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success" Style="width: 100%" ID="Button3" runat="server" Text="Remove from class" OnClick="Button3_Click" />
                                 </div>
                         </div>


                            </div>

                        




                        </div>

                
                </div>


         
                         

                            
                    </div>
            </div>

        <div class="row">
            <div class="col">

                <div class="card my-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student - Class list</h3>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [PayID], [StudentID], [ClassName], [TeacherID] FROM [Payment]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView4" runat="server" class="table table-striped table-bordered" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="PayID">
                                    <Columns>
                                        <asp:BoundField DataField="PayID" HeaderText="PayID" ReadOnly="True" SortExpression="PayID"></asp:BoundField>
                                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID"></asp:BoundField>
                                        <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName"></asp:BoundField>
                                        <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" SortExpression="TeacherID"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        </div>
                    </div>


                <div class="card my-4">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student list</h3>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [StudentID], [Lname], [Fname], [Gender], [ContactNo], [Email], [Grade] FROM [Student]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                            </div>
                        </div>

                        </div>
                    </div>

                
                
                <div class="card my-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher list</h3>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [TeacherID], [Fname], [Lname], [Equalification], [Fee], [ContactNo], [Gender] FROM [Teacher]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView2" class="table table-striped table-bordered" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
                            </div>
                        </div>
                        </div>
                    </div>
                
                

                <div class="card my-4">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Class list</h3>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [ClassName], [Grade], [Syllabus], [Media], [Link], [Fee] FROM [Class]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView3" class="table table-striped table-bordered" runat="server" DataSourceID="SqlDataSource3"></asp:GridView>
                            </div>
                        </div>
                        </div>
                    </div>







                     
                       
                    </div>
                        </div>

        </div>
            

          
      
</asp:Content>
