<%  response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    session=request.getSession(false); 
    
    if(null != session.getAttribute("htno")){
        String htno = session.getAttribute("htno").toString();
        Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("SELECT Registration_ID FROM resultstudent WHERE Registration_ID='"+htno+"'");
            if(rs.next()){
                response.sendRedirect("../jsp/catalogstudent.jsp");
            }
                else{          
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/navcommon.css">
        <title>Java Exam Page</title>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    
        <style>
            .footer{
                position: fixed;
                width: 100%;
            }
            .help-block {
                color: #FF0000;
            }
            .slide {
                animation-name: slide;
                -webkit-animation-name: slide;	
                animation-duration: 1s;	
                -webkit-animation-duration: 1s;
                visibility: visible;			
            }
            @keyframes slide {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(40%);
                } 
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0%);
                }	
            }
            @-webkit-keyframes slide {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(40%);
                } 
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0%);
                }
            }
            .table-borderless tbody tr td, .table-borderless tbody tr th, .table-borderless thead tr th {
                border: none;
                height: 10px;
            }
            .leftstuff{
                float: right;
            }
            .affix {
                top: 0;
                width: 100%;
            }

            .affix + .container-fluid {
                padding-top: 70px;
            }
        </style>
    </head>

     
    <body>

        <div class="header">
            <img class="mlogo slidelogo" src="../images/logo.png" alt="Logo" width="500" height="80">
        </div>
        
        <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="50">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <%Statement st1=cn.createStatement();
                        ResultSet rs1=st1.executeQuery("SELECT Profile_Pic FROM register WHERE Registration_ID='"+htno+"'");
                        if(rs1.next()){;%>
                        <li><a href="#" style="padding:0px 15px 0px 0px;"><img src="../images/profiles/<%=rs1.getString(1)%>" class="img-circle" alt="Sharath" width="50" height="50"> <%=htno%></a></li>
                        <%}%>
                    <li><a href="#"><span class="glyphicon glyphicon-open-file"></span> Java Paper</a></li>
                </ul>
            </div>
         </nav>
        
         <div class="containerfluid  slide">
            
            <div class="hed">
                <h2>Java - Exam Paper</h2>
            </div>
            
            <div style="margin: 0px 30px 0px 30px">
            <form id="cform" action="../exampapers/javalogic.jsp" role="form" novalidate="novalidate">    
            <table class="table table-borderless">
                <tbody style="padding-bottom:30px">
                    <tr><th colspan="4">Q1) What is the size of double variable?</th></tr>
                    <tr>
                        <td><input type="radio" name="q1" value="A"> <b>A</b> - 8 bit</td><td><input type="radio" name="q1" value="B"> <b>B</b> - 16 bit</td>
                        <td><input type="radio" name="q1" value="C"> <b>C</b> - 32 bit</td><td><input type="radio" name="q1" value="D"> <b>D</b> - 64 bit</td>
                    </tr>
                </tbody>    
                <tbody>    
                    <tr><th colspan="4">Q2) What is function overloading?</th></tr>
                    <tr>
                        <td><input type="radio" name="q2" value="A"> <b>A</b> - Methods with same name but different parameters.</td><td><input type="radio" name="q2" value="B"> <b>B</b> - Methods with same name but different return types.</td>
                        <td><input type="radio" name="q2" value="C"> <b>C</b> - Methods with same name, same parameter types but different parameter names</td><td><input type="radio" name="q2" value="D"> <b>D</b> - None of the above.</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q3) Which method must be implemented by all threads?</th></tr>
                    <tr>
                        <td><input type="radio" name="q3" value="A"> <b>A</b> - wait()</td><td><input type="radio" name="q3" value="B"> <b>B</b> - start()</td>
                        <td><input type="radio" name="q3" value="C"> <b>C</b> - stop()</td><td><input type="radio" name="q3" value="D"> <b>D</b> - run()</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q4) Which of the following is not a keyword in java?</th></tr>
                    <tr>
                        <td><input type="radio" name="q4" value="A"> <b>A</b> - static</td><td><input type="radio" name="q4" value="B"> <b>B</b> - Boolean</td>
                        <td><input type="radio" name="q4" value="C"> <b>C</b> - void</td><td><input type="radio" name="q4" value="D"> <b>D</b> - private</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q5) What is Abstraction?</th></tr>
                    <tr>
                        <td><input type="radio" name="q5" value="A"> <b>A</b> - Abstraction is a technique to define different methods of same type.</td><td><input type="radio" name="q5" value="B"> <b>B</b> - Abstraction is the ability of an object to take on many forms.</td>
                        <td><input type="radio" name="q5" value="C"> <b>C</b> - It refers to the ability to make a class abstract in OOP.</td><td><input type="radio" name="q5" value="D"> <b>D</b> - None of the above.</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q6) This is the parent of Error and Exception classes.</th></tr>
                    <tr>
                        <td><input type="radio" name="q6" value="A"> <b>A</b> - Catchable</td><td><input type="radio" name="q6" value="B"> <b>B</b> - MainError</td>
                        <td><input type="radio" name="q6" value="C"> <b>C</b> - Throwable</td><td><input type="radio" name="q6" value="D"> <b>D</b> - MainException</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q7)  What is an Interface?</th></tr>
                    <tr>
                        <td><input type="radio" name="q7" value="A"> <b>A</b> - Interface is an concrete class.</td><td><input type="radio" name="q7" value="B"> <b>B</b> - Interface is an abstract class.</td>
                        <td><input type="radio" name="q7" value="C"> <b>C</b> - An interface is a collection of abstract methods.</td><td><input type="radio" name="q7" value="D"> <b>D</b> - None of the above.</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q8) In which case, a program is expected to recover?</th></tr>
                    <tr>
                        <td><input type="radio" name="q8" value="A"> <b>A</b> - If an error occurs./td><td><input type="radio" name="q8" value="B"> <b>B</b> - If an exception occurs.</td>
                        <td><input type="radio" name="q8" value="C"> <b>C</b> - Both of the above.</td><td><input type="radio" name="q8" value="D"> <b>D</b> - None of the above.</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q9) Which is the way in which a thread can enter the waiting state?</th></tr>
                    <tr>
                        <td><input type="radio" name="q9" value="A"> <b>A</b> - Invoke its sleep() method.</td><td><input type="radio" name="q9" value="B"> <b>B</b> - invoke object's wait method.</td>
                        <td><input type="radio" name="q9" value="C"> <b>C</b> - Invoke its suspend() method.</td><td><input type="radio" name="q9" value="D"> <b>D</b> - All of the above.</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr><th colspan="4">Q10) What is an applet?</th></tr>
                    <tr>
                        <td><input type="radio" name="q10" value="A"> <b>A</b> - Applet is a standalone java program.</td><td><input type="radio" name="q10" value="B"> <b>B</b> - Applet is a tool.</td>
                        <td><input type="radio" name="q10"  value="C"> <b>C</b> - An applet is a Java program that runs in a Web browser.</td><td><input type="radio" name="q10" value="D"> <b>D</b> - Applet is a run time environment.</td>
                    </tr>
                </tbody>
            </table>
                <div style="text-align:center">
                <input type='submit' class='btn btn-primary' value='Submit'>
                </div>>
            </form>    
            </div>
        </div>
    </body>
    
    <footer class="footer">
            <p>Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</p>		
    </footer>
        
    <script src="../js/plugins/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#memberModal').modal('show');
            });
        </script>
        <div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                         <h4 class="modal-title" id="memberModalLabel">Instructions (Read Carefully)</h4>

                    </div>
                    <div class="modal-body">
                        <ul>
                            <li>Answer all the questions.</li>
                            <li>Each question carries 1 mark.</li>
                            <li>Time limit is 10 minutes.</li>
                            <li>There is no negative marking.</li>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Okay</button>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="../js/plugins/jquery.validate.min.js"></script>
        <script src="../js/validation/stureg.js"></script>
        <script src="../js/plugins/bootstrap.min.js"></script> 
        
</html>
<%}
}else{
      response.sendRedirect("../jsp/studentloginform.jsp");
}%>`
