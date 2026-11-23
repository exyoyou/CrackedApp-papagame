package com.byazt.hu;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.ar.AdDownloadController;
import com.byazt.bm.JumpKllkActivity;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.m;
import com.byazt.ou.DownloadMarketInterceptor;
import com.byazt.ou.my;
import com.byazt.su.DownloadController;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.sigmob.sdk.base.mta.PointCategory;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f15118c = "x";

    private static void a(final Context context, final com.byazt.nn.n nVar, final String str) {
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.hu.x.6
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObjectI = com.byazt.gq.t.i();
                final JSONObject jSONObject = new JSONObject();
                try {
                    String strOptString = jSONObjectI.optString("s");
                    String strC = com.byazt.i.ve.c(jSONObjectI.optString("bw"), strOptString);
                    String strC2 = com.byazt.i.ve.c(jSONObjectI.optString("bx"), strOptString);
                    String strC3 = com.byazt.i.ve.c(jSONObjectI.optString("by"), strOptString);
                    Uri.Builder builder = new Uri.Builder();
                    builder.scheme("https").authority(strC).appendPath(strC2).appendQueryParameter(strC3, str);
                    com.byazt.gq.t.uj().c("GET", builder.build().toString(), null, new my() { // from class: com.byazt.hu.x.6.1
                        /* JADX WARN: Code duplicated, block: B:9:0x0028  */
                        @Override // com.byazt.ou.my
                        public void c(String str2) {
                            boolean z10;
                            if (TextUtils.isEmpty(str2)) {
                                z10 = false;
                            } else {
                                String strVe = x.ve(str2);
                                if (TextUtils.isEmpty(strVe)) {
                                    z10 = false;
                                } else {
                                    String strUj = x.uj(strVe);
                                    if (TextUtils.isEmpty(strUj)) {
                                        z10 = false;
                                    } else {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        x.tt(context, nVar, str, strUj);
                                        z10 = true;
                                    }
                                }
                            }
                            if (z10) {
                                return;
                            }
                            com.byazt.us.c.c(x.c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
                            x.tt(nVar, jSONObject, 10, 9, BaseConstants.MARKET_PREFIX + str);
                        }

                        @Override // com.byazt.ou.my
                        public void c(Throwable th) {
                            com.byazt.us.c.c(x.c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
                            u.c(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                            x.tt(nVar, jSONObject, 11, 9, BaseConstants.MARKET_PREFIX + str);
                        }
                    });
                } catch (Exception e10) {
                    m.c(e10);
                    x.tt(nVar, jSONObject, 4, 9, BaseConstants.MARKET_PREFIX + str);
                }
            }
        });
    }

    private static void i(Context context, com.byazt.nn.n nVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.c(str, nVar.f17521c, BaseConstants.VIVO_MARKET_NEED_COMMENT);
        } catch (Exception unused) {
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 9, 8, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static void n(final Context context, final com.byazt.nn.n nVar, final String str) {
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.hu.x.5
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.us.c.c(x.c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObjectI = com.byazt.gq.t.i();
                    Thread.sleep(jSONObjectI.optInt("m2_delay_millis", 1000));
                    com.byazt.gi.c.c().c(context, true);
                    com.byazt.gi.tt ttVar = new com.byazt.gi.tt();
                    ttVar.f14539c = 1;
                    ttVar.tt = 0;
                    String strC = com.byazt.i.ve.c(jSONObjectI.optString("v"), jSONObjectI.optString("s"));
                    ttVar.ve = String.format(strC, str);
                    com.byazt.gi.c.c().c(ttVar, (com.byazt.gi.uj) null);
                    com.byazt.gi.c.c().tt();
                    x.tt(nVar, jSONObject, -1, 2, String.format(strC, str));
                } catch (Throwable th) {
                    m.c(th);
                    x.tt(nVar, jSONObject, 1, 2, BaseConstants.MARKET_PREFIX + str);
                }
            }
        });
    }

    private static void sp(Context context, com.byazt.nn.n nVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.c(str, nVar.f17521c);
        } catch (Exception unused) {
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 13, 10, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static com.byazt.nn.sp uj(@NonNull Context context, @NonNull String str) {
        try {
            Uri uri = Uri.parse("https://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
            Intent intent = new Intent();
            intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
            intent.setData(uri);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return new com.byazt.nn.sp(5);
        } catch (Exception unused) {
            return new com.byazt.nn.sp(6, 14);
        }
    }

    private static void ve(Context context, com.byazt.nn.n nVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            c(context, str, nVar.f17521c);
        } catch (Exception unused) {
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 14, 11, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static void x(final Context context, final com.byazt.nn.n nVar, final String str) {
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.hu.x.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObjectI = com.byazt.gq.t.i();
                String strOptString = jSONObjectI.optString("s");
                final JSONObject jSONObject = new JSONObject();
                String strC = com.byazt.i.ve.c(jSONObjectI.optString("x"), strOptString);
                JSONObject jSONObject2 = new JSONObject();
                u.c(jSONObject2, bm.aM, "v");
                u.c(jSONObject2, "p", str);
                byte[] bytes = jSONObject2.toString().getBytes();
                com.byazt.gq.t.uj().c(strC, com.byazt.gq.t.rh().c(bytes, bytes.length), "application/octet-stream;tt-data=a", 0, new my() { // from class: com.byazt.hu.x.7.1
                    @Override // com.byazt.ou.my
                    public void c(String str2) {
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        x.tt(context, str, str2, nVar, jSONObject);
                    }

                    @Override // com.byazt.ou.my
                    public void c(Throwable th) {
                        com.byazt.us.c.c(x.c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
                        u.c(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                        x.tt(nVar, jSONObject, 7, 5, BaseConstants.MARKET_PREFIX + str);
                    }
                });
            }
        });
    }

    private static com.byazt.nn.sp tt(Context context, com.byazt.nn.n nVar, String str) {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("p", str);
        intent.putExtra("id", nVar.f17521c);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.byazt.nn.sp(7, "am_kllk2");
        } catch (Throwable unused) {
            tt(nVar, jSONObject, 1, 3, BaseConstants.MARKET_PREFIX + str);
            return c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
    }

    public static com.byazt.nn.sp c(Context context, Uri uri) {
        Intent intent;
        if (!com.byazt.i.n.ve() && (context == null || uri == null)) {
            return new com.byazt.nn.sp(6, 12);
        }
        try {
            String strDa = com.byazt.i.n.da();
            if (com.byazt.i.n.nu() && (TextUtils.isEmpty(strDa) || !u.n(context, strDa))) {
                strDa = "com.huawei.appmarket";
                Uri.Builder builderBuildUpon = uri.buildUpon();
                builderBuildUpon.scheme(BaseConstants.SCHEME_MARKET);
                intent = new Intent("android.intent.action.VIEW", builderBuildUpon.build());
            } else {
                intent = new Intent("android.intent.action.VIEW", uri);
            }
            if (!u.c(context, intent)) {
                return new com.byazt.nn.sp(6, 13);
            }
            if (u.n(context, strDa) && !com.byazt.i.n.sp()) {
                intent.setPackage(strDa);
            }
            if (com.byazt.k.c.ve().c("fix_jump_market")) {
                if (!(context instanceof Activity)) {
                    intent.addFlags(335544320);
                }
            } else if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (com.byazt.k.c.ve().tt("test_jump_market_failed") == 1) {
                com.byazt.dm.ve.c().c(false, "jump market error");
                return new com.byazt.nn.sp(6, 25);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return new com.byazt.nn.sp(5);
        } catch (Exception unused) {
            return new com.byazt.nn.sp(6, 14);
        }
    }

    public static boolean ve(@NonNull Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strDa = com.byazt.i.n.da();
        if (u.n(com.byazt.gq.t.getContext(), strDa)) {
            intent.setPackage(strDa);
        }
        if (!u.c(com.byazt.gq.t.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "start HM2");
            return false;
        }
    }

    private static com.byazt.nn.sp uj(Context context, com.byazt.nn.n nVar, String str) {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("dl", true);
        intent.putExtra("p", str);
        intent.putExtra("id", nVar.f17521c);
        if (Build.VERSION.SDK_INT >= 29) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_HEYTAP_PKG_INFO);
        } else if (u.n(context, BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO)) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO);
        } else if (u.n(context, BaseConstants.KLLK_PROMOTION_COLOROS_PKG_INFO)) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_COLOROS_PKG_INFO);
        } else {
            return c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.byazt.nn.sp(7, "am_kllk3");
        } catch (Throwable unused) {
            tt(nVar, jSONObject, 1, 3, BaseConstants.MARKET_PREFIX + str);
            return c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Context context, String str, String str2, @NonNull com.byazt.nn.n nVar, @NonNull JSONObject jSONObject) {
        u.c(jSONObject, "ttdownloader_type", (Object) 5);
        try {
            String strC = com.byazt.i.ve.c(new JSONObject(str2).optString("a"));
            if (!TextUtils.isEmpty(strC)) {
                TTDelegateActivity.c(str, nVar.f17521c, strC, jSONObject);
                return;
            }
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 5, 5, BaseConstants.MARKET_PREFIX + str);
        } catch (Exception unused) {
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 6, 5, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static boolean ve(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            m.c(th);
            return false;
        }
    }

    public static boolean tt(@NonNull Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strDa = com.byazt.i.n.da();
        if (u.n(com.byazt.gq.t.getContext(), strDa)) {
            intent.setPackage(strDa);
        }
        if (!u.c(com.byazt.gq.t.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "start HM1");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ve(String str) {
        Matcher matcher = Pattern.compile("<input[\\s\\S]*>\\n").matcher(str);
        String strGroup = matcher.find() ? matcher.group() : "";
        if (!strGroup.equals(null) && strGroup.length() > 0) {
            for (String str2 : strGroup.split("\\n")) {
                if (str2.startsWith("<input")) {
                    for (String str3 : str2.split("\\s")) {
                        if (str3.startsWith(HmInputMappingContent.FIELD_VALUE)) {
                            return str3.substring(7, str3.length() - 1);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static com.byazt.nn.sp c(final Context context, Uri uri, com.byazt.nn.n nVar) {
        com.byazt.dd.tt ttVar;
        if (context != null && com.byazt.us.da.c(uri)) {
            try {
                final Intent intent = new Intent("android.intent.action.VIEW", uri);
                if (!u.c(context, intent)) {
                    return new com.byazt.nn.sp(6, 13);
                }
                String strDa = com.byazt.i.n.da();
                if (u.n(context, strDa)) {
                    intent.setPackage(strDa);
                }
                intent.addFlags(335544320);
                if (com.byazt.k.c.ve().tt("test_jump_market_failed") == 1 && "local_test".equals(com.byazt.gq.t.da().ve)) {
                    com.byazt.dm.ve.c().c(false, "jump market error");
                    return new com.byazt.nn.sp(6, 25);
                }
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                long jOptLong = com.byazt.gq.t.i().optLong("market_jump_delay", 1000L);
                if (jOptLong > 0 && nVar != null && (ttVar = nVar.f17522n) != null && !ttVar.os()) {
                    com.byazt.di.x.c().tt().post(new Runnable() { // from class: com.byazt.hu.x.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.gq.t.ve().c(8, com.byazt.gq.t.getContext(), null, "浏览器跳转失败，正在前往应用商店", null, 0);
                        }
                    });
                }
                com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.hu.x.2
                    @Override // java.lang.Runnable
                    public void run() {
                        context.startActivity(intent);
                    }
                }, jOptLong);
                return new com.byazt.nn.sp(5);
            } catch (Exception unused) {
                return new com.byazt.nn.sp(6, 14);
            }
        }
        return new com.byazt.nn.sp(6, 12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String uj(String str) {
        List<String> pathSegments = Uri.parse(str).getPathSegments();
        if (pathSegments.size() > 0) {
            return pathSegments.get(pathSegments.size() - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(com.byazt.nn.n nVar, JSONObject jSONObject, int i10, int i11, String str) {
        u.c(jSONObject, "error_code", Integer.valueOf(i10));
        u.c(jSONObject, "ttdownloader_type", Integer.valueOf(i11));
        u.c(jSONObject, "rmu", str);
        u.c(jSONObject, com.byazt.i.n.da(), Integer.valueOf(u.tt(com.byazt.gq.t.getContext(), com.byazt.i.n.da())));
        com.byazt.zn.c.c().tt("am_result", jSONObject, nVar);
    }

    public static com.byazt.nn.sp tt(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return new com.byazt.nn.sp(4, 11);
        }
        if (context == null) {
            context = com.byazt.gq.t.getContext();
        }
        Intent intentSp = u.sp(context, str);
        if (intentSp == null) {
            return new com.byazt.nn.sp(4, 22);
        }
        intentSp.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(intentSp);
            return new com.byazt.nn.sp(3);
        } catch (Exception unused) {
            return new com.byazt.nn.sp(4, 23);
        }
    }

    public static com.byazt.nn.sp tt(String str, com.byazt.dd.c cVar) {
        if (TextUtils.isEmpty(str)) {
            return new com.byazt.nn.sp(2, 21);
        }
        Context context = com.byazt.gq.t.getContext();
        String packageName = cVar.rl().getPackageName();
        if (!TextUtils.isEmpty(packageName)) {
            t.c().c(f15118c, "tryOpenByUrl", "获取到跳转中转Activity的intent");
            Intent intentC = c(context, cVar, packageName, 2, str);
            if (intentC != null) {
                com.byazt.nn.sp spVarC = c(context, intentC, cVar, true, str);
                if (spVarC.getType() == 1) {
                    return spVarC;
                }
            }
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        if (com.byazt.k.c.ve().c("fix_app_link_flag")) {
            intent.addFlags(67108864);
        }
        return c(context, intent, cVar, false, str);
    }

    public static com.byazt.nn.sp c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.byazt.i.n.sp() && u.n(context, "com.sec.android.app.samsungapps")) {
                return uj(context, str);
            }
            return c(context, com.byazt.ki.c.c(context, str));
        }
        return new com.byazt.nn.sp(6, 11);
    }

    public static com.byazt.nn.sp c(Context context, com.byazt.nn.n nVar, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.byazt.i.n.sp() && u.n(context, "com.sec.android.app.samsungapps")) {
                return uj(context, str);
            }
            if (nVar.tt.isAd() && nVar.uj.enableAM()) {
                JSONArray jSONArrayOptJSONArray = com.byazt.gq.t.i().optJSONArray("am_plans");
                if (com.byazt.i.n.n() && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_3")) {
                    return tt(context, nVar, str);
                }
                if (com.byazt.i.n.a() && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_2")) {
                    n(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_m2");
                }
                if (com.byazt.i.n.uj() && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_5")) {
                    x(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_v1");
                }
                if (com.byazt.i.n.n() && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_7")) {
                    DownloadController downloadController = nVar.uj;
                    if ((downloadController instanceof AdDownloadController) && ((AdDownloadController) downloadController).enableOppoAutoDownload()) {
                        return uj(context, nVar, str);
                    }
                }
                if (com.byazt.i.n.uj() && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_8") && u.c(u.ve(context, "com.bbk.appstore"), BaseConstants.VIVO_V2_REQUIRED_MARKET_VERSION) >= 0) {
                    i(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_v2");
                }
                if ((com.byazt.i.n.c() || com.byazt.i.n.tt()) && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_9")) {
                    a(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_hr");
                }
                if ((com.byazt.i.n.c() || com.byazt.i.n.tt()) && com.byazt.i.c.c(jSONArrayOptJSONArray, "am_10")) {
                    sp(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_hr2");
                }
                DownloadController downloadController2 = nVar.uj;
                if ((downloadController2 instanceof AdDownloadController) && ((AdDownloadController) downloadController2).enableOppoAutoDownload() && ((AdDownloadController) nVar.uj).getDownloadMarketInterceptor() != null && nVar.tt.getDownloadSettings().optInt("is_use_obm_convert", 0) == 1) {
                    ve(context, nVar, str);
                    return new com.byazt.nn.sp(7, "am_kllk4");
                }
                return c(context, com.byazt.ki.c.c(context, str));
            }
            return c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        return new com.byazt.nn.sp(6, 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Context context, @NonNull com.byazt.nn.n nVar, @NonNull String str, @NonNull String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.tt(str, nVar.f17521c, str2);
        } catch (Exception unused) {
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVar, true);
            tt(nVar, jSONObject, 12, 9, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void tt(@NonNull Activity activity, String str, long j10, String str2) {
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectI = com.byazt.gq.t.i();
        String strOptString = jSONObjectI.optString("s");
        String strC = com.byazt.i.ve.c(jSONObjectI.optString("bz"), strOptString);
        String strC2 = com.byazt.i.ve.c(jSONObjectI.optString("ca"), strOptString);
        String strC3 = com.byazt.i.ve.c(jSONObjectI.optString("cb"), strOptString);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(BaseConstants.MARKET_SCHEME_HW_HONOR).authority("com.huawei.appmarket");
        if (!TextUtils.isEmpty(strC)) {
            builder.appendQueryParameter(strC, str2);
        }
        if (!TextUtils.isEmpty(strC2) && !TextUtils.isEmpty(strC3)) {
            builder.appendQueryParameter(strC2, strC3);
        }
        if (tt(activity, builder.build())) {
            tt(nVarN, jSONObject, -1, 9, BaseConstants.MARKET_PREFIX + str);
            com.byazt.us.c.c("am_hr", jSONObject, nVarN, true);
            return;
        }
        tt(nVarN, jSONObject, 2, 9, BaseConstants.MARKET_PREFIX + str);
        com.byazt.us.c.c(c((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
    }

    public static boolean c(Context context, com.byazt.nn.n nVar, String str, JSONObject jSONObject, boolean z10, int i10) {
        u.c(jSONObject, "download_scene", Integer.valueOf(nVar.gt()));
        nVar.uj.getMarketStatusChangeListener();
        com.byazt.zn.c.c().tt("market_click_open", jSONObject, nVar);
        com.byazt.nn.sp spVarC = c(context, Uri.parse(str));
        String strC = u.c(spVarC.tt(), PointCategory.OPEN_MARKET);
        int type = spVarC.getType();
        if (type == 5) {
            com.byazt.us.c.c(strC, jSONObject, nVar, true);
        } else {
            if (type == 6) {
                u.c(jSONObject, "error_code", Integer.valueOf(spVarC.c()));
                u.c(jSONObject, "download_scene", Integer.valueOf(nVar.gt()));
                com.byazt.zn.c.c().tt("market_open_failed", jSONObject, nVar);
                return false;
            }
            if (type != 7) {
                return false;
            }
        }
        if (z10) {
            com.byazt.zn.c.c().c(nVar.f17521c, i10);
        }
        return true;
    }

    public static void c(Context context, String str, long j10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        try {
            JSONObject jSONObjectI = com.byazt.gq.t.i();
            String strOptString = jSONObjectI.optString("s");
            String strC = com.byazt.i.ve.c(jSONObjectI.optString("aa"), strOptString);
            String strC2 = com.byazt.i.ve.c(jSONObjectI.optString("ac"), strOptString);
            String strC3 = com.byazt.i.ve.c(jSONObjectI.optString("af"), strOptString);
            boolean zC = com.byazt.i.c.c(jSONObjectI, context, strC2);
            StringBuilder sb2 = new StringBuilder(String.format(strC, str, strC3, strC2));
            Intent intent = new Intent("android.intent.action.VIEW");
            String strDa = com.byazt.i.n.da();
            if (u.n(context, strDa)) {
                intent.setPackage(strDa);
            }
            if (z10) {
                sb2.append(com.byazt.i.ve.c(jSONObjectI.optString("ae"), strOptString));
            } else {
                intent.addFlags(335544320);
            }
            u.c(jSONObject, "mf", Boolean.valueOf(zC));
            u.c(jSONObject, "if", Boolean.valueOf(z10));
            intent.setData(Uri.parse(sb2.toString()));
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            com.byazt.us.c.c("am_kllk2", jSONObject, nVarN, true);
            if (zC) {
                tt(nVarN, jSONObject, -1, 3, sb2.toString());
            } else {
                tt(nVarN, jSONObject, 3, 3, sb2.toString());
            }
        } catch (Exception unused) {
            com.byazt.us.c.c(c(com.byazt.gq.t.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
            tt(nVarN, jSONObject, 2, 3, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void c(final Context context, String str, long j10, String str2, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        try {
            JSONObject jSONObjectI = com.byazt.gq.t.i();
            String strOptString = jSONObjectI.optString("s");
            String strC = com.byazt.i.ve.c(jSONObjectI.optString("br"), strOptString);
            String strC2 = com.byazt.i.ve.c(jSONObjectI.optString("bs_1"), strOptString);
            String strC3 = com.byazt.i.ve.c(jSONObjectI.optString("bs_2"), strOptString);
            String strC4 = com.byazt.i.ve.c(jSONObjectI.optString("bs_3"), strOptString);
            String strC5 = com.byazt.i.ve.c(jSONObjectI.optString("bt"), strOptString);
            String strC6 = com.byazt.i.ve.c(jSONObjectI.optString("bu"), strOptString);
            StringBuilder sb2 = new StringBuilder(String.format("https://", new Object[0]));
            sb2.append(strC);
            sb2.append(strC2);
            sb2.append(strC3);
            sb2.append(strC4);
            sb2.append(strC5);
            sb2.append(strC6);
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(str2);
            if (z10) {
                sb2.append("pkg=" + str);
                sb2.append("&dl=true");
            } else {
                intent.addFlags(335544320);
            }
            u.c(jSONObject, "dl", Boolean.valueOf(z10));
            intent.setData(Uri.parse(sb2.toString()));
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            long jOptLong = com.byazt.gq.t.i().optLong("oppo_browser_jump_delay", 1000L);
            if (jOptLong > 0) {
                com.byazt.di.x.c().tt().post(new Runnable() { // from class: com.byazt.hu.x.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.gq.t.ve().c(12, com.byazt.gq.t.getContext(), null, "正在前往浏览器下载", null, 0);
                    }
                });
            }
            com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.hu.x.4
                @Override // java.lang.Runnable
                public void run() {
                    context.startActivity(intent);
                }
            }, jOptLong);
            com.byazt.dd.tt ttVar = nVarN.f17522n;
            if (ttVar != null) {
                ttVar.qy(true);
            }
            com.byazt.us.c.c("am_kllk3", jSONObject, nVarN, true);
            tt(nVarN, jSONObject, -1, 7, sb2.toString());
        } catch (Exception unused) {
            com.byazt.dd.tt ttVar2 = nVarN.f17522n;
            if (ttVar2 != null) {
                ttVar2.qy(false);
            }
            com.byazt.us.c.c(c(com.byazt.gq.t.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str), nVarN), nVarN, true);
            tt(nVarN, jSONObject, 2, 7, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static boolean c(@NonNull Activity activity, @NonNull String str, @NonNull HashMap<String, String> map) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(BaseConstants.MARKET_PREFIX + str));
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        intent.putExtra(com.alipay.sdk.authjs.a.f7127l, map);
        String strDa = com.byazt.i.n.da();
        if (u.n(com.byazt.gq.t.getContext(), strDa)) {
            intent.setPackage(strDa);
        }
        if (!u.c(com.byazt.gq.t.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "start v1");
            return false;
        }
    }

    public static void c(@NonNull Activity activity, String str, long j10, String str2, String str3) {
        JSONObject jSONObject;
        int i10;
        try {
            jSONObject = new JSONObject(str3);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        try {
            JSONObject jSONObjectI = com.byazt.gq.t.i();
            boolean zC = com.byazt.i.c.c(jSONObjectI, activity, com.byazt.i.ve.c(jSONObjectI.optString("bg"), jSONObjectI.optString("s")));
            HashMap<String, String> mapTt = u.tt(new JSONObject(str2));
            if (zC && !mapTt.isEmpty() && c(activity, str, mapTt)) {
                tt(nVarN, jSONObject, -1, 5, BaseConstants.MARKET_PREFIX + str);
                com.byazt.us.c.c("am_v1", jSONObject, nVarN, true);
                return;
            }
            if (zC) {
                i10 = mapTt.isEmpty() ? 1 : 2;
            } else {
                i10 = 3;
            }
            tt(nVarN, jSONObject, i10, 5, BaseConstants.MARKET_PREFIX + str);
            com.byazt.us.c.c(c((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
        } catch (Exception unused2) {
            com.byazt.us.c.c(c(com.byazt.gq.t.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
            tt(nVarN, jSONObject, 4, 5, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void c(@NonNull Activity activity, String str, long j10, String str2) {
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectI = com.byazt.gq.t.i();
        String strC = com.byazt.i.ve.c(jSONObjectI.optString("bv"), jSONObjectI.optString("s"));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(BaseConstants.SCHEME_MARKET).authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter("id", str);
        if (!TextUtils.isEmpty(strC)) {
            builder.appendQueryParameter(strC, str2);
        }
        if (c(activity, builder.build())) {
            tt(nVarN, jSONObject, -1, 8, BaseConstants.MARKET_PREFIX + str);
            com.byazt.us.c.c("am_v2", jSONObject, nVarN, true);
            return;
        }
        tt(nVarN, jSONObject, 2, 8, BaseConstants.MARKET_PREFIX + str);
        com.byazt.us.c.c(c((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
    }

    public static boolean c(@NonNull Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strDa = com.byazt.i.n.da();
        if (u.n(com.byazt.gq.t.getContext(), strDa)) {
            intent.setPackage(strDa);
        }
        if (!u.c(com.byazt.gq.t.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "start v2");
            return false;
        }
    }

    public static com.byazt.nn.sp c(Context context, String str, com.byazt.dd.c cVar) {
        Intent intentC = c(context, cVar, str, 1, (String) null);
        if (intentC != null) {
            t.c().c(f15118c, "tryOpenByPackage", "成功构造了跳转中转Activity的intent");
            com.byazt.nn.sp spVarC = c(intentC, true, context, str, cVar);
            if (spVarC.getType() == 3) {
                return spVarC;
            }
        }
        Intent intentSp = u.sp(context, str);
        if (intentSp == null) {
            return new com.byazt.nn.sp(4, 22);
        }
        return c(intentSp, false, context, str, cVar);
    }

    private static com.byazt.nn.sp c(Intent intent, boolean z10, Context context, String str, com.byazt.dd.c cVar) {
        if (Build.VERSION.SDK_INT >= 26 && com.byazt.gq.t.i().optInt("open_package_mode") == 1 && com.byazt.gq.t.t() != null && com.byazt.gq.t.t().c() && cVar.nu() && !z10) {
            TTDelegateActivity.tt(str, cVar);
            return new com.byazt.nn.sp(3);
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(intent);
            return new com.byazt.nn.sp(3);
        } catch (Exception e10) {
            if (z10) {
                t.c().tt(f15118c, "realTryOpenByPackage", "调起中转Activity出现异常，可能是没接转化SDK，回退普通调起" + e10.getMessage());
                return new com.byazt.nn.sp(8, 23);
            }
            t.c().tt(f15118c, "realTryOpenByPackage", "包名调起失败了，抛出异常" + e10.getMessage());
            return new com.byazt.nn.sp(4, 23);
        }
    }

    public static com.byazt.nn.sp c(String str, com.byazt.dd.c cVar) {
        return c(com.byazt.gq.t.getContext(), str, cVar);
    }

    private static com.byazt.nn.sp c(Context context, Intent intent, com.byazt.dd.c cVar, boolean z10, String str) {
        if (context == null) {
            context = com.byazt.gq.t.getContext();
        }
        if (u.tt(context, intent)) {
            if (com.byazt.gq.t.i().optInt("open_url_mode") == 0 && com.byazt.gq.t.t() != null && com.byazt.gq.t.t().c() && Build.VERSION.SDK_INT >= 26 && cVar.nu() && !z10) {
                TTDelegateActivity.c(str, cVar);
                return new com.byazt.nn.sp(1);
            }
            try {
                context.startActivity(intent);
                return new com.byazt.nn.sp(1);
            } catch (Exception e10) {
                if (z10) {
                    t.c().tt(f15118c, "realTryOpenByUrl", "商店直投注入clickId优化url调起场景，抛出异常，没接转化SDK，回退普通调起" + e10.getMessage());
                    return new com.byazt.nn.sp(9);
                }
                t.c().tt(f15118c, "realTryOpenByUrl", "url调起失败了，抛出异常" + e10.getMessage());
                return new com.byazt.nn.sp(2);
            }
        }
        return new com.byazt.nn.sp(2, 24);
    }

    public static com.byazt.nn.sp c(@NonNull com.byazt.dd.tt ttVar, String str, String str2) {
        com.byazt.nn.sp spVarTt = tt(str, ttVar);
        return (com.byazt.us.a.c(ttVar) && spVarTt.getType() == 2) ? c(str2, ttVar) : spVarTt;
    }

    public static void c(@NonNull Activity activity, String str, long j10) {
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectI = com.byazt.gq.t.i();
        String strOptString = jSONObjectI.optString("s");
        String strC = com.byazt.i.ve.c(jSONObjectI.optString("ca"), strOptString);
        String strC2 = com.byazt.i.ve.c(jSONObjectI.optString(com.umeng.ccg.a.f84974a), strOptString);
        StringBuilder sb2 = new StringBuilder(BaseConstants.MARKET_PREFIX);
        if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(strC2)) {
            sb2.append(str);
            sb2.append(x.a.f97576d);
            sb2.append(strC);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(strC2);
        }
        if (ve(activity, Uri.parse(sb2.toString()))) {
            tt(nVarN, jSONObject, -1, 10, BaseConstants.MARKET_PREFIX + str);
            com.byazt.us.c.c("am_hr2", jSONObject, nVarN, true);
            return;
        }
        tt(nVarN, jSONObject, 2, 10, BaseConstants.MARKET_PREFIX + str);
        com.byazt.us.c.c(c((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
    }

    public static void c(@NonNull Context context, String str, long j10) {
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        JSONObject jSONObject = new JSONObject();
        DownloadController downloadController = nVarN.uj;
        if (downloadController instanceof AdDownloadController) {
            boolean zEnableOppoAutoDownload = ((AdDownloadController) downloadController).enableOppoAutoDownload();
            HashMap map = new HashMap();
            map.put("is_button", Boolean.valueOf(zEnableOppoAutoDownload));
            u.c(jSONObject, "is_button", Boolean.valueOf(zEnableOppoAutoDownload));
            DownloadMarketInterceptor downloadMarketInterceptor = ((AdDownloadController) nVarN.uj).getDownloadMarketInterceptor();
            if (downloadMarketInterceptor != null) {
                Map<String, Object> mapInterceptObmMarket = downloadMarketInterceptor.interceptObmMarket(map);
                if (mapInterceptObmMarket != null && mapInterceptObmMarket.get("convert_result") != null && Boolean.parseBoolean(mapInterceptObmMarket.get("convert_result").toString())) {
                    tt(nVarN, jSONObject, -1, 11, BaseConstants.MARKET_PREFIX + str);
                    com.byazt.us.c.c("am_kllk4", jSONObject, nVarN, true);
                    return;
                }
                tt(nVarN, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
                com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
                return;
            }
            tt(nVarN, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
            com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
            return;
        }
        tt(nVarN, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
        com.byazt.us.c.c(c(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), nVarN, true);
    }

    private static Intent c(Context context, com.byazt.dd.c cVar, String str, int i10, String str2) {
        if (!cVar.ve() || cVar.gu() == null || cVar.gu().getDownloadMode() != 2 || cVar.rl() == null || n.c(cVar).c("app_link_market_open_add_info", 0) != 1) {
            return null;
        }
        String strVe = com.byazt.gq.i.ve(cVar.rl());
        String strUj = com.byazt.gq.i.uj(cVar.rl());
        Intent intent = new Intent();
        intent.setClassName(str, AdBaseConstants.MARKET_OPEN_BRIDGE_ACTIVITY);
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (TextUtils.isEmpty(strVe) || resolveInfoResolveActivity == null) {
            return null;
        }
        intent.putExtra(AdBaseConstants.MARKET_OPEN_CLICK_ID, strVe);
        if (!(context instanceof Activity)) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (!TextUtils.isEmpty(strUj)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_EXTRA, strUj);
        }
        if (i10 == 2 && !TextUtils.isEmpty(str2)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str2);
        }
        return intent;
    }
}
