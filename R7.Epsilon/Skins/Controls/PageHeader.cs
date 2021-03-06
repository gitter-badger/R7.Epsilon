﻿//
// PageHeader.ascx.cs
//
// Author:
//       Roman M. Yagodin <roman.yagodin@gmail.com>
//
// Copyright (c) 2015 
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

using System;
using System.Web;
using System.Web.UI;
using DotNetNuke.Entities.Portals;
using System.Web.UI.WebControls;
using System.Web.Security;
using DotNetNuke.UI.WebControls;
using DotNetNuke.Entities.Users;

namespace R7.Epsilon
{
    public class PageHeader : EpsilonSkinObjectBase
    {
        // REVIEW: Convert to control attribute?
        // chars to trim, including en and em dashes
        private static char [] trimSeparators = { ' ', '-', '\u2013', '\u2014',  '.', ':', '/', '\\' };

        protected string Title
        {
            get
            {
                // if Title ends with TabName, use Title instead of TabName
                var activeTab = PortalSettings.ActiveTab;
                if (!string.IsNullOrWhiteSpace (activeTab.Title))
                {
                    if (activeTab.Title.EndsWith (activeTab.TabName, StringComparison.CurrentCultureIgnoreCase))
                        return activeTab.Title;
                }

                return activeTab.TabName;
            }
        }

        protected string TagLine
        {
            get
            { 
                // if Title starts with TabName, use varying Title part as tagline,
                // else if Title ends with TabName, return empty string,
                // or use Title as tagline by default.
                var activeTab = PortalSettings.ActiveTab;
                if (!string.IsNullOrWhiteSpace (activeTab.Title))
                {
                    if (activeTab.Title.StartsWith (activeTab.TabName, StringComparison.CurrentCultureIgnoreCase))
                        return activeTab.Title.Substring (activeTab.TabName.Length).TrimStart (trimSeparators);

                    if (activeTab.Title.EndsWith (activeTab.TabName, StringComparison.CurrentCultureIgnoreCase))
                        return string.Empty;

                    return activeTab.Title;
                }
            
                return string.Empty;
            }
        }
    }
}
