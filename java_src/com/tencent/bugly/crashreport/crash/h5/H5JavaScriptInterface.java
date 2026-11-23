package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.bb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class H5JavaScriptInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashSet<Integer> f83155a = new HashSet<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f83156b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Thread f83157c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83158d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f83159e = null;

    private H5JavaScriptInterface() {
    }

    private static bb a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                bb bbVar = new bb();
                String string2 = jSONObject.getString("projectRoot");
                bbVar.f83434a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                bbVar.f83435b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString("url");
                bbVar.f83436c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString("userAgent");
                bbVar.f83437d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString("language");
                bbVar.f83438e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString("name");
                bbVar.f83439f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int iIndexOf = string.indexOf("\n");
                if (iIndexOf < 0) {
                    al.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                bbVar.f83441h = string.substring(iIndexOf + 1);
                String strSubstring = string.substring(0, iIndexOf);
                bbVar.f83440g = strSubstring;
                int iIndexOf2 = strSubstring.indexOf(":");
                if (iIndexOf2 > 0) {
                    bbVar.f83440g = bbVar.f83440g.substring(iIndexOf2 + 1);
                }
                bbVar.f83442i = jSONObject.getString("file");
                if (bbVar.f83439f == null) {
                    return null;
                }
                long j10 = jSONObject.getLong("lineNumber");
                bbVar.f83443j = j10;
                if (j10 < 0) {
                    return null;
                }
                long j11 = jSONObject.getLong("columnNumber");
                bbVar.f83444k = j11;
                if (j11 < 0) {
                    return null;
                }
                al.a("H5 crash information is following: ", new Object[0]);
                al.a("[projectRoot]: " + bbVar.f83434a, new Object[0]);
                al.a("[context]: " + bbVar.f83435b, new Object[0]);
                al.a("[url]: " + bbVar.f83436c, new Object[0]);
                al.a("[userAgent]: " + bbVar.f83437d, new Object[0]);
                al.a("[language]: " + bbVar.f83438e, new Object[0]);
                al.a("[name]: " + bbVar.f83439f, new Object[0]);
                al.a("[message]: " + bbVar.f83440g, new Object[0]);
                al.a("[stacktrace]: \n" + bbVar.f83441h, new Object[0]);
                al.a("[file]: " + bbVar.f83442i, new Object[0]);
                al.a("[lineNumber]: " + bbVar.f83443j, new Object[0]);
                al.a("[columnNumber]: " + bbVar.f83444k, new Object[0]);
                return bbVar;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.a aVar) {
        String string = null;
        if (aVar == null || f83155a.contains(Integer.valueOf(aVar.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f83155a.add(Integer.valueOf(aVar.hashCode()));
        Thread threadCurrentThread = Thread.currentThread();
        h5JavaScriptInterface.f83157c = threadCurrentThread;
        if (threadCurrentThread != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n");
            for (int i10 = 2; i10 < threadCurrentThread.getStackTrace().length; i10++) {
                StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[i10];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb2.append(stackTraceElement.toString());
                    sb2.append("\n");
                }
            }
            string = sb2.toString();
        }
        h5JavaScriptInterface.f83158d = string;
        HashMap map = new HashMap();
        StringBuilder sb3 = new StringBuilder();
        sb3.append((Object) aVar.c());
        map.put("[WebView] ContentDescription", sb3.toString());
        h5JavaScriptInterface.f83159e = map;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        al.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            al.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String strC = ap.c(str.getBytes());
        String str2 = this.f83156b;
        if (str2 != null && str2.equals(strC)) {
            al.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f83156b = strC;
        al.d("Handling JS exception ...", new Object[0]);
        bb bbVarA = a(str);
        if (bbVarA == null) {
            al.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = bbVarA.f83434a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = bbVarA.f83435b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = bbVarA.f83436c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = bbVarA.f83437d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = bbVarA.f83442i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j10 = bbVarA.f83443j;
        if (j10 != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j10));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f83159e);
        linkedHashMap.put("Java Stack", this.f83158d);
        InnerApi.postH5CrashAsync(this.f83157c, bbVarA.f83439f, bbVarA.f83440g, bbVarA.f83441h, linkedHashMap);
    }
}
