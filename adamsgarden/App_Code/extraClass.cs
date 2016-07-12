using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for extraClass
/// </summary>
public class extraClass
{
    public extraClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static bool addFunction()
    {
        Random rnd = new Random();
        int i = rnd.Next(0, 9);

        Random rndNAme = new Random();
        int num = rndNAme.Next(0, 9);
        char cString = ((char)('a' + num));
        String name = cString.ToString();
        

        string plotno = i.ToString();
        //string name = "abc";
        string cnic = ""+i+"1"+i+"01-96" + i + "935" + i + "-" + i.ToString();
        string relation = "cba";
        string occupation = "software engineer";
        string presentAddress = "Datapex";
        string permanent_address = "Datapex";
        string nomineeName = "Rabiya";
        string nomineeAddress = "Datapex";
        string nomineeCnic = "Datapex";
        string plotsize = "1 kanal";
        string telephone = "0512222222";
        string mobile = "03000000000";
        string email = "maryahchaudhry@gmail.com";
        string tbno = "maryahchaudhry@gmail.com";
        string tbregistrationo = "61101-9609354-0";
        string tbamountn = "1000";
        string tbamountinwords = "one thousand";
        string pay_type = "cash";
        Random rnd1 = new Random();
        string tbplotnumber = rnd.Next(1, 100).ToString();
        string tbstreet = "17";
        string pic = "0xFFD8FFE000104A46494600010101019001900000FFE110EE4578696600004D4D002A000000080004013B00020000000C0000084A8769000400000001000008569C9D000100000018000010CEEA1C00070000080C0000003E000000001CEA00000008000000000000000000000000000000000000000000000000000000000000";
        byte[] image = Encoding.UTF8.GetBytes(pic);
        applicant_info.downpayment(name, relation, cnic, occupation, presentAddress, telephone, mobile, email, permanent_address, nomineeName, nomineeAddress, nomineeCnic, tbno, image,tbregistrationo, tbamountn, tbamountinwords, plotsize, pay_type, tbplotnumber, tbstreet, "address","Residential");
        return true;
    }
}