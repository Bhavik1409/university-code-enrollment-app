<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseManagement.aspx.cs" Inherits="CourseEnrollment.CourseManagement" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Course Management</h2>
            <asp:GridView ID="GridViewCourses" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Course Title" />
                    <asp:BoundField DataField="Instructor" HeaderText="Instructor" />
                    <asp:BoundField DataField="CurrentEnrollment" HeaderText="Enrollment Count" />
                    <asp:BoundField DataField="MaxCapacity" HeaderText="Max Capacity" />
                    <asp:ButtonField Text="Enroll" ButtonType="Button" CommandName="EnrollCourse" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
