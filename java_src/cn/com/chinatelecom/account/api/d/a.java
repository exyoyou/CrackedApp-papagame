package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.net.Network;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.kuaishou.weapon.p0.t;
import io.netty.handler.codec.http.HttpHeaders;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f831a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<String, String> f832b = new HashMap<>();

    public static long a(Context context) {
        return c.b(context, "key_difference_time", 0L);
    }

    private static void b(Context context) {
        String strA = d.a();
        cn.com.chinatelecom.account.api.c.g.a aVar = new cn.com.chinatelecom.account.api.c.g.a();
        aVar.a("reqTimestamp");
        aVar.b(strA);
        JSONObject jSONObject = new cn.com.chinatelecom.account.api.c.b(context).a(g.b(), "", 1, aVar.a(), false).f827b;
        if (jSONObject != null) {
            a(context, jSONObject.optLong("msg", -1L));
        }
    }

    public static cn.com.chinatelecom.account.api.c.d a(Context context, HttpURLConnection httpURLConnection, boolean z10) {
        String str;
        if (!z10) {
            return null;
        }
        cn.com.chinatelecom.account.api.c.d dVar = new cn.com.chinatelecom.account.api.c.d();
        try {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            List<String> list = headerFields.get("p");
            if (list != null && list.size() > 0) {
                String str2 = list.get(0);
                CtAuth.info(f831a, "request protocol : " + str2);
                dVar.f798b = false;
            }
            List<String> list2 = headerFields.get(HttpHeaders.Names.SET_COOKIE);
            if (list2 != null && list2.size() > 0) {
                for (int i10 = 0; i10 < list2.size(); i10++) {
                    String str3 = list2.get(0);
                    if (!TextUtils.isEmpty(str3) && str3.contains("gw_auth")) {
                        dVar.f797a = a(str3, "gw_auth");
                        break;
                    }
                }
            }
            List<String> list3 = headerFields.get("Log-Level");
            if (list3 != null && !list3.isEmpty()) {
                for (int i11 = 0; i11 < list3.size(); i11++) {
                    String str4 = list3.get(0);
                    if (!TextUtils.isEmpty(str4)) {
                        f.a(context, str4);
                    }
                }
            }
            List<String> list4 = headerFields.get("p-reset");
            if (list4 != null && !list4.isEmpty()) {
                String str5 = list4.get(0);
                if (!TextUtils.isEmpty(str5)) {
                    a(context, str5);
                }
            }
            List<String> list5 = headerFields.get("p-ikgx");
            if (list5 != null && !list5.isEmpty()) {
                String str6 = list5.get(0);
                if (!TextUtils.isEmpty(str6)) {
                    dVar.f799c = str6;
                    g.f877d = str6;
                }
            }
            List<String> list6 = headerFields.get(t.f74897v);
            if (list6 != null && !list6.isEmpty() && (str = list6.get(0)) != null && (str.equals("1") || str.equals("2"))) {
                String strJ = g.j(context);
                if ((!TextUtils.isEmpty(strJ) && !strJ.equals(str)) || (TextUtils.isEmpty(strJ) && str.equals("1"))) {
                    dVar.f801e = true;
                }
                g.a(context, str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return dVar;
    }

    public static cn.com.chinatelecom.account.api.c.d a(HttpURLConnection httpURLConnection) {
        cn.com.chinatelecom.account.api.c.d dVar = new cn.com.chinatelecom.account.api.c.d();
        try {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            List<String> list = headerFields.get("rdt_allow");
            if (list != null && list.size() > 0) {
                dVar.f800d = list.get(0);
                CtAuth.info(f831a, "request method : " + dVar.f800d);
            }
            List<String> list2 = headerFields.get("p-ikgx");
            if (list2 != null && !list2.isEmpty()) {
                String str = list2.get(0);
                if (!TextUtils.isEmpty(str)) {
                    dVar.f799c = str;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return dVar;
    }

    public static synchronized String a(int i10) {
        return i10 == cn.com.chinatelecom.account.api.a.f730d ? "presdk" : "preauthIfaa";
    }

    private static String a(String str, String str2) {
        try {
            String[] strArrSplit = str.split(";");
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                if (strArrSplit[i10].contains(str2)) {
                    return strArrSplit[i10].split(SimpleComparison.EQUAL_TO_OPERATION)[1];
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    public static JSONObject a(Context context, cn.com.chinatelecom.account.api.c.h hVar, String str, Network network, boolean z10, String str2) {
        JSONObject jSONObject;
        if (hVar == null || (jSONObject = hVar.f827b) == null) {
            return j.b();
        }
        try {
            if (hVar.f826a != -1 && !TextUtils.isEmpty(str)) {
                int iOptInt = jSONObject.optInt("result");
                String strOptString = jSONObject.optString("data");
                if (!TextUtils.isEmpty(strOptString)) {
                    try {
                        String strA = h.a(strOptString, str);
                        if (strA.isEmpty()) {
                            jSONObject.put("result", 80107);
                            jSONObject.put("msg", cn.com.chinatelecom.account.api.a.d.a(j.f899r));
                        } else {
                            JSONObject jSONObject2 = new JSONObject(strA);
                            if (iOptInt == 0) {
                                jSONObject2.put("gwAuth", hVar.f828c);
                            }
                            if (iOptInt == -10020) {
                                jSONObject.put("taskId", str);
                            }
                            jSONObject.put("data", jSONObject2);
                        }
                    } catch (Throwable th) {
                        CtAuth.warn(f831a, "dct", th);
                        jSONObject.put("result", 80107);
                        jSONObject.put("msg", cn.com.chinatelecom.account.api.a.d.a(j.f899r));
                        jSONObject.put("data", (Object) null);
                    }
                }
                if (iOptInt != 30002 || !z10) {
                    if (iOptInt == -10009 || iOptInt == -30001) {
                        long jOptLong = jSONObject.optLong(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, -1L);
                        if (jOptLong == -1) {
                            b(context);
                        } else {
                            a(context, jOptLong);
                        }
                    }
                    return jSONObject;
                }
                JSONObject jSONObject3 = (JSONObject) jSONObject.opt("data");
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("urls");
                if (jSONArrayOptJSONArray != null) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        arrayList.add(jSONArrayOptJSONArray.getString(i10));
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return a(context, arrayList, str, network, str2);
            }
            return jSONObject;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static JSONObject a(Context context, List<String> list, String str, Network network, String str2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                String str3 = list.get(i10);
                if (!TextUtils.isEmpty(str3)) {
                    g.c(context);
                    cn.com.chinatelecom.account.api.c.g.a aVar = new cn.com.chinatelecom.account.api.c.g.a();
                    try {
                        aVar.b(str2);
                        try {
                            aVar.a(network);
                            try {
                                JSONObject jSONObjectA = a(context, new cn.com.chinatelecom.account.api.c.b(context).a(str3, "", 0, aVar.a(), false), str, network, false, str2);
                                if (jSONObjectA != null && jSONObjectA.optInt("result") == 0) {
                                    return jSONObjectA;
                                }
                            } catch (Throwable th) {
                                th = th;
                                th.printStackTrace();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "- redirect 30002 ");
    }

    private static void a(Context context, long j10) {
        if (j10 > 0) {
            c.a(context, "key_difference_time", j10 - System.currentTimeMillis());
        }
    }

    private static void a(Context context, String str) {
        c.a(context, "key_p_rset_v4.5.9", str);
    }
}
