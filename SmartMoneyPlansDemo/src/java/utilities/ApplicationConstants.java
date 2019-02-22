/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilities;

/**
 *
 * @author Kingshuk
 */
public interface ApplicationConstants {

//all the constant values
public static final String APP_MOUDLE="module";
public static final String MODULE_ESTIMATE="ESTIMATE";
public static final String MODULE_PURCHASE="PURCHASE_PLAN";
public static final String MODULE_TRANSACTION="TRANSACTION";
public static final String MODULE_REPORTS="REPORTS";
public static final String MODULE_ACCOUNTS="ACCOUNTS";
public static final String MODULE_PROFILE="MYPROFILE";
public static final String MODULE_INBOX="MYINBOX";
//public static final String MODULE_PROFILE="MYPROFILE";
public static final String MODULE_CATEGORY="CATEGORY";
public static final String YES_CAPS="YES";
public static final String NO_CAPS="NO";
public static final String FUNCTIONALITY="functionality";
public static final String SUB_FUNCTIONALITY="subfunctionality";
public static final String ADD_ESTIMATE="ADD_ESTIMATE";
public static final String NAVIGATE="navigate";
public static final String SAVE_ESTIMATE="save_estimate";
//public static final String SUB_FUNCTIONALITY="subfunctionality";

//Here are the Top and left navigation URLS
public static final String ADD_ESTIMATE_URL="/SmartMoneyPlansDemo/pages/enter_plan.html?module=ESTIMATE&functionality=ADD_ESTIMATE&subfunctionality=navigate";
public static final String ADD_PURCHASE_PLAN_URL="/SmartMoneyPlansDemo/pages/enter_plan.html?module=PURCHASE_PLAN&functionality=ADD_ESTIMATE&subfunctionality=navigate";
public static final String SEARCH_ESTIMATE_URL="/SmartMoneyPlansDemo/pages/search_plan.html?module=ESTIMATE&functionality=SEARCH_ESTIMATE&subfunctionality=navigate";
public static final String CONVERT_ESTIMATE_URL="/SmartMoneyPlansDemo/pages/search_plan.html?module=ESTIMATE&functionality=SEARCH_ESTIMATE&subfunctionality=navigate";
public static final String ADD_TRANSACTION_URL="/SmartMoneyPlansDemo/pages/transaction/add_transaction.html?module=TRANSACTION&functionality=ADD_TRANSACTION&subfunctionality=navigate";
public static final String SEARCH_TRANSACTION_URL="/SmartMoneyPlansDemo/pages/enter_plan.html?module=TRANSACTION&functionality=SEARCH_TRANSACTION&subfunctionality=navigate";


}
