package com.heepay.plugin.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Xml;
import com.heepay.plugin.domain.g;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.bm;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.PublicKey;
import java.util.Date;
import javax.net.ssl.HttpsURLConnection;
import net.lingala.zip4j.util.e;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f34161a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final String f34162d = "<?x*m*l ve*r*si*on=\"1.0\" enc*o*d*i*n*g=\"u*tf*-*8\"?>".replaceAll("\\*", "");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f34163e = "<so*a*p1*2:En*vel*ope ".replaceAll("\\*", "") + "xm*ln*s:xs*i=\"h*tt*p:/*/w*w*w.w*3.o*rg/20*01/X*MLS*che*ma-i*nst*ance\" ".replaceAll("\\*", "") + "x*ml*ns:xs*d=\"ht*tp:*/*/w*w*w.w*3.o*r*g/2*001/XM*LSc*hema\" ".replaceAll("\\*", "") + "xm*ln*s:s*oa*p1*2=\"h*tt*p*:*/*/w*ww.w*3.o*rg/2*003/05/so*ap-envelope\">".replaceAll("\\*", "");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f34164f = "</so*ap12:En*velope>".replaceAll("\\*", "");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final String f34165g = "<soa*p12:Bo*dy>".replaceAll("\\*", "");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f34166h = "</soap*12:B*ody>".replaceAll("\\*", "");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f34167b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f34168c = e.F0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f34169i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f34170j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected PublicKey f34171k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected String f34172l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f34173m;

    protected a() {
    }

    public static int a(JSONObject jSONObject, String str, int i10) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getInt(str);
            }
        } catch (Exception unused) {
        }
        return i10;
    }

    protected abstract String a(String str, String str2, String str3, boolean z10);

    protected g b(String str, String str2, String str3, boolean z10) {
        return c(str, str2, str3, z10);
    }

    @SuppressLint({"TrulyRandom"})
    protected g c(String str, String str2, String str3, boolean z10) {
        int iIndexOf;
        int i10;
        int iIndexOf2;
        com.heepay.plugin.c.c.b("RunWebService", "param is: " + str3 + ", timestamp is:" + str2);
        int iIndexOf3 = str.indexOf(46);
        String strA = a(iIndexOf3 >= 0 ? str.substring(iIndexOf3 + 1) : str, str3, str2, z10);
        String strA2 = a(str);
        if (strA2 == null || strA2.length() == 0) {
            return new g(true, "", "没有实现的方法");
        }
        g gVar = new g();
        gVar.f34346b = false;
        com.heepay.plugin.c.c.b("RunWebService", "Sent message to " + strA2 + " is: " + strA);
        try {
            URL url = new URL(strA2);
            byte[] bytes = strA.getBytes("UTF-8");
            HttpURLConnection httpURLConnection = strA2.startsWith("h*t*t*p*s*:*".replaceAll("\\*", "")) ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "a*p*p*l*i*c*a*tio*n/so*ap*+xm*l; cha*rse*t=*ut*f-*8".replaceAll("\\*", ""));
            String str4 = f34161a;
            if (str4 != null && str4.length() > 0) {
                com.heepay.plugin.c.c.b("RunWebService", " AspNetSessionId != null, AspNetSessionId=" + f34161a);
                httpURLConnection.setRequestProperty("Cookie", "ASP.NET_SessionId=" + f34161a);
            }
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(RtcCountlyConstants.RTC_LOAD_LIBRARY);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bytes);
            outputStream.flush();
            outputStream.close();
            com.heepay.plugin.c.d.a("----->", str + " begin to get input stream from " + strA2);
            com.heepay.plugin.c.c.b("RunWebService", str + " begin to get input stream from " + strA2);
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            String headerField = httpURLConnection.getHeaderField(HttpHeaders.Names.SET_COOKIE);
            com.heepay.plugin.c.c.b("------ResponseCode", httpURLConnection.getResponseCode() + "--");
            if (headerField != null && (iIndexOf = headerField.indexOf("ASP.NET_SessionId")) >= 0 && (iIndexOf2 = headerField.indexOf(61, (i10 = iIndexOf + 17))) > 0) {
                int iIndexOf4 = headerField.indexOf(59, i10);
                f34161a = iIndexOf4 > iIndexOf2 ? headerField.substring(iIndexOf2 + 1, iIndexOf4).trim() : headerField.substring(iIndexOf2 + 1).trim();
            }
            a(str, inputStreamReader, gVar);
            a(str, str2, gVar);
        } catch (Exception e10) {
            if ((e10 instanceof SocketTimeoutException) || (e10 instanceof UnknownHostException) || (e10 instanceof ConnectException)) {
                gVar.f34345a = e10;
            }
            gVar.f34346b = true;
            gVar.f34347c = "连接服务器出错，原因：" + e10.getMessage();
            com.heepay.plugin.c.b.a(e10, "RunWebService");
        }
        return gVar;
    }

    public String a() {
        return this.f34167b;
    }

    protected String b() {
        return Long.toString(System.currentTimeMillis());
    }

    protected String c(String str) {
        return str.replaceAll(x.a.f97576d, "&amp;").replaceAll(SimpleComparison.LESS_THAN_OPERATION, "&lt;").replaceAll(SimpleComparison.GREATER_THAN_OPERATION, "&gt;");
    }

    public String a(String str) {
        int iIndexOf = str.indexOf(46);
        if (iIndexOf < 0) {
            return "";
        }
        return a() + e.F0 + str.substring(0, iIndexOf) + ".asmx";
    }

    protected String b(String str) {
        return d.a(str + new Date().toLocaleString() + "D*C*5*11*D*B99*9BC*48*4F*89*BC*565A*A0E*040*98".replaceAll("\\*", "")).substring(0, 24);
    }

    protected String a(PublicKey publicKey, String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("40*896*789*8D*DC*4*5*9*5AC*5*BC*33**2D*4E*C*A***0*A0".replaceAll("\\*", ""));
            sb2.append(str.length() > 32 ? str.substring(0, 32) : str);
            String strB = b(sb2.toString());
            String strA = d.a(d.a(publicKey, strB));
            String strA2 = d.a(d.a(strB.getBytes(), strB.substring(0, 8).getBytes(), str.getBytes()));
            com.heepay.plugin.c.c.b("WebService", "RsaEncryptParam(" + str + ")=Z" + strA + bm.aH + strA2);
            return "Z" + strA + bm.aH + strA2;
        } catch (Exception e10) {
            com.heepay.plugin.c.b.a(e10, "EncryptParam");
            return "";
        }
    }

    public static String a(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void a(int i10) {
        this.f34173m = i10;
    }

    private void a(String str, InputStreamReader inputStreamReader, g gVar) throws XmlPullParserException, IOException {
        StringBuffer stringBuffer = new StringBuffer();
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStreamReader);
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (eventType == 2) {
                String name = xmlPullParserNewPullParser.getName();
                if (name.equals("HasError")) {
                    gVar.f34346b = !xmlPullParserNewPullParser.nextText().equalsIgnoreCase("false");
                } else if (name.equals("Message")) {
                    gVar.f34347c = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ErrorCode")) {
                    gVar.f34348d = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ReturnValue")) {
                    gVar.f34349e = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ReturnStatus")) {
                    gVar.f34358n = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                } else if (name.equals("ExtValue1")) {
                    gVar.f34350f = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue2")) {
                    gVar.f34351g = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue3")) {
                    gVar.f34352h = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue4")) {
                    gVar.f34353i = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue5")) {
                    gVar.f34354j = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue6")) {
                    gVar.f34355k = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue7")) {
                    gVar.f34356l = xmlPullParserNewPullParser.nextText();
                } else if (name.equals("ExtValue8")) {
                    gVar.f34357m = xmlPullParserNewPullParser.nextText();
                }
            } else if (eventType == 3) {
            }
        }
        if (stringBuffer.length() > 0) {
            com.heepay.plugin.c.c.b("RunWebService", str + " recv message: " + stringBuffer.toString());
        }
    }

    protected void a(String str, String str2, g gVar) {
    }

    public boolean a(Context context) {
        return true;
    }
}
