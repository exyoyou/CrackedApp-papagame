package com.byazt.ete;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.byazt.bv.BaseConstants;
import com.join.mgps.activity.posting.PostingActivity_;
import com.tencent.stat.DeviceInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 121})
public class cu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set<String> f13600a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f13601c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static boolean f13602da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Set<String> f13603i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Set<String> f13604n;
    public static final Map<String, String> sl;
    public static final Set<String> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile boolean f13605t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Set<String> f13606x;
    public int tt;
    public static final Set<String> ve = new HashSet();
    public static final Set<String> uj = new CopyOnWriteArraySet();

    static {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        f13604n = copyOnWriteArraySet;
        f13600a = new CopyOnWriteArraySet();
        sp = new CopyOnWriteArraySet();
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        f13606x = copyOnWriteArraySet2;
        f13603i = new CopyOnWriteArraySet();
        f13602da = false;
        sl = new HashMap();
        f13601c = new CopyOnWriteArraySet();
        f13605t = false;
        copyOnWriteArraySet2.addAll(Arrays.asList(".*thefatherofsalmon\\.com.*@3", ".*qallzmx\\.quicklyopen\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*@3"));
        copyOnWriteArraySet.addAll(Arrays.asList("^hap://app", "^hwfastapp://", ".*thefatherofsalmon\\.com.*", ".*qallzmx\\.quicklyopen\\.com.*", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*"));
    }

    public cu(JSONObject jSONObject) {
        this.tt = jSONObject.optInt("block_auto_open");
    }

    public static void tt(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("turn_up_white_list");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                uj.clear();
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i10);
                    if (!TextUtils.isEmpty(strOptString)) {
                        uj.add(strOptString);
                    }
                }
            }
        } catch (Exception unused) {
        }
        try {
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("turn_up_black_list_1");
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                f13604n.clear();
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    String strOptString2 = jSONArrayOptJSONArray2.optString(i11);
                    if (!TextUtils.isEmpty(strOptString2)) {
                        f13604n.add(strOptString2);
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("turn_up_black_list_2");
            if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                f13600a.clear();
                for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                    String strOptString3 = jSONArrayOptJSONArray3.optString(i12);
                    if (!TextUtils.isEmpty(strOptString3)) {
                        f13600a.add(strOptString3);
                    }
                }
            }
        } catch (Exception unused3) {
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject.optJSONArray("url_report_rule_list");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    sp.clear();
                    for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                        String strOptString4 = jSONArrayOptJSONArray4.optString(i13);
                        if (!TextUtils.isEmpty(strOptString4)) {
                            sp.add(strOptString4);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject.optJSONArray("net_url_block_list");
                if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
                    f13606x.clear();
                    for (int i14 = 0; i14 < jSONArrayOptJSONArray5.length(); i14++) {
                        String strOptString5 = jSONArrayOptJSONArray5.optString(i14);
                        if (!TextUtils.isEmpty(strOptString5)) {
                            f13606x.add(strOptString5);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject.optJSONArray("dialog_black_list");
                if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() > 0) {
                    f13603i.clear();
                    for (int i15 = 0; i15 < jSONArrayOptJSONArray6.length(); i15++) {
                        String strOptString6 = jSONArrayOptJSONArray6.optString(i15);
                        if (!TextUtils.isEmpty(strOptString6)) {
                            f13603i.add(strOptString6);
                        }
                    }
                }
            } catch (Exception unused4) {
            }
        }
        f13602da = true;
    }

    public void c(JSONObject jSONObject) {
        try {
            jSONObject.put("block_auto_open", this.tt);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public static void c(com.byazt.it.n nVar) {
        nVar.put("turn_up_white_list", uj);
        nVar.put("turn_up_black_list_1", f13604n);
        nVar.put("turn_up_black_list_2", f13600a);
        nVar.put("url_report_rule_list", sp);
        nVar.put("net_url_block_list", f13606x);
        nVar.put("_turn_up_is_get_list", f13602da);
        nVar.put("dialog_black_list", f13603i);
    }

    public static int c(ic icVar) {
        cu cuVarDp;
        if (icVar == null || (cuVarDp = icVar.dp()) == null) {
            return 0;
        }
        return cuVarDp.tt;
    }

    public static boolean c(WebView webView, AtomicInteger atomicInteger, com.byazt.omf.d dVar, String str, boolean z10, boolean z11) {
        if (!str.startsWith("bytedance") && !str.startsWith("nativeapp") && !str.startsWith("bds")) {
            if (!com.byazt.aas.nb.c(str, atomicInteger) && c(webView, atomicInteger, str, true)) {
                return true;
            }
            if (dVar == null || !TextUtils.isEmpty(tt(str, ve)) || !TextUtils.isEmpty(tt(str, uj))) {
                return false;
            }
            String strTt = tt(str, sp);
            if (!TextUtils.isEmpty(strTt)) {
                tt(dVar.x(), str, strTt);
            }
            String strC = c(str, dVar.n(z11), z10, z11);
            if (!TextUtils.isEmpty(strC) && f13602da) {
                c(dVar.x(), str, strC);
            }
            if (!TextUtils.isEmpty(strC)) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(WebView webView, AtomicInteger atomicInteger, String str, boolean z10) {
        if (TextUtils.isEmpty(str) || webView == null) {
            return false;
        }
        final String[] strArr = {""};
        try {
            final String path = Uri.parse(str).getPath();
            Map<String, String> map = sl;
            if (map.containsKey(path)) {
                return c(atomicInteger, map.get(path), str, webView, z10);
            }
            if (!f13605t) {
                for (String str2 : com.byazt.aas.eo.c("cloud_path_check_res").get("cloud_path_check_res", new HashSet())) {
                    if (!TextUtils.isEmpty(str2)) {
                        String[] strArrSplit = str2.split(",");
                        sl.put(strArrSplit[0], strArrSplit[1]);
                    }
                }
                Map<String, String> map2 = sl;
                if (map2.containsKey(path)) {
                    return c(atomicInteger, map2.get(path), str, webView, z10);
                }
            }
            com.byazt.va.n nVarTt = com.byazt.hy.n.c().tt().tt();
            nVarTt.c(Uri.parse("https://scc.bytedance.com/scc_sdk/url_scan_v4").buildUpon().appendQueryParameter(DeviceInfo.TAG_ANDROID_ID, "1181").appendQueryParameter("device_platform", "android").appendQueryParameter("device_id", com.byazt.aas.z.c()).appendQueryParameter("scc_mode", "raw").appendQueryParameter("scc_from", "App").toString());
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("scene", "common");
            jSONObject.put("url", str);
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, "");
            nVarTt.c(jSONObject);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            nVarTt.c(new com.byazt.mh.c() { // from class: com.byazt.ete.cu.1
                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                    try {
                        strArr[0] = new JSONObject(ttVar.n()).optJSONObject("data").optString(PostingActivity_.LABEL_EXTRA);
                        if (TextUtils.isEmpty(strArr[0])) {
                            return;
                        }
                        if (cu.sl.size() > 1000) {
                            Iterator it2 = cu.sl.entrySet().iterator();
                            for (int i10 = 0; i10 < 200; i10++) {
                                it2.next();
                                it2.remove();
                            }
                        }
                        cu.sl.put(path, strArr[0]);
                        if (!cu.f13605t) {
                            boolean unused = cu.f13605t = true;
                            com.byazt.nr.da.c().postDelayed(new Runnable() { // from class: com.byazt.ete.cu.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    com.byazt.iy.n nVarC = com.byazt.aas.eo.c("cloud_path_check_res");
                                    nVarC.clear();
                                    HashSet hashSet = new HashSet();
                                    for (Map.Entry entry : cu.sl.entrySet()) {
                                        hashSet.add(((String) entry.getKey()) + "," + ((String) entry.getValue()));
                                    }
                                    nVarC.put("cloud_path_check_res", hashSet);
                                    boolean unused2 = cu.f13605t = false;
                                }
                            }, 1800000L);
                        }
                    } catch (Throwable unused2) {
                    }
                    countDownLatch.countDown();
                }

                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, IOException iOException) {
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await();
            return c(atomicInteger, strArr[0], str, webView, z10);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void tt(com.byazt.it.n nVar) {
        Set<String> set = uj;
        set.addAll(nVar.get("turn_up_white_list", set));
        Set<String> set2 = f13604n;
        set2.addAll(nVar.get("turn_up_black_list_1", set2));
        Set<String> set3 = f13600a;
        set3.addAll(nVar.get("turn_up_black_list_2", set3));
        Set<String> set4 = sp;
        set4.addAll(nVar.get("url_report_rule_list", set4));
        Set<String> set5 = f13606x;
        set5.addAll(nVar.get("net_url_block_list", set5));
        f13602da = nVar.get("_turn_up_is_get_list", false);
        Set<String> set6 = f13603i;
        set6.addAll(nVar.get("dialog_black_list", set6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tt(String str, Set<String> set) {
        if (str == null) {
            return null;
        }
        try {
            for (String str2 : set) {
                if (!TextUtils.isEmpty(str2) && Pattern.compile(str2).matcher(str).find()) {
                    return str2;
                }
            }
            return null;
        } catch (Exception e10) {
            com.byazt.nr.m.uj("JumpModel", e10.getMessage());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0046  */
    private static boolean c(AtomicInteger atomicInteger, String str, String str2, WebView webView, boolean z10) {
        byte b10;
        if (webView == null || TextUtils.isEmpty(str) || atomicInteger == null) {
            return false;
        }
        if (atomicInteger.get() == 1) {
            return true;
        }
        switch (str) {
            case "unknown":
                b10 = 1;
                break;
            case "gray":
                b10 = 2;
                break;
            case "black":
                b10 = 0;
                break;
            case "white":
                b10 = 3;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 != 0) {
            return false;
        }
        atomicInteger.set(1);
        com.byazt.aas.n.c(webView.getContext(), (String) null, true, (com.byazt.aas.n.c) null);
        return true;
    }

    public static void tt(final ic icVar, final String str, final String str2) {
        com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.cu.4
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("url", str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(DeviceInfo.TAG_ANDROID_ID, icVar.gu());
                jSONObject2.put("cid", icVar.uj());
                jSONObject2.put("req_id", icVar.qy());
                jSONObject2.put("customer_id", com.byazt.aas.nb.yp(icVar));
                jSONObject.putOpt("extraInfo", jSONObject2.toString());
                jSONObject.putOpt("pattern", str2);
                return com.byazt.qal.tt.tt().c("stats_url_report_rule").x(icVar.w_()).tt(jSONObject.toString());
            }
        }, "stats_url_report_rule");
    }

    public static com.byazt.gqp.i tt() {
        return new com.byazt.gqp.i() { // from class: com.byazt.ete.cu.5
            @Override // com.byazt.gqp.i
            public com.byazt.gqp.m c(com.byazt.gqp.i.c cVar) throws IOException {
                String str;
                com.byazt.gqp.m mVarC = cVar.c(cVar.c());
                String str2 = "";
                final String strC = mVarC.c("csj-location-record", "");
                final String strC2 = mVarC.c("csj-source-from", "");
                final String strC3 = mVarC.c("csj-extra-info", "");
                if (mVarC.ve() == 8848) {
                    final String strN = mVarC.n();
                    com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.cu.5.1
                        @Override // com.byazt.ee.c
                        public com.byazt.qal.c c() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt("url", strN);
                            jSONObject.putOpt("sourceFrom", strC2);
                            jSONObject.putOpt("extraInfo", strC3);
                            return com.byazt.qal.tt.tt().c("stats_net_block_url").tt(jSONObject.toString());
                        }
                    }, "stats_net_block_url");
                }
                int i10 = 0;
                try {
                    String[] strArrC = cu.c(strC);
                    if (strArrC == null || strArrC.length <= 1) {
                        str = "";
                    } else {
                        String str3 = strArrC[0];
                        try {
                            str = strArrC[strArrC.length - 1];
                            str2 = str3;
                        } catch (Exception unused) {
                            str = "";
                            str2 = str3;
                        }
                    }
                    try {
                        i10 = Integer.parseInt(strC2);
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    str = "";
                }
                final String str4 = str2;
                final String str5 = str;
                if (TextUtils.isEmpty(strC) || i10 == 0 || !TextUtils.isEmpty(cu.tt(str4, cu.uj))) {
                    return mVarC;
                }
                com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.cu.5.2
                    @Override // com.byazt.ee.c
                    public com.byazt.qal.c c() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.putOpt("url", strC);
                        jSONObject.putOpt("sourceFrom", strC2);
                        jSONObject.putOpt("sourceUrl", str4);
                        jSONObject.putOpt("destUrl", str5);
                        jSONObject.putOpt("extraInfo", strC3);
                        return com.byazt.qal.tt.tt().c("stats_net_locations_url").tt(jSONObject.toString());
                    }
                }, "stats_net_locations_url");
                return mVarC;
            }
        };
    }

    public static boolean c(WebView webView, AtomicInteger atomicInteger, com.byazt.omf.d dVar, WebResourceRequest webResourceRequest, boolean z10, boolean z11) {
        Uri url;
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) {
            return false;
        }
        return c(webView, atomicInteger, dVar, url.toString(), z10, z11);
    }

    public static boolean c(final com.byazt.omf.d dVar, final int i10, final String str) {
        final String strTt = tt(str, f13603i);
        boolean z10 = (f13602da && TextUtils.isEmpty(strTt)) ? false : true;
        final boolean z11 = z10;
        com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.cu.2
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("url", str);
                    jSONObject.putOpt("type", Integer.valueOf(i10));
                    jSONObject.putOpt("is_block", Boolean.valueOf(z11));
                    jSONObject.putOpt("is_get_setting", Boolean.valueOf(cu.f13602da));
                    jSONObject.putOpt("pattern", strTt);
                    jSONObject.putOpt("customer_id", com.byazt.aas.nb.yp(dVar.x()));
                    return com.byazt.qal.tt.tt().c("stats_dialog_report_rule").x(dVar.x().w_()).tt(jSONObject.toString());
                } catch (Throwable unused) {
                    return com.byazt.qal.tt.tt();
                }
            }
        }, "stats_dialog_report_rule");
        return z10;
    }

    private static String c(String str, int i10, boolean z10, boolean z11) {
        boolean z12 = (!z11 || str.startsWith("http://") || str.startsWith("https://")) ? false : true;
        if (i10 == 1) {
            if (f13602da) {
                return tt(str, f13600a);
            }
            return null;
        }
        if (i10 == 2) {
            if (!f13602da) {
                if (z10) {
                    return "local://no-setting";
                }
                return null;
            }
            if (z12) {
                return "local://short-internal";
            }
            String strTt = tt(str, f13604n);
            if (!TextUtils.isEmpty(strTt)) {
                return strTt;
            }
            String strTt2 = tt(str, f13600a);
            if (TextUtils.isEmpty(strTt2)) {
                return null;
            }
            return strTt2;
        }
        if (i10 != 3) {
            return null;
        }
        if (z10 || !f13602da) {
            return "local://preload-setting:" + f13602da;
        }
        if (z12) {
            return "local://short-internal";
        }
        String strTt3 = tt(str, f13604n);
        if (!TextUtils.isEmpty(strTt3)) {
            return strTt3;
        }
        String strTt4 = tt(str, f13600a);
        if (TextUtils.isEmpty(strTt4)) {
            return null;
        }
        return strTt4;
    }

    public static void c(final ic icVar, final String str, final String str2) {
        com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.cu.3
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("url", str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(DeviceInfo.TAG_ANDROID_ID, icVar.gu());
                jSONObject2.put("cid", icVar.uj());
                jSONObject2.put("req_id", icVar.qy());
                jSONObject2.put("customer_id", com.byazt.aas.nb.yp(icVar));
                jSONObject.putOpt("extraInfo", jSONObject2.toString());
                jSONObject.putOpt("pattern", str2);
                return com.byazt.qal.tt.tt().c("stats_block_report").x(icVar.w_()).tt(jSONObject.toString());
            }
        }, "stats_block_report");
    }

    public static Set<String> c() {
        return f13606x;
    }

    public static String[] c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.substring(1, str.length() - 1).split(",");
    }
}
