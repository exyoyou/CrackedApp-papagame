package com.byazt.tjs;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alipay.sdk.packet.d;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.bwm.n;
import com.byazt.ete.ic;
import com.byazt.gqp.a;
import com.byazt.gqp.da;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.nr.sp;
import com.byazt.omf.gt;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1209, 15})
public class uj implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f20230c = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20231a;
    public List<com.byazt.kj.c> uj = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HashMap<String, HashMap<String, byte[]>> f20232n = new HashMap<>();
    public AtomicInteger tt = new AtomicInteger(0);
    public final ExecutorService ve = n.c();

    private uj(ve veVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        if (veVar != null) {
            if (veVar.c()) {
                com.byazt.kj.tt ttVar = new com.byazt.kj.tt(this, str, str2, jSONObject, str3, str4);
                ttVar.tt();
                this.uj.add(ttVar);
            }
            if (veVar.tt()) {
                com.byazt.kj.ve veVar2 = new com.byazt.kj.ve(this, str, str2, jSONObject, str3, str4);
                veVar2.tt();
                this.uj.add(veVar2);
            }
            this.f20231a = str4;
            f20230c.incrementAndGet();
            c((WebView) null, this.f20231a);
        }
    }

    private String c(int i10) {
        if (i10 == 100) {
            return "Continue";
        }
        if (i10 == 101) {
            return "Switching Protocols";
        }
        switch (i10) {
            case 200:
                return cb.f7689k;
            case 201:
                return "Created";
            case 202:
                return "Accepted";
            case 203:
                return "Non-Authoritative Information";
            case 204:
                return "No Content";
            case 205:
                return "Reset Content";
            case 206:
                return "Partial Content";
            default:
                switch (i10) {
                    case 400:
                        return "Bad Request";
                    case 401:
                        return "Unauthorized";
                    case 402:
                        return "Payment Required";
                    case 403:
                        return "Forbidden";
                    case 404:
                        return "Not Found";
                    case 405:
                        return "Method Not Allowed";
                    case 406:
                        return "Not Acceptable";
                    case 407:
                        return "Proxy Authentication Required";
                    case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                        return "Request Time-out";
                    case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                        return "Conflict";
                    case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                        return "Gone";
                    case TTAdConstant.IMAGE_CODE /* 411 */:
                        return "Length Required";
                    case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                        return "Precondition Failed";
                    case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                        return "Request Entity Too Large";
                    case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                        return "Request-URI Too Large";
                    case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                        return "Unsupported Media Type";
                    case 416:
                        return "Requested range not satisfiable";
                    case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                        return "Expectation Failed";
                    default:
                        switch (i10) {
                            case 500:
                                return "Internal Server Error";
                            case 501:
                                return "Not Implemented";
                            case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                                return "Bad Gateway";
                            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                                return "Service Unavailable";
                            case 504:
                                return "Gateway Time-out";
                            case TypedValues.PositionType.TYPE_SIZE_PERCENT /* 505 */:
                                return "HTTP Version not supported";
                            default:
                                return "";
                        }
                }
        }
    }

    public static boolean ve() {
        return true;
    }

    @Override // com.byazt.tjs.c
    public AtomicInteger tt() {
        return this.tt;
    }

    public void uj() {
        if (!this.uj.isEmpty()) {
            Iterator<com.byazt.kj.c> it2 = this.uj.iterator();
            while (it2.hasNext()) {
                it2.next().ve();
            }
        }
        this.uj.clear();
    }

    public WebResourceResponse tt(WebView webView, final tt ttVar, WebResourceResponse webResourceResponse) {
        String strTt;
        if (ttVar != null && (strTt = ttVar.tt()) != null && TextUtils.equals(strTt, "get")) {
            if (gt.tt().os() == 1) {
                WebResourceResponse webResourceResponseC = c(gt.getContext(), this.f20231a, ttVar);
                if (webResourceResponseC != null) {
                    webResourceResponseC.getResponseHeaders().put(HttpHeaders.Names.ACCESS_CONTROL_ALLOW_ORIGIN, WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD);
                    return webResourceResponseC;
                }
            } else {
                c(new Runnable() { // from class: com.byazt.tjs.uj.2
                    @Override // java.lang.Runnable
                    public void run() {
                        uj.this.c(gt.getContext(), uj.this.f20231a, ttVar);
                    }
                });
            }
        }
        return webResourceResponse;
    }

    @Override // com.byazt.tjs.c
    public HashMap<String, HashMap<String, byte[]>> c() {
        return this.f20232n;
    }

    public static ve c(ic icVar, Context context) {
        boolean z10 = false;
        boolean z11 = icVar.is() == 1;
        boolean zC = com.byazt.ktv.tt.c(icVar.md() / 100.0f, false);
        boolean z12 = gt.tt().tx() == 1;
        boolean z13 = rh.uj(context) || !(gt.tt().y() == 1);
        boolean zVe = ve();
        boolean z14 = z11 && z12 && z13 && zVe;
        if (zC && z12 && zVe) {
            z10 = true;
        }
        ve veVar = new ve();
        veVar.c(z14);
        veVar.tt(z10);
        return veVar;
    }

    public static String tt(Context context) {
        return sp.tt(context, false, null).getAbsolutePath() + File.separator + ".lp_cache";
    }

    public static uj c(Context context, ic icVar, String str) {
        JSONObject jSONObjectQ_;
        ve veVarC = c(icVar, context);
        if ((!veVarC.c() && !veVarC.tt()) || (jSONObjectQ_ = icVar.q_()) == null) {
            return null;
        }
        String strOptString = jSONObjectQ_.optString("cid");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        String strOptString2 = jSONObjectQ_.optString("req_id");
        if (TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new uj(veVarC, strOptString, strOptString2, jSONObjectQ_, icVar.w_(), str);
    }

    public WebResourceResponse c(WebView webView, tt ttVar, WebResourceResponse webResourceResponse) {
        Iterator<com.byazt.kj.c> it2 = this.uj.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            if (it2.next().c(webView)) {
                z10 = true;
            }
        }
        return !z10 ? webResourceResponse : tt(webView, ttVar, webResourceResponse);
    }

    @Override // com.byazt.tjs.c
    public void c(final Runnable runnable) {
        this.ve.submit(new Runnable() { // from class: com.byazt.tjs.uj.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (uj.this.ve) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
            }
        });
    }

    public WebResourceResponse c(final Context context, final String str, final tt ttVar) {
        WebResourceResponse webResourceResponse;
        final Pair<WebResourceResponse, WebResourceResponse> pairC;
        final Pair<WebResourceResponse, da> pairC2 = c(ttVar);
        if (pairC2 == null || (webResourceResponse = (WebResourceResponse) pairC2.first) == null) {
            return null;
        }
        Iterator<com.byazt.kj.c> it2 = this.uj.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            if (it2.next().c((da) pairC2.second)) {
                z10 = true;
            }
        }
        if (!z10 || (pairC = c(webResourceResponse)) == null) {
            return null;
        }
        for (final com.byazt.kj.c cVar : this.uj) {
            cVar.c(ttVar, (WebResourceResponse) pairC.second, (da) pairC2.second, new com.byazt.kj.c.InterfaceC0361c() { // from class: com.byazt.tjs.uj.3
                @Override // com.byazt.kj.c.InterfaceC0361c
                public void c(boolean z11, final Map<String, Object> map) {
                    if (z11) {
                        uj.this.c(new Runnable() { // from class: com.byazt.tjs.uj.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    AtomicBoolean atomicBoolean = cVar.f16275n;
                                    if (atomicBoolean == null || atomicBoolean.get()) {
                                        return;
                                    }
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    uj.this.c(context, str, ttVar, (WebResourceResponse) pairC.second, (da) pairC2.second, map, cVar);
                                } catch (Throwable th) {
                                    m.c(th);
                                }
                            }
                        });
                    }
                }
            });
        }
        return (WebResourceResponse) pairC.first;
    }

    public void c(Context context, String str, tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map, com.byazt.kj.c cVar) {
        if (cVar.c(daVar)) {
            gt.tt().j();
            if (gt.tt().j() == 1) {
                cVar.c(context, str, ttVar, webResourceResponse, daVar, map);
            } else {
                cVar.tt(context, str, ttVar, webResourceResponse, daVar, map);
            }
        }
    }

    private Pair<WebResourceResponse, WebResourceResponse> c(WebResourceResponse webResourceResponse) {
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (com.byazt.edv.tt.c(webResourceResponse.getData(), byteArrayOutputStream) != -1) {
                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                try {
                    byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                } catch (Exception e10) {
                    e = e10;
                    m.c(e);
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        m.c(th);
                    }
                    byteArrayInputStream2 = null;
                }
            } else {
                byteArrayInputStream2 = null;
                byteArrayInputStream = null;
            }
        } catch (Exception e11) {
            e = e11;
            byteArrayInputStream = null;
        }
        if (!ve()) {
            return null;
        }
        String mimeType = webResourceResponse.getMimeType();
        String encoding = webResourceResponse.getEncoding();
        int statusCode = webResourceResponse.getStatusCode();
        String reasonPhrase = webResourceResponse.getReasonPhrase();
        Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
        if (byteArrayInputStream == null) {
            byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
        }
        WebResourceResponse webResourceResponse2 = new WebResourceResponse(mimeType, encoding, statusCode, reasonPhrase, responseHeaders, byteArrayInputStream);
        String mimeType2 = webResourceResponse.getMimeType();
        String encoding2 = webResourceResponse.getEncoding();
        int statusCode2 = webResourceResponse.getStatusCode();
        String reasonPhrase2 = webResourceResponse.getReasonPhrase();
        Map<String, String> responseHeaders2 = webResourceResponse.getResponseHeaders();
        if (byteArrayInputStream2 == null) {
            byteArrayInputStream2 = new ByteArrayInputStream(new byte[0]);
        }
        return new Pair<>(webResourceResponse2, new WebResourceResponse(mimeType2, encoding2, statusCode2, reasonPhrase2, responseHeaders2, byteArrayInputStream2));
    }

    private Pair<WebResourceResponse, da> c(tt ttVar) {
        if (ve() && ttVar != null) {
            try {
                t tVarA = com.byazt.hy.n.c().tt().a();
                yp.c cVar = new yp.c();
                Map<String, String> mapVe = ttVar.ve();
                if (mapVe != null) {
                    for (String str : mapVe.keySet()) {
                        cVar.tt(str, mapVe.get(str));
                    }
                }
                cVar.c(ttVar.c().toString());
                com.byazt.gqp.m mVarTt = tVarA.c(cVar.tt()).tt();
                int iVe = mVarTt.ve();
                if (iVe == 200) {
                    HashMap map = new HashMap();
                    a aVarSp = mVarTt.sp();
                    if (aVarSp != null) {
                        for (int i10 = 0; i10 < aVarSp.c(); i10++) {
                            map.put(aVarSp.c(i10), aVarSp.tt(i10));
                        }
                    }
                    InputStream inputStreamVe = mVarTt.a().ve();
                    da daVarC = c(map);
                    return new Pair<>(new WebResourceResponse(daVarC.c() + e.F0 + daVarC.tt(), daVarC.ve() == null ? null : daVarC.ve().toString(), iVe, c(iVe), map, inputStreamVe), daVarC);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    private da c(Map<String, String> map) {
        String str;
        if (map == null) {
            str = null;
        } else if (map.containsKey("Content-Type")) {
            str = map.get("Content-Type");
        } else if (map.containsKey(d.f7182f)) {
            str = map.get(d.f7182f);
        } else if (map.containsKey("CONTENT-TYPE")) {
            str = map.get("CONTENT-TYPE");
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            str = "text/html; charset=UTF-8";
        }
        return da.c(str);
    }

    public static void c(Context context) {
        if (ve()) {
            try {
                File file = new File(tt(context));
                if (System.currentTimeMillis() - file.lastModified() <= BaseCloudFileManager.ACK_TIMEOUT || !file.exists()) {
                    return;
                }
                com.byazt.edv.c.tt(tt(context));
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    public void c(WebView webView, String str) {
        if (rh.c(str)) {
            this.tt.incrementAndGet();
            this.tt.get();
            Iterator<com.byazt.kj.c> it2 = this.uj.iterator();
            while (it2.hasNext()) {
                it2.next().c(str);
            }
        }
    }
}
