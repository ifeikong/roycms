﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using ROYcms.UI.Admin;

namespace ROYcms.UCenter
{
    /// <summary>
    /// 
    /// </summary>
    public partial class Default : UserPage
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        /// <summary>
        /// 
        /// </summary>
        void Bind()
        {
            Repeater_list.DataSource = ___ROYcms_New_User_bll.GetList("User_id=" + Convert.ToInt32(ROYcms.Common.Session.Get("user_id")));
            Repeater_list.DataBind();
        }
    }
}
