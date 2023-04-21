<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="teacher_signup.aspx.cs" Inherits="StudentManagement.teacher_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto my-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" src="images/generaluser.png" width="100"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher sign up</h3>
                                </center>
                            </div>
                        </div>
                        <a href="teacher_signup.aspx">teacher_signup.aspx</a>
                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                     <div class="col">
                        <div class="form-group">
                            <label for="photo">Photo <sup style="color:red">*</sup> : </label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="FileUpload1" ErrorMessage="* Please enter your photo" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                        </div>

                     </div>
                  </div>
                        <br />

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>First name <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="First name">

                                    </asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Please enter your first name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>
                                </div>


                            <div class="col-md-5">
                                <label>Last name <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Last name">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Please enter your last name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                                <div class="col-md-2">
                                <label>Gender <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                      <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem value="">Select</asp:ListItem>
                                        <asp:ListItem value="M">Male</asp:ListItem>
                                        <asp:ListItem value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select gender" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    
                                 </div>
                                </div>
                            </div>
                           

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Contact No. <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="07xxxxxxxx" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter contact no." style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^07\d{8}$"  ErrorMessage="* Invalid format" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                    </div>

                            </div>

                            <div class="col-md-7">
                                <label>Email <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="username@example.com" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter email" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="* Invalid format" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                    </div>

                        <div class="row my-2">
                            <div class="col-md-4">
                                <label>
                                    Date of birth <sup style="color:red">*</sup>
                                </label>
                                <div class="form-group"></div>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                        placeholder="mm/dd/yyyy" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Please enter DOB" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                               
                                </div>

                            <div class="col-md-4">
                                <label>Syllabus <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Local">Local</asp:ListItem>
                                        <asp:ListItem Value="London">London</asp:ListItem>
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="* Select syllabus" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    
                                </div>
                                </div>
                            
                               

                            </div>


                        <div class="row my-2">
                          <div class="col">
                              <label>Education qualifications <sup style="color:red">*</sup></label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                      placeholder="Education qualifications"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="* Please enter education qualification" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                              </div>
                          </div>
                      </div>      
                                
                      <div class="row my-2">
                          <div class="col">
                              <label>Address <sup style="color:red">*</sup></label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Please enter address" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                              </div>
                          </div>
                      </div>      


                        <div class="row my-2">
                          <div class="col-md-4">
                              <label>Class fee (Rs.) <sup style="color:red">*</sup></label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                      placeholder="Class fee" TextMode="Number"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="* Please enter class fee" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                              </div>
                          </div>
                            <div class="col-md-4">
                                <label>Prefered media <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Google Meets">Google Meets</asp:ListItem>
                                        <asp:ListItem Value="MS Teams">Microsoft Teams</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList4" ErrorMessage="* Select media" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                </div>
                                    </div>
                      </div>  
                        
                        
                                
                      <div class="row my-4">
                             <div class="col">
                                 <center>
                                 <span class="badge rounded-pill text-bg-success">Bank details</span>
                                     </center>
                             </div>



                          <div class="row my-2">
                            <div class="col-md-4">
                                <label>Account No. <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server" 
                                        placeholder="Account No." TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox11" ErrorMessage="* Please enter acc no." style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    </div>

                            </div>

                            <div class="col-md-4">
                                <label>Bank name <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Amana Bank">Amana Bank</asp:ListItem>
                                        <asp:ListItem Value="Bank of Ceylon">Bank of Ceylon</asp:ListItem>
                                        <asp:ListItem Value="Cargills Bank">Cargills Bank</asp:ListItem>
                                        <asp:ListItem Value="Commercial Bank of Ceylon">Commercial Bank of Ceylon</asp:ListItem>
                                        <asp:ListItem Value="Deutsche Bank">Deutsche Bank</asp:ListItem>
                                        <asp:ListItem Value="DFCC Bank">DFCC Bank</asp:ListItem>
                                        <asp:ListItem Value="Hatton National Bank">Hatton National Bank</asp:ListItem>
                                        <asp:ListItem Value="National Development Bank">National Development Bank</asp:ListItem>
                                        <asp:ListItem Value="Nations Trust Bank">Nations Trust Bank</asp:ListItem>
                                        <asp:ListItem Value="Pan Asia Bank">Pan Asia Bank</asp:ListItem>
                                        <asp:ListItem Value="People's Bank">People's Bank</asp:ListItem>
                                        <asp:ListItem Value="Sampath Bank">Sampath Bank</asp:ListItem>
                                        <asp:ListItem Value="Seylan Bank">Seylan Bank</asp:ListItem>
                                        <asp:ListItem Value="Standard Chartered Bank">Standard Chartered Bank</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3" ErrorMessage="* Select bank" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                </div>
                        </div>
                    </div>
                        


                        <div class="row my-4">
                             <div class="col">
                                 <center>
                                 <span class="badge rounded-pill text-bg-success">User credentials</span>
                                     </center>
                             </div>

                            
                    </div>


                         <div class="row my-2">
                            <div class="col-md-6">
                                <label>Teacher ID <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" 
                                        placeholder="Teacher ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Please enter teacher ID" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    </div>

                            </div>

                            <div class="col-md-6">
                                <label>Password <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                        placeholder="Password" TextMode="Password" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox8" ErrorMessage="* Please enter password" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage=" Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character" 
        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$" 
        style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                    </div>


                         <div class="row my-4">
                             <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block" Style="width: 100%" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />
                                    </div>
                             </div>

                            
                    </div>



                            </div>

                    
                        </div>

                <a href="homepage.aspx"><< Back to Home</a>
                </div>
            </div>

        </div>
  





         </div>









</asp:Content>
