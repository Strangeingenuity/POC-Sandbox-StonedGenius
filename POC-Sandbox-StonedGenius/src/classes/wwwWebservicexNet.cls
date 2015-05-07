//Generated by wsdl2apex
//Generated by Tyaga Pati for Geo Look up- http://www.webservicex.net/geoipservice.asmx?op=GetGeoIP
// there is a method to do http://www.webservicex.net/geoipservice.asmx?op=GetGeoIPContext as well.
//all details of this available at http://www.webservicex.net/geoipservice.asmx?

public class wwwWebservicexNet {
    public class GeoIP {
        public Integer ReturnCode;
        public String IP;
        public String ReturnCodeDetails;
        public String CountryName;
        public String CountryCode;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','http://www.webservicex.net/',null,'1','1','false'};
        private String[] IP_type_info = new String[]{'IP','http://www.webservicex.net/',null,'0','1','false'};
        private String[] ReturnCodeDetails_type_info = new String[]{'ReturnCodeDetails','http://www.webservicex.net/',null,'0','1','false'};
        private String[] CountryName_type_info = new String[]{'CountryName','http://www.webservicex.net/',null,'0','1','false'};
        private String[] CountryCode_type_info = new String[]{'CountryCode','http://www.webservicex.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webservicex.net/','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','IP','ReturnCodeDetails','CountryName','CountryCode'};
    }
    public class GetGeoIPContextResponse_element {
        public wwwWebservicexNet.GeoIP GetGeoIPContextResult;
        private String[] GetGeoIPContextResult_type_info = new String[]{'GetGeoIPContextResult','http://www.webservicex.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webservicex.net/','true','false'};
        private String[] field_order_type_info = new String[]{'GetGeoIPContextResult'};
    }
    public class GetGeoIPResponse_element {
        public wwwWebservicexNet.GeoIP GetGeoIPResult;
        private String[] GetGeoIPResult_type_info = new String[]{'GetGeoIPResult','http://www.webservicex.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webservicex.net/','true','false'};
        private String[] field_order_type_info = new String[]{'GetGeoIPResult'};
    }
    public class GetGeoIPContext_element {
        private String[] apex_schema_type_info = new String[]{'http://www.webservicex.net/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class GetGeoIP_element {
        public String IPAddress;
        private String[] IPAddress_type_info = new String[]{'IPAddress','http://www.webservicex.net/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webservicex.net/','true','false'};
        private String[] field_order_type_info = new String[]{'IPAddress'};
    }
    public class GeoIPServiceSoap {
        public String endpoint_x = 'http://www.webservicex.net/geoipservice.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.webservicex.net/', 'wwwWebservicexNet'};
        public wwwWebservicexNet.GeoIP GetGeoIP(String IPAddress) {
            wwwWebservicexNet.GetGeoIP_element request_x = new wwwWebservicexNet.GetGeoIP_element();
            request_x.IPAddress = IPAddress;
            wwwWebservicexNet.GetGeoIPResponse_element response_x;
            Map<String, wwwWebservicexNet.GetGeoIPResponse_element> response_map_x = new Map<String, wwwWebservicexNet.GetGeoIPResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.webservicex.net/GetGeoIP',
              'http://www.webservicex.net/',
              'GetGeoIP',
              'http://www.webservicex.net/',
              'GetGeoIPResponse',
              'wwwWebservicexNet.GetGeoIPResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetGeoIPResult;
        }
        public wwwWebservicexNet.GeoIP GetGeoIPContext() {
            wwwWebservicexNet.GetGeoIPContext_element request_x = new wwwWebservicexNet.GetGeoIPContext_element();
            wwwWebservicexNet.GetGeoIPContextResponse_element response_x;
            Map<String, wwwWebservicexNet.GetGeoIPContextResponse_element> response_map_x = new Map<String, wwwWebservicexNet.GetGeoIPContextResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.webservicex.net/GetGeoIPContext',
              'http://www.webservicex.net/',
              'GetGeoIPContext',
              'http://www.webservicex.net/',
              'GetGeoIPContextResponse',
              'wwwWebservicexNet.GetGeoIPContextResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetGeoIPContextResult;
        }
    }
}