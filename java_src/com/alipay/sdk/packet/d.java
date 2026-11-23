package com.alipay.sdk.packet;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.j;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.windmill.sdk.WMConstants;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7179c = "msp-gzip";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7180d = "Msp-Param";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f7181e = "Operation-Type";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f7182f = "content-type";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7183g = "Version";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7184h = "AppId";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f7185i = "des-mode";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f7186j = "namespace";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7187k = "api_name";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f7188l = "api_version";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f7189m = "data";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f7190n = "params";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f7191o = "public_key";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f7192p = "device";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f7193q = "action";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f7194r = "type";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f7195s = "method";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static com.alipay.sdk.net.a f7196t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f7197a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f7198b = true;

    private b c(Context context, String str, String str2) throws Throwable {
        return d(context, str, str2, true);
    }

    protected static String f(HashMap<String, String> map, HashMap<String, String> map2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
        }
        if (map2 != null) {
            JSONObject jSONObject3 = new JSONObject();
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                jSONObject3.put(entry2.getKey(), entry2.getValue());
            }
            jSONObject2.put("params", jSONObject3);
        }
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }

    private static String g(HttpResponse httpResponse, String str) {
        Header[] allHeaders;
        String name;
        if (httpResponse == null || str == null || (allHeaders = httpResponse.getAllHeaders()) == null || allHeaders.length <= 0) {
            return null;
        }
        for (Header header : allHeaders) {
            if (header != null && (name = header.getName()) != null && name.equalsIgnoreCase(str)) {
                return header.getValue();
            }
        }
        return null;
    }

    public static JSONObject j(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", str);
        jSONObject2.put(f7195s, str2);
        jSONObject.put("action", jSONObject2);
        return jSONObject;
    }

    private static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("data");
            if (!jSONObject.has("params")) {
                return false;
            }
            String strOptString = jSONObject.getJSONObject("params").optString(f7191o, null);
            if (TextUtils.isEmpty(strOptString)) {
                return false;
            }
            x.b.b();
            com.alipay.sdk.data.c.a().e(strOptString);
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    private static boolean l(HttpResponse httpResponse) {
        Header[] allHeaders;
        String name;
        String value = null;
        if (httpResponse != null && (allHeaders = httpResponse.getAllHeaders()) != null && allHeaders.length > 0) {
            for (Header header : allHeaders) {
                if (header != null && (name = header.getName()) != null && name.equalsIgnoreCase(f7179c)) {
                    value = header.getValue();
                    break;
                }
            }
        }
        return Boolean.valueOf(value).booleanValue();
    }

    private static com.alipay.sdk.net.a m(Context context, String str) {
        com.alipay.sdk.net.a aVar = f7196t;
        if (aVar == null) {
            f7196t = new com.alipay.sdk.net.a(context, str);
        } else if (!TextUtils.equals(str, aVar.f7171b)) {
            f7196t.f7171b = str;
        }
        return f7196t;
    }

    private static byte[] o(HttpResponse httpResponse) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr = new byte[1024];
        InputStream inputStream = null;
        try {
            InputStream content = httpResponse.getEntity().getContent();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int i10 = content.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i10);
                    } catch (Throwable th) {
                        th = th;
                        inputStream = content;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused) {
                            }
                        }
                        if (byteArrayOutputStream == null) {
                            throw th;
                        }
                        try {
                            byteArrayOutputStream.close();
                            throw th;
                        } catch (Exception unused2) {
                            throw th;
                        }
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    content.close();
                } catch (Exception unused3) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused4) {
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public final b a(Context context) throws Throwable {
        return d(context, "", u.a.f97399a, true);
    }

    public b b(Context context, String str) throws Throwable {
        return d(context, str, u.a.f97399a, true);
    }

    protected final b d(Context context, String str, String str2, boolean z10) throws Throwable {
        e eVar = new e(this.f7198b);
        c cVarC = eVar.c(new b(p(), e(str, i())), this.f7197a);
        com.alipay.sdk.net.a aVar = f7196t;
        if (aVar == null) {
            f7196t = new com.alipay.sdk.net.a(context, str2);
        } else if (!TextUtils.equals(str2, aVar.f7171b)) {
            f7196t.f7171b = str2;
        }
        HttpResponse httpResponseB = f7196t.b(cVarC.f7178b, h(cVarC.f7177a, str));
        b bVarB = eVar.b(new c(l(httpResponseB), o(httpResponseB)));
        return (bVarB != null && k(bVarB.f7175a) && z10) ? d(context, str, str2, false) : bVarB;
    }

    protected String e(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        String strB;
        x.b bVarB = x.b.b();
        y.b bVarA = y.b.a();
        JSONObject jSONObjectA = com.alipay.sdk.util.c.a(new JSONObject(), jSONObject);
        try {
            jSONObjectA.put(u.b.f97417c, bVarA.f97669a);
            com.alipay.sdk.data.c cVarA = com.alipay.sdk.data.c.a();
            Context context = x.b.b().f97590a;
            com.alipay.sdk.util.b bVarA2 = com.alipay.sdk.util.b.a(context);
            if (TextUtils.isEmpty(cVarA.f7166a)) {
                String strD = j.d();
                jSONObject3 = jSONObjectA;
                try {
                    String strK = j.k();
                    String strQ = j.q(context);
                    String str2 = u.a.f97399a;
                    cVarA.f7166a = "Msp/15.0.8 (" + strD + ";" + strK + ";" + strQ + ";" + str2.substring(0, str2.indexOf("://")) + ";" + j.s(context) + ";" + Float.toString(new TextView(context).getTextSize());
                } catch (Throwable unused) {
                    jSONObject2 = jSONObject3;
                }
            } else {
                jSONObject3 = jSONObjectA;
            }
            String strA = com.alipay.sdk.util.b.d(context).a();
            String strB2 = bVarA2.b();
            String strE = bVarA2.e();
            Context context2 = x.b.b().f97590a;
            SharedPreferences sharedPreferences = context2.getSharedPreferences("virtualImeiAndImsi", 0);
            String string = sharedPreferences.getString("virtual_imsi", null);
            if (TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(y.b.a().f97669a)) {
                    String strE2 = x.b.b().e();
                    strB = TextUtils.isEmpty(strE2) ? com.alipay.sdk.data.c.f() : strE2.substring(3, 18);
                } else {
                    strB = com.alipay.sdk.util.b.a(context2).b();
                }
                sharedPreferences.edit().putString("virtual_imsi", strB).commit();
            } else {
                strE = strE;
                strB = string;
            }
            Context context3 = x.b.b().f97590a;
            SharedPreferences sharedPreferences2 = context3.getSharedPreferences("virtualImeiAndImsi", 0);
            String string2 = sharedPreferences2.getString("virtual_imei", null);
            if (TextUtils.isEmpty(string2)) {
                string2 = TextUtils.isEmpty(y.b.a().f97669a) ? com.alipay.sdk.data.c.f() : com.alipay.sdk.util.b.a(context3).e();
                sharedPreferences2.edit().putString("virtual_imei", string2).commit();
            }
            cVarA.f7168c = bVarA.f97670b;
            String strReplace = Build.MANUFACTURER.replace(";", " ");
            String strReplace2 = Build.MODEL.replace(";", " ");
            boolean zD = x.b.d();
            String strG = bVarA2.g();
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
            String ssid = connectionInfo != null ? connectionInfo.getSSID() : WMConstants.TIMER_STAGE_NONE;
            WifiInfo connectionInfo2 = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
            String bssid = connectionInfo2 != null ? connectionInfo2.getBSSID() : com.sigmob.sdk.archives.tar.e.V;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cVarA.f7166a);
            sb2.append(";");
            sb2.append(strA);
            sb2.append(";");
            sb2.append("-1;-1");
            sb2.append(";");
            sb2.append("1");
            sb2.append(";");
            sb2.append(strB2);
            sb2.append(";");
            sb2.append(strE);
            sb2.append(";");
            sb2.append(cVarA.f7168c);
            sb2.append(";");
            sb2.append(strReplace);
            sb2.append(";");
            sb2.append(strReplace2);
            sb2.append(";");
            sb2.append(zD);
            sb2.append(";");
            sb2.append(strG);
            sb2.append(";-1;-1;");
            sb2.append(cVarA.f7167b);
            sb2.append(";");
            sb2.append(strB);
            sb2.append(";");
            sb2.append(string2);
            sb2.append(";");
            sb2.append(ssid);
            sb2.append(";");
            sb2.append(bssid);
            HashMap map = new HashMap();
            map.put(u.b.f97417c, bVarA.f97669a);
            map.put(u.b.f97421g, x.b.b().e());
            String strC = com.alipay.sdk.data.c.c(context, map);
            if (!TextUtils.isEmpty(strC)) {
                sb2.append(";");
                sb2.append(strC);
            }
            sb2.append(")");
            jSONObject2 = jSONObject3;
            try {
                jSONObject2.put(u.b.f97416b, sb2.toString());
                jSONObject2.put(u.b.f97419e, j.l(bVarB.f97590a));
                jSONObject2.put(u.b.f97420f, j.h(bVarB.f97590a));
                jSONObject2.put(u.b.f97418d, str);
                jSONObject2.put(u.b.f97422h, u.a.f97401c);
                jSONObject2.put(u.b.f97421g, bVarB.e());
                jSONObject2.put(u.b.f97424j, bVarA.f97670b);
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            jSONObject2 = jSONObjectA;
        }
        return jSONObject2.toString();
    }

    protected List<Header> h(boolean z10, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(f7179c, String.valueOf(z10)));
        arrayList.add(new BasicHeader(f7181e, "alipay.msp.cashier.dispatch.bytes"));
        arrayList.add(new BasicHeader(f7182f, "application/octet-stream"));
        arrayList.add(new BasicHeader(f7183g, "2.0"));
        arrayList.add(new BasicHeader(f7184h, "TAOBAO"));
        arrayList.add(new BasicHeader(f7180d, a.a(str)));
        arrayList.add(new BasicHeader(f7185i, "CBC"));
        return arrayList;
    }

    protected abstract JSONObject i() throws JSONException;

    protected String n() {
        return "4.9.0";
    }

    protected String p() throws JSONException {
        HashMap map = new HashMap();
        map.put("device", Build.MODEL);
        map.put("namespace", "com.alipay.mobilecashier");
        map.put(f7187k, "com.alipay.mcpay");
        map.put(f7188l, n());
        return f(map, new HashMap());
    }
}
