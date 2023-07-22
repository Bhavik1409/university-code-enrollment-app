<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="CourseEnrollment.AddCourse" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Course</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Add Course</h2>
            <div>
                <label for="txtTitle">Title:</label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtDescription">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div>
                <label for="txtInstructor">Instructor:</label>
                <asp:TextBox ID="txtInstructor" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtMaxCapacity">Max Capacity:</label>
                <asp:TextBox ID="txtMaxCapacity" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <asp:Button ID="btnAddCourse" runat="server" Text="Add Course" OnClick="btnAddCourse_Click" />
        </div>
    </form>
</body>
</html>
