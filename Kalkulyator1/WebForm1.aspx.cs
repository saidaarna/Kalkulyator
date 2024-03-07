using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulyator1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnNumber_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;

            if (txtResult.Text == "0")
            {
                txtResult.Text = button.Text;
            }
            else
            {
                txtResult.Text += button.Text;
            }
        }

        protected void btnOperator_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            ViewState["Operation"] = button.Text;
            ViewState["FirstNumber"] = txtResult.Text;
            txtResult.Text = string.Empty;
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
            if (ViewState["Operation"] != null && ViewState["FirstNumber"] != null)
            {
                double firstNumber = Convert.ToDouble(ViewState["FirstNumber"]);
                double secondNumber = Convert.ToDouble(txtResult.Text);
                string operation = ViewState["Operation"].ToString();
                double result = 0;
                switch (operation)
                {
                    case "+":
                        result = firstNumber + secondNumber;
                        break;
                    case "-":
                        result = firstNumber - secondNumber;
                        break;
                    case "*":
                        result = firstNumber * secondNumber;
                        break;
                    case "/":
                        if (secondNumber != 0)
                        {
                            result = firstNumber / secondNumber;
                        }
                        else
                        {
                            txtResult.Text = "Error";
                            return;
                        }
                        break;
                }

                txtResult.Text = result.ToString();

                string calculation = $"{firstNumber} {operation} {secondNumber} = {result}";
                List<string> history = Session["CalculationHistory"] as List<string>;
                if (history == null)
                {
                    history = new List<string>();
                }
                history.Add(calculation);
                Session["CalculationHistory"] = history;



            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtResult.Text = "0";
            ViewState["Operation"] = null;
            ViewState["FirstNumber"] = null;
        }

        protected void btnDecimal_Click(object sender, EventArgs e)
        {
            if (!txtResult.Text.Contains("."))
            {
                txtResult.Text += ".";
            }
        }

    }
}