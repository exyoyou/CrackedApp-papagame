package com.join.mgps.Util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;

/* JADX INFO: loaded from: classes4.dex */
public class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49796a = "MarketUtil";

    public static String a(Context context, Intent intent) {
        if (intent == null || intent.getData() == null) {
            return "";
        }
        try {
            Uri data = intent.getData();
            String scheme = data.getScheme();
            String host = data.getHost();
            String queryParameter = data.getQueryParameter("id");
            String str = ((("" + data.getScheme()) + "//:") + data.getHost()) + "?id=";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(data.getQueryParameter("id"));
            return (TextUtils.isEmpty(scheme) || !scheme.equals(BaseConstants.SCHEME_MARKET) || TextUtils.isEmpty(host) || !host.equals(BaseConstants.MARKET_URI_AUTHORITY_DETAIL) || TextUtils.isEmpty(queryParameter)) ? "" : queryParameter;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static void c(Context context, String packageName) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(BaseConstants.MARKET_PREFIX + packageName)));
        } catch (ActivityNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public static void d(Context context, String packageName) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + packageName);
        Intent intent = new Intent();
        intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        intent.setData(uri);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public static void e(Context context, String packageName) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(BaseConstants.MARKET_PREFIX + packageName));
        try {
            intent.setClassName("com.tencent.android.qqdownloader", "com.tencent.pangu.link.LinkProxyActivity");
            context.startActivity(intent);
        } catch (ActivityNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    void b(Context context, String packageName) {
        Intent intent = new Intent();
        intent.setClassName("com.letv.app.appstore", "com.letv.app.appstore.appmodule.details.DetailsActivity");
        intent.setAction("com.letv.app.appstore.appdetailactivity");
        intent.putExtra("packageName", packageName);
        context.startActivity(intent);
    }
}
