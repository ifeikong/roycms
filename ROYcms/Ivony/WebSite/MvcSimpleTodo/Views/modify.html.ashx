﻿<%@ WebHandler Language="C#" Class="modify_html" %>

using System;
using System.Web;
using System.Linq;

using Ivony.Fluent;
using Ivony.Html;
using Ivony.Html.Web;
using Ivony.Html.Styles;
using Ivony.Html.Forms;
using Ivony.Html.Forms.Validation;
using Ivony.Html.Web.Mvc;

using DatabaseModel;


public class modify_html : ViewHandler<Task>
{

  protected override void ProcessDocument()
  {
    Document.FindSingle( "form" ).SetAttribute( "action", Url.Action( "Modify", new { taskId = ViewModel.ID } ) );

    Document.FindSingle( "input[name=title]" ).SetAttribute( "value", ViewModel.Title );

  }

}