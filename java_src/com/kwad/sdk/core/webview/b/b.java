package com.kwad.sdk.core.webview.b;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.alipay.sdk.packet.d;
import com.baidu.mobads.sdk.internal.cb;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.crash.utils.h;
import com.kwad.sdk.utils.y;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static final Map<String, com.kwad.sdk.core.webview.b.a.b> bcJ = new ConcurrentHashMap();
    private static final Map<String, String> bcK = new ConcurrentHashMap();

    @Nullable
    public static WebResourceResponse a(Context context, String str, com.kwad.sdk.h.a.b bVar, com.kwad.sdk.core.webview.b.c.b.a aVar, boolean z10) throws Throwable {
        com.kwad.sdk.core.webview.b.a.b bVarA;
        try {
            bVarA = a(context, bVar, str, aVar);
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            aVar.msg = "获取配置文件失败 崩溃" + Log.getStackTraceString(e10);
            bVarA = null;
        }
        if (bVarA == null) {
            a(z10, aVar.msg);
            if (TextUtils.isEmpty(aVar.msg)) {
                aVar.msg = "获取配置文件失败";
            }
            return null;
        }
        if (TextUtils.isEmpty(bVarA.bcR)) {
            a(z10, "getResource [" + str + "] getFilePath from url fail");
            aVar.msg = "getFilePath from url fail";
            return null;
        }
        if (!com.kwad.sdk.core.webview.b.c.c.fU(bVarA.bcN)) {
            a(z10, "mimetype为: " + bVarA.bcN + "不在拦截范围的文件");
            aVar.msg = "mimetype为: " + bVarA.bcN + "不在拦截范围的文件";
            return null;
        }
        BufferedInputStream bufferedInputStreamHF = y.hF(bVarA.bcR);
        if (bufferedInputStreamHF != null) {
            return a(bufferedInputStreamHF, bVarA);
        }
        a(z10, "getResource [" + str + "] inputStream is null");
        StringBuilder sb2 = new StringBuilder("inputStream is null,本地加载路径：");
        sb2.append(bVarA.bcR);
        aVar.msg = sb2.toString();
        return null;
    }

    private static String af(String str, String str2) {
        return str + Uri.parse(str2).getPath();
    }

    private static void ag(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        bcK.put(str, str2);
    }

    private static com.kwad.sdk.core.webview.b.a.b fM(String str) {
        return bcJ.get(String.valueOf(str.hashCode()));
    }

    private static String fN(String str) {
        return bcK.get(str);
    }

    private static void a(boolean z10, String str) {
        if (z10) {
            return;
        }
        c.d("HybridResourceManager", str);
    }

    private static WebResourceResponse a(InputStream inputStream, com.kwad.sdk.core.webview.b.a.b bVar) {
        String str = bVar.bcN;
        HashMap map = new HashMap();
        map.put(HttpHeaders.Names.ACCESS_CONTROL_ALLOW_ORIGIN, bVar.bcQ.bcL);
        map.put(HttpHeaders.Names.ACCESS_CONTROL_ALLOW_CREDENTIALS, "true");
        map.put("Timing-Allow-Origin", bVar.bcQ.bcM);
        map.put(d.f7182f, str);
        map.put("Date", bVar.bcQ.bcO);
        map.put("union-cache ", "1");
        return new WebResourceResponse(bVar.bcN, "", bVar.status, cb.f7689k, map, inputStream);
    }

    private static com.kwad.sdk.core.webview.b.a.b a(Context context, com.kwad.sdk.h.a.b bVar, String str, com.kwad.sdk.core.webview.b.c.b.a aVar) throws Throwable {
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream = null;
        try {
            String strFN = fN(bVar.bgG);
            com.kwad.sdk.core.webview.b.a.b bVarFM = !TextUtils.isEmpty(strFN) ? fM(af(strFN, str)) : null;
            if (bVarFM != null) {
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                return bVarFM;
            }
            String strN = com.kwad.sdk.core.webview.b.c.a.N(context, bVar.bgH);
            if (strN == null) {
                aVar.msg = "获取配置文件失败 offlinepackage 为空";
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                return null;
            }
            File file = new File(strN);
            if (!file.exists()) {
                aVar.msg = "获取配置文件失败 下载文件路径不存在 " + strN;
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                return null;
            }
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                inputStreamReader = new InputStreamReader(fileInputStream2);
                try {
                    String strB = h.b(inputStreamReader);
                    if (TextUtils.isEmpty(strB)) {
                        aVar.msg = "获取配置文件失败 mainfest文件不存在";
                        com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream2);
                        com.kwad.sdk.crash.utils.b.closeQuietly(inputStreamReader);
                        return null;
                    }
                    JSONObject jSONObject = new JSONObject(strB);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        com.kwad.sdk.core.webview.b.a.b bVar2 = new com.kwad.sdk.core.webview.b.a.b();
                        bVar2.parseJson(jSONObject2);
                        String host = Uri.parse("https://" + next).getHost();
                        bVar2.bcS = host;
                        bVar2.bcR = com.kwad.sdk.core.webview.b.c.a.M(context, bVar.bgH) + e.F0 + next;
                        if (TextUtils.isEmpty(bVar2.bcN)) {
                            bVar2.bcN = URLConnection.getFileNameMap().getContentTypeFor(bVar2.bcR);
                        }
                        a(next, bVar2);
                        strFN = host;
                    }
                    ag(bVar.bgG, strFN);
                    com.kwad.sdk.core.webview.b.a.b bVarFM2 = fM(af(strFN, str));
                    com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream2);
                    com.kwad.sdk.crash.utils.b.closeQuietly(inputStreamReader);
                    return bVarFM2;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                    com.kwad.sdk.crash.utils.b.closeQuietly(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    private static void a(String str, com.kwad.sdk.core.webview.b.a.b bVar) {
        bcJ.put(String.valueOf(str.hashCode()), bVar);
    }
}
