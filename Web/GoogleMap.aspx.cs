using Subgurim.Controles;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GoogleMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Street = "IUH";
        string City = "TP.HCM";
        string Country = "Việt Nam";
        string fulladdress = string.Format("{0}.{1}.{2}", Street, City, Country);
        string skey = ConfigurationManager.AppSettings["googlemaps.subgurim.net"];
        GeoCode geocode;
        geocode = GMap1.getGeoCodeRequest(fulladdress);
        var glatlng = new Subgurim.Controles.GLatLng(geocode.Placemark.coordinates.lat, geocode.Placemark.coordinates.lng);
        GMap1.setCenter(glatlng, 16, Subgurim.Controles.GMapType.GTypes.Normal);
        var oMarker = new Subgurim.Controles.GMarker(glatlng);
        GMap1.addGMarker(oMarker);
        GMap1.enableHookMouseWheelToZoom = true;
        GMap1.enableGoogleBar = true;
        GMap1.enableGTrafficOverlay = true;
        GMap1.enableRotation = true;
    }
   
}