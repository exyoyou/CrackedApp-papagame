package com.alipay.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.byazt.hv.TTDownloadField;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f7244a = "com.alipay.android.app";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7245b = "com.eg.android.AlipayGphone";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7246c = "7.0.0";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f7247a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7248b;
    }

    private static int a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(Arrays.asList(str.split("\\.")));
        arrayList2.addAll(Arrays.asList(str2.split("\\.")));
        int iMax = Math.max(arrayList.size(), arrayList2.size());
        while (arrayList.size() < iMax) {
            arrayList.add("0");
        }
        while (arrayList2.size() < iMax) {
            arrayList2.add("0");
        }
        for (int i10 = 0; i10 < iMax; i10++) {
            if (Integer.parseInt((String) arrayList.get(i10)) != Integer.parseInt((String) arrayList2.get(i10))) {
                return Integer.parseInt((String) arrayList.get(i10)) - Integer.parseInt((String) arrayList2.get(i10));
            }
        }
        return 0;
    }

    public static WebView b(Activity activity, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            CookieSyncManager.createInstance(activity.getApplicationContext()).sync();
            CookieManager.getInstance().setCookie(str, str2);
            CookieSyncManager.getInstance().sync();
        }
        LinearLayout linearLayout = new LinearLayout(activity);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        activity.setContentView(linearLayout, layoutParams);
        WebView webView = new WebView(activity);
        layoutParams.weight = 1.0f;
        webView.setVisibility(0);
        linearLayout.addView(webView, layoutParams);
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString(settings.getUserAgentString() + o(activity));
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
        settings.setAllowFileAccess(false);
        settings.setTextSize(WebSettings.TextSize.NORMAL);
        webView.setVerticalScrollbarOverlay(true);
        webView.setDownloadListener(new k(activity));
        try {
            Method method = webView.getSettings().getClass().getMethod("setDomStorageEnabled", Boolean.TYPE);
            if (method != null) {
                method.invoke(webView.getSettings(), Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
        try {
            try {
                webView.removeJavascriptInterface("searchBoxJavaBridge_");
                webView.removeJavascriptInterface("accessibility");
                webView.removeJavascriptInterface("accessibilityTraversal");
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            Method method2 = webView.getClass().getMethod("removeJavascriptInterface", new Class[0]);
            if (method2 != null) {
                method2.invoke(webView, "searchBoxJavaBridge_");
                method2.invoke(webView, "accessibility");
                method2.invoke(webView, "accessibilityTraversal");
            }
        }
        webView.getSettings().setCacheMode(1);
        webView.loadUrl(str);
        return webView;
    }

    public static a c(Context context, String str) {
        for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
            if (packageInfo.packageName.equals(str)) {
                a aVar = new a();
                aVar.f7247a = packageInfo.signatures[0].toByteArray();
                aVar.f7248b = packageInfo.versionCode;
                return aVar;
            }
        }
        return null;
    }

    public static String d() {
        return "Android " + Build.VERSION.RELEASE;
    }

    public static String e(String str, String str2, String str3) {
        try {
            int iIndexOf = str3.indexOf(str) + str.length();
            if (iIndexOf <= str.length()) {
                return "";
            }
            int iIndexOf2 = !TextUtils.isEmpty(str2) ? str3.indexOf(str2, iIndexOf) : 0;
            return iIndexOf2 <= 0 ? str3.substring(iIndexOf) : str3.substring(iIndexOf, iIndexOf2);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String f(byte[] bArr) {
        try {
            String string = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))).getPublicKey().toString();
            if (string.indexOf("modulus") != -1) {
                return string.substring(string.indexOf("modulus") + 8, string.lastIndexOf(",")).trim();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Map<String, String> g(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(x.a.f97576d)) {
            int iIndexOf = str2.indexOf(SimpleComparison.EQUAL_TO_OPERATION, 1);
            map.put(str2.substring(0, iIndexOf), URLDecoder.decode(str2.substring(iIndexOf + 1)));
        }
        return map;
    }

    public static boolean h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(f7244a, 128) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static boolean i(PackageInfo packageInfo) {
        int i10 = packageInfo.applicationInfo.flags;
        return (i10 & 1) == 0 && (i10 & 128) == 0;
    }

    public static boolean j(WebView webView, String str, Activity activity) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if (str.toLowerCase().startsWith(u.a.f97407i.toLowerCase()) || str.toLowerCase().startsWith(u.a.f97408j.toLowerCase())) {
            try {
                a aVarC = c(activity, f7245b);
                if (aVarC != null) {
                    String strF = f(aVarC.f7247a);
                    if (strF != null && !TextUtils.equals(strF, u.a.f97406h)) {
                        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7073s, strF);
                        return true;
                    }
                    if (str.startsWith("intent://platformapi/startapp")) {
                        str = str.replaceFirst(u.a.f97408j, u.a.f97407i);
                    }
                    activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                }
            } catch (Throwable unused) {
            }
            return true;
        }
        if (TextUtils.equals(str, u.a.f97410l) || TextUtils.equals(str, u.a.f97411m)) {
            com.alipay.sdk.app.h.f7050a = com.alipay.sdk.app.h.a();
            activity.finish();
            return true;
        }
        if (!str.startsWith(u.a.f97409k)) {
            webView.loadUrl(str);
            return true;
        }
        try {
            String strSubstring = str.substring(str.indexOf(u.a.f97409k) + 24);
            int i10 = Integer.parseInt(strSubstring.substring(strSubstring.lastIndexOf(u.a.f97412n) + 10));
            if (i10 == com.alipay.sdk.app.i.SUCCEEDED.a() || i10 == com.alipay.sdk.app.i.PAY_WAITTING.a()) {
                StringBuilder sb2 = new StringBuilder();
                String strDecode = URLDecoder.decode(str);
                String strSubstring2 = strDecode.substring(strDecode.indexOf(u.a.f97409k) + 24, strDecode.lastIndexOf(u.a.f97412n));
                if (strSubstring2.contains("&return_url=")) {
                    String str2 = strSubstring2.split("&return_url=")[0];
                    int iIndexOf = strSubstring2.indexOf("&return_url=") + 12;
                    sb2.append(str2);
                    sb2.append("&return_url=");
                    sb2.append(strSubstring2.substring(iIndexOf, strSubstring2.indexOf(x.a.f97575c, iIndexOf)));
                    sb2.append(strSubstring2.substring(strSubstring2.indexOf(x.a.f97575c, iIndexOf)));
                    strSubstring2 = sb2.toString();
                }
                com.alipay.sdk.app.i iVarA = com.alipay.sdk.app.i.a(i10);
                com.alipay.sdk.app.h.f7050a = com.alipay.sdk.app.h.b(iVarA.a(), iVarA.b(), strSubstring2);
            } else {
                com.alipay.sdk.app.i iVarA2 = com.alipay.sdk.app.i.a(com.alipay.sdk.app.i.FAILED.a());
                com.alipay.sdk.app.h.f7050a = com.alipay.sdk.app.h.b(iVarA2.a(), iVarA2.b(), "");
            }
        } catch (Exception unused2) {
            com.alipay.sdk.app.i iVarA3 = com.alipay.sdk.app.i.a(com.alipay.sdk.app.i.PARAMS_ERROR.a());
            com.alipay.sdk.app.h.f7050a = com.alipay.sdk.app.h.b(iVarA3.a(), iVarA3.b(), "");
        }
        activity.runOnUiThread(new l(activity));
        return true;
    }

    public static String k() {
        String strP = p();
        int iIndexOf = strP.indexOf("-");
        if (iIndexOf != -1) {
            strP = strP.substring(0, iIndexOf);
        }
        int iIndexOf2 = strP.indexOf("\n");
        if (iIndexOf2 != -1) {
            strP = strP.substring(0, iIndexOf2);
        }
        return "Linux " + strP;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x008e A[RETURN] */
    public static boolean l(Context context) {
        int i10;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(f7245b, 128);
            if (packageInfo == null) {
                return false;
            }
            String str = packageInfo.versionName;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList.addAll(Arrays.asList(str.split("\\.")));
            arrayList2.addAll(Arrays.asList(f7246c.split("\\.")));
            int iMax = Math.max(arrayList.size(), arrayList2.size());
            while (arrayList.size() < iMax) {
                arrayList.add("0");
            }
            while (arrayList2.size() < iMax) {
                arrayList2.add("0");
            }
            for (int i11 = 0; i11 < iMax; i11++) {
                if (Integer.parseInt((String) arrayList.get(i11)) != Integer.parseInt((String) arrayList2.get(i11))) {
                    i10 = Integer.parseInt((String) arrayList.get(i11)) - Integer.parseInt((String) arrayList2.get(i11));
                    if (i10 < 0) {
                        return false;
                    }
                    return true;
                }
            }
            i10 = 0;
            if (i10 < 0) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean m(String str) {
        return Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(str).matches();
    }

    public static String n() {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 24; i10++) {
            int iNextInt = random.nextInt(3);
            if (iNextInt == 0) {
                sb2.append(String.valueOf((char) Math.round((Math.random() * 25.0d) + 65.0d)));
            } else if (iNextInt == 1) {
                sb2.append(String.valueOf((char) Math.round((Math.random() * 25.0d) + 97.0d)));
            } else if (iNextInt == 2) {
                sb2.append(String.valueOf(new Random().nextInt(10)));
            }
        }
        return sb2.toString();
    }

    public static String o(Context context) {
        return " (" + d() + ";" + k() + ";" + q(context) + ";;" + s(context) + ")(sdk android)";
    }

    private static String p() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/version"), 256);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                Matcher matcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(line);
                if (!matcher.matches() || matcher.groupCount() < 4) {
                    return "Unavailable";
                }
                return matcher.group(1) + "\n" + matcher.group(2) + " " + matcher.group(3) + "\n" + matcher.group(4);
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        } catch (IOException unused) {
            return "Unavailable";
        }
    }

    public static String q(Context context) {
        return context.getResources().getConfiguration().locale.toString();
    }

    private static String r() {
        String str = u.a.f97399a;
        return str.substring(0, str.indexOf("://"));
    }

    public static String s(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + displayMetrics.heightPixels;
    }

    private static String t() {
        return "-1;-1";
    }

    public static String u(Context context) {
        String strSubstring = "";
        try {
            String str = "";
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(f7245b)) {
                    str = str + "#M";
                } else if (runningAppProcessInfo.processName.startsWith("com.eg.android.AlipayGphone:")) {
                    str = str + "#" + runningAppProcessInfo.processName.replace("com.eg.android.AlipayGphone:", "");
                }
            }
            strSubstring = str;
        } catch (Throwable unused) {
        }
        if (strSubstring.length() > 0) {
            strSubstring = strSubstring.substring(1);
        }
        return strSubstring.length() == 0 ? "N" : strSubstring;
    }

    private static DisplayMetrics v(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    private static String w(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < installedPackages.size(); i10++) {
            PackageInfo packageInfo = installedPackages.get(i10);
            int i11 = packageInfo.applicationInfo.flags;
            if ((i11 & 1) == 0 && (i11 & 128) == 0) {
                if (packageInfo.packageName.equals(f7245b)) {
                    sb2.append(packageInfo.packageName);
                    sb2.append(packageInfo.versionCode);
                    sb2.append("-");
                } else if (!packageInfo.packageName.contains("theme") && !packageInfo.packageName.startsWith("com.google.") && !packageInfo.packageName.startsWith("com.android.")) {
                    sb2.append(packageInfo.packageName);
                    sb2.append("-");
                }
            }
        }
        return sb2.toString();
    }
}
