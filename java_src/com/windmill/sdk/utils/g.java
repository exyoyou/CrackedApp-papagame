package com.windmill.sdk.utils;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.point.PointType;
import com.windmill.sdk.strategy.WMSdkConfig;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f87358a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f87359b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f87360c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f87361d = -2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f87362e = -3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f87363f = -4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f87364g = -5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f87365h = "aGFwanMub3Jn";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f87366i = "aGlhcHA=";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f87367j = "aGlnYW1l";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f87368k = "params";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f87369l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f87370m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f87371n = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f87372o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static volatile Executor f87373p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final CopyOnWriteArrayList<String> f87374q = new CopyOnWriteArrayList<>();

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f87375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f87376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f87377c;

        private boolean a(int radio) {
            if (radio <= 0) {
                return false;
            }
            if (radio >= 100) {
                return true;
            }
            try {
                return new Random().nextInt(100) < radio;
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean zA = a(this.f87377c);
                PointEntityWind pointEntityWind = new PointEntityWind();
                pointEntityWind.setAc_type(PointType.WIND_MILL_MATERIAL);
                pointEntityWind.setCategory("click_url");
                HashMap map = new HashMap();
                map.put("scheme", this.f87375a);
                map.put("appid", WindMillAd.sharedAds().getAppId());
                if (zA) {
                    map.put("url", this.f87376b);
                }
                pointEntityWind.setOptions(map);
                pointEntityWind.commit();
            } catch (Exception unused) {
            }
        }

        private a(String scheme, String url, int radio) {
            this.f87375a = scheme;
            this.f87376b = url;
            this.f87377c = radio;
        }
    }

    private g() {
    }

    private static boolean a() {
        return f87372o;
    }

    private static boolean b() {
        return WMSdkConfig.sharedInstance().isEnableAppCheck();
    }

    private static int c() {
        return WMSdkConfig.sharedInstance().getQuickAppSchenemCollectionRatio();
    }

    private static CopyOnWriteArrayList<String> d() {
        List<String> quickAppSchemes;
        CopyOnWriteArrayList<String> copyOnWriteArrayList = f87374q;
        if (copyOnWriteArrayList.isEmpty() && (quickAppSchemes = WMSdkConfig.sharedInstance().getQuickAppSchemes()) != null) {
            copyOnWriteArrayList.addAll(quickAppSchemes);
        }
        return copyOnWriteArrayList;
    }

    public static void a(boolean enableQuickAppCheck) {
        f87372o = enableQuickAppCheck;
    }

    private static int b(Intent intent) {
        Uri data;
        if (!a()) {
            return -1;
        }
        if (!WindMillAd.sharedAds().isInit()) {
            return -2;
        }
        if (!b()) {
            return -3;
        }
        if (intent == null || (data = intent.getData()) == null) {
            return -4;
        }
        String scheme = intent.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return -4;
        }
        try {
            if (TextUtils.isEmpty(f87369l)) {
                f87369l = k.b(f87366i);
                f87370m = k.b(f87367j);
                f87371n = k.b(f87365h);
            }
            if (f87373p == null) {
                f87373p = Executors.newSingleThreadExecutor();
            }
            f87373p.execute(new a(scheme, data.toString(), c()));
            CopyOnWriteArrayList<String> copyOnWriteArrayListD = d();
            if (copyOnWriteArrayListD != null && !copyOnWriteArrayListD.isEmpty()) {
                return (a(copyOnWriteArrayListD, scheme) || a(copyOnWriteArrayListD, intent, scheme)) ? 0 : 1;
            }
            return -4;
        } catch (Exception unused) {
            return -5;
        }
    }

    public static int a(Intent intent) {
        return b(intent);
    }

    public static void a(String scheme) {
        if (TextUtils.isEmpty(scheme)) {
            return;
        }
        d().add(scheme);
    }

    private static boolean a(List<String> schemes, Intent intent, String scheme) throws UnsupportedEncodingException {
        Uri data = intent.getData();
        if (data == null) {
            return false;
        }
        String host = data.getHost();
        if (!TextUtils.isEmpty(scheme) && ((scheme.startsWith("http") || scheme.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) && !TextUtils.isEmpty(host) && host.startsWith(f87371n))) {
            return true;
        }
        String query = data.getQuery();
        if (TextUtils.isEmpty(scheme) || (!(f87369l.startsWith(scheme) || f87370m.startsWith(scheme)) || TextUtils.isEmpty(query))) {
            return false;
        }
        String strDecode = URLDecoder.decode(query, "UTF-8");
        if (!TextUtils.isEmpty(strDecode) && !strDecode.contains("params=")) {
            return false;
        }
        String queryParameter = data.getQueryParameter("params");
        if (TextUtils.isEmpty(queryParameter)) {
            return false;
        }
        String scheme2 = Uri.parse(queryParameter).getScheme();
        if (TextUtils.isEmpty(scheme2)) {
            return false;
        }
        return a(schemes, scheme2);
    }

    private static boolean a(List<String> schemes, String scheme) {
        if (TextUtils.isEmpty(scheme)) {
            return false;
        }
        for (String str : schemes) {
            if (!TextUtils.isEmpty(str) && str.startsWith(scheme)) {
                return true;
            }
        }
        return false;
    }
}
