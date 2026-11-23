package com.ta.utdid2.aid;

import android.content.Context;
import android.text.TextUtils;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.f;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82867c = "com.ta.utdid2.aid.b";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f82868d = "http://hydra.alibaba.com/";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f82869e = "/get_aid/";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f82870f = "auth[token]=";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f82871g = "&type=";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f82872h = "&id=";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f82873i = "&aid=";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f82874j = "data";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f82875k = "aid";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f82876l = "action";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f82877m = "isError";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f82878n = "status";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f82879o = "utdid";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f82880p = "new";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f82881q = "changed";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f82882r = "unchanged";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f82883s = "true";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f82884t = "false";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f82885u = "200";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f82886v = "404";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f82887w = "401";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f82888x = 1000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f82889y = 3000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static b f82890z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f82891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f82892b = new Object();

    public b(Context context) {
        this.f82891a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (!jSONObject2.has("action") || !jSONObject2.has("aid")) {
                    return str2;
                }
                String string = jSONObject2.getString("action");
                return (string.equalsIgnoreCase(f82880p) || string.equalsIgnoreCase(f82881q)) ? jSONObject2.getString("aid") : str2;
            }
            if (!jSONObject.has(f82877m) || !jSONObject.has("status")) {
                return str2;
            }
            String string2 = jSONObject.getString(f82877m);
            String string3 = jSONObject.getString("status");
            if (!string2.equalsIgnoreCase(f82883s)) {
                return str2;
            }
            if (!string3.equalsIgnoreCase("404") && !string3.equalsIgnoreCase("401")) {
                return str2;
            }
            if (d.f82932b) {
                new StringBuilder("remove the AID, status:").append(string3);
            }
            return "";
        } catch (JSONException e10) {
            e10.toString();
            return str2;
        } catch (Exception e11) {
            e11.toString();
            return str2;
        }
    }

    public static synchronized b f(Context context) {
        if (f82890z == null) {
            f82890z = new b(context);
        }
        return f82890z;
    }

    private static String g(String str, String str2, String str3, String str4) {
        StringBuilder sb2 = new StringBuilder();
        try {
            str3 = URLEncoder.encode(str3, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        sb2.append(f82868d);
        sb2.append(str);
        sb2.append("/get_aid/?auth[token]=");
        sb2.append(str2);
        sb2.append("&type=utdid&id=");
        sb2.append(str3);
        sb2.append(f82873i);
        sb2.append(str4);
        return sb2.toString();
    }

    public String h(String str, String str2, String str3, String str4) {
        String strG = g(str, str2, str3, str4);
        int i10 = f.g(this.f82891a) ? 3000 : 1000;
        if (d.f82932b) {
            StringBuilder sb2 = new StringBuilder("url:");
            sb2.append(strG);
            sb2.append("; timeout:");
            sb2.append(i10);
        }
        a aVar = new a(new HttpPost(strG));
        aVar.start();
        try {
            synchronized (this.f82892b) {
                this.f82892b.wait(i10);
            }
        } catch (Exception e10) {
            e10.toString();
        }
        String strA = aVar.a();
        if (d.f82932b) {
            new StringBuilder("mLine:").append(strA);
        }
        return e(strA, str4);
    }

    public void i(String str, String str2, String str3, String str4, e8.a aVar) {
        String strG = g(str, str2, str3, str4);
        if (d.f82932b) {
            StringBuilder sb2 = new StringBuilder("url:");
            sb2.append(strG);
            sb2.append("; len:");
            sb2.append(strG.length());
        }
        new a(new HttpPost(strG), aVar, str4, str, str2).start();
    }

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        HttpPost f82893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f82894c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e8.a f82895d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f82896e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f82897f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f82898g;

        public a(HttpPost httpPost) {
            this.f82894c = "";
            this.f82898g = "";
            this.f82893b = httpPost;
        }

        public String a() {
            return this.f82894c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:65:0x005b, code lost:
        
            r0 = com.ta.utdid2.aid.b.f82867c;
            r0.toString();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.aid.b.a.run():void");
        }

        public a(HttpPost httpPost, e8.a aVar, String str, String str2, String str3) {
            this.f82894c = "";
            this.f82893b = httpPost;
            this.f82895d = aVar;
            this.f82896e = str;
            this.f82897f = str2;
            this.f82898g = str3;
        }
    }
}
