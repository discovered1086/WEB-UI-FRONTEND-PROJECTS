/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function doSubmitPlan(theForm,functionality,subfunctionality,appmodule,targetURL)
{
    //alert("do submit");
    if(functionality!=null || functionality!='')
    {
        //alert("did enter the condition");
        theForm.functionality.value=functionality;
    }

    if(subfunctionality!=null || subfunctionality!='')
    {
        theForm.subfunctionality.value=subfunctionality;
    }

    if(appmodule!=null || appmodule!='')
    {
        theForm.module.value=appmodule;
    }

    if(targetURL!=null || targetURL!='')
    {
        theForm.action.value=targetURL;
    }


    // alert("before submitting the form");
    theForm.submit();
//alert("After submitting the form");
}

function openUnitTable()
{
    document.thisForm.est_amount.value="";
    document.thisForm.units.value="";
    document.thisForm.est_unit.value="";
    //alert("entered the function");
    if(document.getElementById("unitEntryCheck").checked)
    {
        //alert("entered the condition");
        document.getElementById("units").style.display="";
        document.getElementById("est_unit").style.display="";
    }
    else
    {
        document.getElementById("units").style.display="none";
        document.getElementById("est_unit").style.display="none";
    }
}


function calculateEst()
{
    var estimate=document.thisForm.est_amount.value;
    if(estimate!=null)
    {
        document.thisForm.est_amount.value="";
    }
    //alert("entered function");
    var units=document.thisForm.units.value;
    var unit_amount=document.thisForm.est_unit.value;

    if(units!=null && unit_amount!=null)
    {
        if(units!=0 && unit_amount!=0 )
        {
            document.thisForm.est_amount.value=units*unit_amount;
        }
    }
}

function clear()
{
    document.thisForm.reset();
    document.rightnote_form.reset();
}

function changeEstimateOption(dropdown,optnvalue)
{
    //alert('reached changeEstimateOption method');
    var dropdownval=dropdown.options[dropdown.selectedIndex].value;
    //alert('drop down value is '+dropdownval);
    //alert('option value is '+optnvalue);
    if(dropdownval.match(optnvalue))
    {
        document.getElementById("begindate").style.display="";
        document.getElementById("enddate").style.display="";
        document.getElementById("year_month").style.display="none";
    }
    else
    {
        document.getElementById("begindate").style.display="none";
        document.getElementById("enddate").style.display="none";
        document.getElementById("year_month").style.display="";
    }
}

function login(theForm)
{
    theForm.submit();
}

function open_window(URL)
{
    window.open(URL, "_blank", "toolbar=no, location=no, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, top=120px,left=500px,width=650,height=600");
}

function hasBill(bill,billid)
{
    var hasbill=bill.options[bill.selectedIndex].value;
    if(hasbill.match(billid))
    {
        open_window('/SmartMoneyPlansDemo/pages/add_bill_prompt.jsp');
    }
}


function display_details(){
    document.getElementById('content_background').style.display="";
    document.getElementById('content_prompt').style.display="";

    var height_use=document.body.scrollHeight;
    var width_use=document.body.scrollWidth;
    var width_to_use=(width_use-575)/2;
    var prompt_width=document.getElementById('content_prompt').style.height;
    //alert(height_use+" and "+prompt_width);

    document.getElementById('content_background').style.height=height_use+'px';
    document.getElementById('content_prompt').style.left=width_to_use+'px';
}

function hide_details(){
    document.getElementById('content_background').style.display="none";
    document.getElementById('content_prompt').style.display="none";
}

