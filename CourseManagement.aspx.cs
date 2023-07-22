using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace CourseEnrollment
{
    public partial class CourseManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        private void LoadCourses()
        {
            using (var context = new CourseContext())
            {
                var courses = context.Courses.ToList();
                GridViewCourses.DataSource = courses;
                GridViewCourses.DataBind();
            }
        }

        protected void GridViewCourses_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EnrollCourse")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int courseId = Convert.ToInt32(GridViewCourses.DataKeys[rowIndex].Value);
                using (var context = new CourseContext())
                {
                    var course = context.Courses.Find(courseId);
                    if (course != null && course.CurrentEnrollment < course.MaxCapacity)
                    {
                        course.CurrentEnrollment++;
                        context.SaveChanges();
                        LoadCourses();
                    }
                }
            }
        }
    }
}
