using Evaluation2_Screens;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Screen9_IMTEX
{
    public partial class Screen9 : System.Web.UI.Page
    {
        DataBaseHelper dbhelper = new DataBaseHelper();
        List<DataTable> dt_data = new List<DataTable>();

        protected void Page_Load(object sender, EventArgs e)
        {         
            try
            {
                BindData();
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"Page_Load : {ex}");
            }
        }
        public void BindDateTime()
        {
            try
            {
                date.Text = "&nbsp" + DateTime.Now.ToString("dd MMMM yyyy");
                time.Text = "&nbsp" + DateTime.Now.ToString("hh:mm:ss");
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"BindDateTime : {ex}");
            }
        }
        public void BindData()
        {
            try
            {
                BindDateTime();
                dt_data = dbhelper.FetchDBData();
                opValue3.Text = "OK";
                laststatus.Text = "Last Status";
                Output1DataBind();
                Output2DataBind();               
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"BindData : {ex}");
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                BindData();
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"Timer1_Tick : {ex}");
            }
        }
        protected void DimensionRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    Label opValue55Label = (Label)e.Item.FindControl("opValue55");
                    string dimensionValue = ((DataBaseHelper.DimensionData)e.Item.DataItem).DimensionValue;
                    if (!string.IsNullOrEmpty(dimensionValue))
                    {                       
                        opValue55Label.Style["margin-left"] = "5.75vw";
                        opValue55Label.Style["padding"] = "0.2vw";
                        opValue55Label.Style["padding-left"] = "0.3vw";
                        opValue55Label.Style["border-radius"] = "0.3vw";
                        opValue55Label.Style["background-color"] = "#536d6c";
                    }
                    else
                    {
                        opValue55Label.Style.Clear();
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"DimensionRepeater_ItemDataBound : {ex}");
            }
        }
        public void Output1DataBind()
        {
            try
            {
                DataTable dt_output1 = dt_data[0];
                if (dt_output1 != null && dt_output1.Rows.Count > 0)
                {
                    for (int i = 0; i < dt_output1.Rows.Count; i++)
                    {
                        string id = dt_output1.Rows[i]["MachineID"].ToString();
                        switch (id)
                        {
                            case "M01":
                                MachineID1.Text = "1";
                                MachineDescription1.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                MachineStatus1.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                string bgColor = dt_output1.Rows[i]["MachineLiveStatusColor"].ToString();
                                bgColor11.Style["background-color"] = bgColor;
                                Div1.Style["background-color"] = bgColor;

                                id1.Text = "1";
                                desc1.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                s1.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                opValue1.Text = dt_output1.Rows[i]["OperationNo"].ToString();
                                rsn1.Text = dt_output1.Rows[i]["ComponentID"].ToString();
                                pc1.Text = dt_output1.Rows[i]["PartCount"].ToString();
                                break;
                            case "M02":
                                MachineID2.Text = "2";
                                MachineDescription2.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                MachineStatus2.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                string bgColor1 = dt_output1.Rows[i]["MachineLiveStatusColor"].ToString();
                                bgColor22.Style["background-color"] = bgColor1;
                                Div2.Style["background-color"] = bgColor1;

                                id2.Text = "2";
                                desc2.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                s2.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                opValue2.Text = dt_output1.Rows[i]["OperationNo"].ToString();
                                rsn2.Text = dt_output1.Rows[i]["ComponentID"].ToString();
                                pc2.Text = dt_output1.Rows[i]["PartCount"].ToString();
                                break;

                            case "M04":
                                MachineID4.Text = "4";
                                MachineDescription4.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                MachineStatus4.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                string bgColor4 = dt_output1.Rows[i]["MachineLiveStatusColor"].ToString();
                                bgColor44.Style["background-color"] = bgColor4;
                                Div4.Style["background-color"] = bgColor4;

                                id4.Text = "4";
                                desc4.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                s4.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                opValue4.Text = dt_output1.Rows[i]["OperationNo"].ToString();
                                rsn4.Text = dt_output1.Rows[i]["ComponentID"].ToString();
                                pc4.Text = dt_output1.Rows[i]["PartCount"].ToString();
                                break;

                            case "M06":
                                MachineID6.Text = "6";
                                MachineDescription6.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                MachineStatus6.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                string bgColor6 = dt_output1.Rows[i]["MachineLiveStatusColor"].ToString();
                                bgColor66.Style["background-color"] = bgColor6;
                                Div6.Style["background-color"] = bgColor6;

                                id6.Text = "6";
                                desc6.Text = dt_output1.Rows[i]["MachineDescription"].ToString();
                                s6.Text = dt_output1.Rows[i]["MachineLiveStatus"].ToString();
                                opValue6.Text = dt_output1.Rows[i]["OperationNo"].ToString();
                                rsn6.Text = dt_output1.Rows[i]["ComponentID"].ToString();
                                pc6.Text = dt_output1.Rows[i]["PartCount"].ToString();
                                break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"Output1DataBind : {ex}");
            }
        }
        public void Output2DataBind()
        {
            try
            {
                DataTable dt_output2 = dt_data[1];
                if (dt_output2 != null && dt_output2.Rows.Count > 0)
                {
                    for (int i = 0; i < dt_output2.Rows.Count; i++)
                    {
                        string id = dt_output2.Rows[i]["MachineID"].ToString();
                        switch (id)
                        {
                            case "M03":
                                MachineID3.Text = "3";
                                MachineDescription3.Text = dt_output2.Rows[i]["MachineDescription"].ToString();
                                id3.Text = "3";
                                desc3.Text = dt_output2.Rows[i]["MachineDescription"].ToString();
                                dimensionid3.Text = dt_output2.Rows[i]["DimensionID"].ToString();
                                dimensionvalue3.Text = dt_output2.Rows[i]["Value"].ToString();
                                if (!string.IsNullOrEmpty(dt_output2.Rows[i]["Value"].ToString()))
                                {
                                   
                                    dimensionvalue3.Style["margin-left"] = "5.75vw";
                                    dimensionvalue3.Style["padding"] = "0.2vw";
                                    dimensionvalue3.Style["padding-left"] = "0.3vw";
                                    dimensionvalue3.Style["border-radius"] = "0.3vw";
                                    dimensionvalue3.Style["background-color"] = "#536d6c";
                                }
                                break;
                            case "M05":
                                MachineID5.Text = "5";
                                MachineDescription5.Text = dt_output2.Rows[i]["MachineDescription"].ToString();
                                id5.Text = "5";
                                desc5.Text = dt_output2.Rows[i]["MachineDescription"].ToString();
                                List<DataBaseHelper.DimensionData> dimensionList = new List<DataBaseHelper.DimensionData>();
                                foreach (DataRow row in dt_output2.Rows)
                                {
                                    if (row["MachineID"].ToString() == "M05")
                                    {
                                        dimensionList.Add(new DataBaseHelper.DimensionData
                                        {
                                            DimensionID = row["DimensionID"].ToString(),
                                            DimensionValue = row["Value"].ToString(),

                                        });

                                    }
                                }
                                DimensionRepeater.DataSource = dimensionList;
                                DimensionRepeater.DataBind();
                                break;
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog($"Output2DataBind : {ex}");
            }
        }
    }
}