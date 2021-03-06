﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_view_timetable : System.Web.UI.Page
{
    DataSet dss = new DataSet();
    DataSet dss1 = new DataSet();
    DataSet dss2 = new DataSet();

    ClsGlobal glb = new ClsGlobal();

    protected void Page_Load(object sender, EventArgs e)
    {
        Sessioninfo();
    }
    public void Sessioninfo()
    {
        HttpCookie myCookiet = Request.Cookies["myCookiet"];


        if (myCookiet != null)
        {

            string userId = myCookiet["tnm"];

            string sql = "select * from teacher where usr='" + userId + "' ";
            dss = glb.GetDataSet(sql);



            if (dss.Tables[0].Rows.Count == 1)
            {
                lbltchnm.Text = dss.Tables[0].Rows[0]["name"].ToString();
                lblsch.Text = dss.Tables[0].Rows[0]["school"].ToString();
                lblsch1.Text = dss.Tables[0].Rows[0]["school"].ToString();
            }
            else
            {
                string message1 = "Login Session Expired....Please Login again.";
                string script = "window.onload = function(){ alert('";
                script += message1;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                Response.Redirect("../Teacherlogin.aspx");

            }

            if(!IsPostBack)
            {
                string sql1 = "SELECT[class] FROM[classsection] WHERE([school] = '" + lblsch.Text + "') ORDER BY[id] DESC";
                dss1 = glb.GetDataSet(sql1);
                DropDownList1.DataSource = dss1.Tables[0];
                DropDownList1.DataTextField = "class";
                DropDownList1.DataValueField = "class";
                DropDownList1.DataBind();
            }
         
               

                fillGridView2();
                //fillGridView3();
            
        }
    }

    public void fillGridView2()
    {
        string sql = "SELECT * FROM [timetable] WHERE (([class] = '"+DropDownList1.SelectedValue+"') AND ([school] = '"+lblsch.Text+"')) ORDER BY [id] DESC";
        dss2 = glb.GetDataSet(sql);
        GridView1.DataSource = dss2;
        GridView1.DataBind();
    }
}