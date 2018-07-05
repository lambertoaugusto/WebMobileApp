using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.UI.HtmlControls;

namespace WebMobileApp
{
    public partial class Default : System.Web.UI.Page
    {
        public static List<HtmlGenericControl> rows = new List<HtmlGenericControl>();
        
        protected void Page_Load(object sender, EventArgs e)
        {            
            Response.Write("<div id='loading' style='position:absolute; width:100%; text-align:center; '>" +
                                "<img src='loading.gif' border =0>" +
                           "</div>");
            Response.Flush();

            if (Session != null && Session["rows"] != null)
            {   
                rows = (List<HtmlGenericControl>)Session["rows"];
            }
            //Inserts all divs(Image+Comment) into the div called divForm when the page is loaded
            rows.ForEach(x => divForm.Controls.Add(x));
            
            System.Threading.Thread.Sleep(5000);
            Response.Write("<script>document.getElementById('loading').style.display='none';</script>");
        }
               
        [WebMethod]
        public static object CheckLogin(string user, string password)
        {
            object result;
            if (user == "admin" && password == "webtech")
            {
                result = true;

            }
            else
            {
                result = false;
            }

            return new
            {
                result
            };
        }

        [WebMethod]
        public static void InsertComment(String comment)
        {
            
            //object result = false;
            
            //Represents the div to be added
            HtmlGenericControl div = new HtmlGenericControl("div");
            div.Attributes.Add("id", "div" + rows.Count);//set the attribute id
            div.Attributes.Add("runat", "server");//attribute used to allow that the div be accessed 

            //Checks if there is a file in the FileUpload element
            /*if (FileUpload1.HasFile)
            {
                //bytes that represents the Image
                Byte[] bytes = br.ReadBytes((Int32)fileStream.Length);
                //converts the bytes of Image in a string based 64
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                //Adds the Image to the div represented by the base 64 string
                div.InnerHtml += "<img src=data:image/png;base64," + base64String + " height='120' width='120' alt='no image'>";
            }*/
            //Adds the comment in a Label to be shown
            div.InnerHtml += "<div><span class='label label-primary'>" + comment + "</span></div>";
            //divides the comments
            if (comment != "")
            {
                div.InnerHtml += "<br>";
            }
            //adds the new div with the elements into the div master
            //divForm.Controls.Add(div);
            //adds the div in the List to be accessed without be loaded from the server
            rows.Add(div);

            /*result = true;
            return new
            {
                result
            };*/
        }
    }

}