/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilities;

/**
 *
 * @author Kingshuk
 */
public class MenuCreator {

private String urlname;
private String linkname;
private String linktype;


    public MenuCreator(String urlname, String linkname, String linktype) {
        this.urlname = urlname;
        this.linkname = linkname;
        this.linktype = linktype;
    }

   

    
    public String getLinkname() {
        return linkname;
    }

    public void setLinkname(String linkname) {
        this.linkname = linkname;
    }

    public String getLinktype() {
        return linktype;
    }

    public void setLinktype(String linktype) {
        this.linktype = linktype;
    }

    public String getUrlname() {
        return urlname;
    }

    public void setUrlname(String urlname) {
        this.urlname = urlname;
    }

   

   
}
