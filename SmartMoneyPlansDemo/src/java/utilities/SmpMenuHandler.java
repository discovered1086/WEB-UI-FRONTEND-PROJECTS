/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import utilities.ApplicationConstants;

import java.util.*;

/**
 *
 * @author Kingshuk
 */
public class SmpMenuHandler {

    public static List getMenuList(String module) {
        List menuList = new LinkedList();
        if (ApplicationConstants.MODULE_ESTIMATE.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_ESTIMATE_URL, "Add an estimate", "ribbon"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Search an estimate", "ribbon"));
        } else if (ApplicationConstants.MODULE_PURCHASE.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_PURCHASE_PLAN_URL, "Add Purchase Plan", "ribbon"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Search Purchase Plan", "ribbon"));
        } else if (ApplicationConstants.MODULE_CATEGORY.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_ESTIMATE_URL, "Add Category", "leftnav"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Manage Category", "leftnav"));
        } else if (ApplicationConstants.MODULE_PROFILE.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_ESTIMATE_URL, "Update account", "leftnav"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Change password", "leftnav"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Close account", "leftnav"));
        } else if (ApplicationConstants.MODULE_ACCOUNTS.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_ESTIMATE_URL, "Add an account", "ribbon"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Search an account", "ribbon"));
            //menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Close account", "ribbon"));
        } else if (ApplicationConstants.MODULE_REPORTS.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_ESTIMATE_URL, "Report request", "ribbon"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_ESTIMATE_URL, "Reports inbox", "ribbon"));
        } else if (ApplicationConstants.MODULE_TRANSACTION.equals(module)) {
            menuList.add(new MenuCreator(ApplicationConstants.ADD_TRANSACTION_URL, "Add a transaction", "ribbon"));
            menuList.add(new MenuCreator(ApplicationConstants.SEARCH_TRANSACTION_URL, "Search transaction", "ribbon"));
        }

        return menuList;
    }
}
