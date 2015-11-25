using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


    }
    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "bkohler@als.com";
        // any address where the email will be sending
        var toAddress = "bkohler@als.com";
        //Password of your gmail address
        const string fromPassword = "blakek_16";
        // Passing the values and make a email formate to display
        string subject = "Application for " + Name.Text.ToString();
        string body = "GENERAL INFORMATION: \n";
        body += "Legal Name: " + Name.Text + "\n";
        body += "Email: " + YourEmail.Text + "\n";
        body += "Address: " + Address.Text + "\n";
        body += "City: " + City.Text + "\n";
        body += "State: " + State.Text + "\n";
        body += "Zip: " + Zip.Text + "\n";
        body += "Phone: " + Phone.Text + "\n";
        body += "Expected Hourly Wage: " + Wage.Text + "\n";
        body += "\n QUESTIONNARE: \n";
        body += "Over 18?: " + Over18.SelectedValue + "\n";
        body += "Background Check?: " + backgroundcheck.SelectedValue + "\n";
        body += "Drug Test?: " + drug.SelectedValue + "\n";
        body += "How much retail experience do you have?: " + retailexp.SelectedValue + "\n";
        //departments interested in
        // Create the list to store.
        List<String> YrStrList = new List<string>();
        // Loop through each item.
        foreach (ListItem item in departments.Items)
        {
            if (item.Selected)
            {
                // If the item is selected, add the value to the list.
                YrStrList.Add(item.Value);
            }
            else
            {
                // Item is not selected, do something else.
            }
        }
        // Join the string together using the ; delimiter.
        String YrStr = String.Join("; \n", YrStrList.ToArray());
        body += String.Concat("Departments Interested In: ", YrStr) ;
        body += "\n";
        body += "Have you ever been terminated by a previous employer?: " + term.SelectedValue + "\n";
        if (term.SelectedValue == "Yes")
        {
            body += "Explanation: " + brief.Text + "\n";
        }


        //Hours Worked
        body += "\n HOURS: \n";
        body += "Hours Avalible: \n" + "Monday: " + MondayFrom.Text + "-" + MondayTo.Text + "\n" +
            "Tuesday: " + TuesdayFrom.Text + "-" + TuesdayTo.Text + "\n"
            + "Wednesday: " + WedFrom.Text + "-" + WedTo.Text + "\n"
            + "Thursday: " + ThursFrom.Text + "-" + ThursTo.Text + "\n"
            + "Friday: " + FriFrom.Text + "-" + FriTo.Text + "\n"
            + "Saturday: " + SatFrom.Text + "-" + SatTo.Text + "\n";

        //flexible schedule
        body += "Can you work a flexible schedule?: " + flex.SelectedValue + "\n"; 
        //Out of Town
        body += "Will you be out of town in the next 12 months?: " + OutofTown.SelectedValue + "\n";
        if (OutofTown.SelectedValue == "Yes")
        {
            body += "Explanation: " + OutofTownYes.Text + "\n";
        }
        //Out of Town
        body += "Will you be out of town in the next 12 months?: " + LeaveLogan.SelectedValue + "\n";
        if (LeaveLogan.SelectedValue == "Yes")
        {
            body += "Explanation: " + LeaveLoganYes.Text + "\n";
        }
        //Education

        body += "\n EDUCATION: \n";
        body += "High School: " + HighSchool.Text + "\n";
        body += "Years Completed: " + YearsCompleted.Text + "\n";
        body += "GPA: " + GPA.Text + "\n";
        body += "City: " + CityHighSchool.Text + "\n";
        body += "State: " + StateHighSchool.Text + "\n";
        body += "Did you graduate?: " + didgrad.SelectedValue + "\n";
        body += "College? " + GoingtoCollege.SelectedValue + "\n";
        if (GoingtoCollege.SelectedValue == "Yes")
        {
            body += CollegeLabel.Text + ": " + CollegeText.Text + "\n";
            body += CollegeYearsCompletedLabel.Text + ": " + YearsCompletedText.Text + "\n";
             body += CollegeGPALabel.Text + ": " + CollegeGPAText.Text + "\n";
             body += CollegeCityLabel.Text + ": " + CollegeCityText.Text + "\n";
             body += CollegeStateLabel.Text + ": " + CollegeStateText.Text + "\n";
            body += CollegeDidGrad.Text + ": " + CollegeDidGradBut.SelectedValue + "\n";
        }
        body += "Future Edutaction Plans: " + FutureSchool.Text + "\n";
        body += "\n PREVIOUS EMPLOYMENT \n";
        body += "\n Current Employer \n";
        body += "Current Employer: " + currentemployer.Text +"\n";
        body += "Current Employer Address: " + Currentemployeraddress.Text + "\n";
        body += "Current Employer Phone: " + CurrentEmployerPhone.Text +"\n";
        body += "Current Supervisor: " + currentemployersup.Text +"\n";
        body += "Current job Description: " + currentemployerjobdes.Text +"\n";
        body += "Work Dates: " + currentemployerdatefrom.Text + " - " + currentemployerdateto.Text + "\n";
        body += "Why are you Looking for Employment?: " + currentemployerwhynew.Text + "\n";
        body += "May we contact them? " + maycontactthem.SelectedValue + "\n";
        body += "\n Previous Employer \n";
        body += "Previous Employer: " + currentemployer0.Text + "\n";
        body += "Previous Employer Address: " + Currentemployeraddress0.Text + "\n";
        body += "Previous Employer Phone: " + CurrentEmployerPhone0.Text + "\n";
        body += "Previous Employer Supervisor: " + currentemployersup0.Text + "\n";
        body += "Previous Employer Job Description: " + currentemployerjobdes0.Text + "\n";
        body += "Work Dates: " + currentemployerdatefrom0.Text + " - " + currentemployerdateto0.Text + "\n";
        body += "Reason for Leaving?: " + PreviousEmployerwhynew1.Text + "\n";
        body += "\n Previous Employer #2 \n";
        body += "Previous Employer: " + currentemployer1.Text + "\n";
        body += "Previous Employer Address: " + Currentemployeraddress1.Text + "\n";
        body += "Previous Employer Phone: " + CurrentEmployerPhone1.Text + "\n";
        body += "Previous Employer Supervisor: " + currentemployersup1.Text + "\n";
        body += "Previous Employer Job Description: " + currentemployerjobdes1.Text + "\n";
        body += "Work Dates: " + currentemployerdatefrom1.Text + " - " + currentemployerdateto1.Text + "\n";
        body += "Reason for Leaving?: " + PreviousEmployerwhynew2.Text + "\n";
        

        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            DisplayMessage.Text = "Thanks for submitting your application! We will contact you If an interview is deemed appropriate! \n"+ "Go back to www.alssports.com";
            Panel1.Visible = false;
            DisplayMessage.Visible = true;
            Address.Text = "";
            YourEmail.Text = "";
            Name.Text = "";
            Phone.Text = "";
        }
        catch (Exception) { }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (term.Text == "Yes")
        {
            brief.Visible = true;
        }
    }
    protected void OutofTown_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (OutofTown.Text == "Yes")
        {
            brief.Visible = true;
        }
    }
    protected void LeaveLogan_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (LeaveLogan.Text == "Yes")
        {
            brief.Visible = true;
        }

    }

    protected void GoingtoCollege_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GoingtoCollege.Text == "Yes")
        {

            CollegeLabel.Visible = true;
            CollegeText.Visible = true;
            CollegeYearsCompletedLabel.Visible = true;
            YearsCompletedText.Visible = true;
            CollegeGPALabel.Visible = true;
            CollegeGPAText.Visible = true;
            CollegeCityText.Visible = true;
            CollegeCityLabel.Visible = true;
            CollegeStateLabel.Visible = true;
            CollegeStateText.Visible = true;
            CollegeDidGrad.Visible = true;
            CollegeDidGradBut.Visible = true;
        }
    }
   
}