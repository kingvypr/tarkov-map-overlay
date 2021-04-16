using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CefSharp;
using CefSharp.WinForms;
using Gma.System.MouseKeyHook;

namespace tarkov_map
{
    public partial class Form1 : Form
    {
        public ChromiumWebBrowser chrome;

        public Form1()
        {
            InitializeComponent();
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            CefSettings settings = new CefSettings();

            string sURL = "http://127.0.0.1:7890";//"https://mapgenie.io/tarkov/maps/customs";//"http://eftmkg.com/factory-full-JohnnyTushonka.html";//"https://mapgenie.io/tarkov/maps/customs";//"https://escapefromtarkov.gamepedia.com/Customs_Interactive_Map";

            chrome = new ChromiumWebBrowser(sURL);
            this.Controls.Add(chrome);
            chrome.Dock = DockStyle.Fill;

            //var script = @"document.querySelector('[title='View Fullscreen']').click();";

            //chrome.ExecuteScriptAsyncWhenPageLoaded(script);
        }
    }
}
