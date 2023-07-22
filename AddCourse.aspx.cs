using System;

namespace CourseEnrollment
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            var title = txtTitle.Text;
            var description = txtDescription.Text;
            var instructor = txtInstructor.Text;
            var maxCapacity = Convert.ToInt32(txtMaxCapacity.Text);

            using (var context = new CourseContext())
            {
                var newCourse = new Course
                {
                    Title = title,
                    Description = description,
                    Instructor = instructor,
                    MaxCapacity = maxCapacity,
                    CurrentEnrollment = 0 // Initialize enrollment count to 0 when adding a new course.
                };

                context.Courses.Add(newCourse);
                context.SaveChanges();
            }

            Response.Redirect("CourseManagement.aspx");
        }
    }
}
