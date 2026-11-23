package com.sdk.a;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Base64;
import com.kwad.sdk.collector.AppStatusRules;
import com.sdk.base.framework.bean.DataUtils;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.sdk.base.module.manager.SDKManager;
import com.umeng.analytics.AnalyticsConfig;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c<T> extends com.sdk.d.c<Object, Object, Void> implements com.sdk.c.b {
    public static final b B = new b(AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE, 60000);
    public static TreeMap<String, Object> C = new TreeMap<>();
    public String A;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public com.sdk.e.b<T> f78390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f78391k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f78392l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f78394n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f78396p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Boolean f78399s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Boolean f78400t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f78401u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public e<T> f78402v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f78403w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TreeMap<String, Object> f78404x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f78405y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f78406z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f78389i = b.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a f78393m = a.WAITING;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f78395o = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f78397q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f78398r = false;

    public enum a {
        WAITING(0),
        STARTED(1),
        LOADING(2),
        FAILURE(3),
        CANCELLED(4),
        SUCCESS(5);

        a(int i10) {
        }
    }

    public c(d<T> dVar) {
        Boolean bool = Boolean.FALSE;
        this.f78399s = bool;
        this.f78400t = bool;
        this.f78401u = bool;
        this.f78406z = 1;
        e<T> eVarA = dVar.a();
        this.f78402v = eVarA;
        if (eVarA != null) {
            this.f78391k = eVarA.b();
            this.f78392l = this.f78402v.d();
            this.f78394n = this.f78402v.c();
            this.f78390j = this.f78402v.a();
        }
    }

    public boolean a(long j10, long j11, boolean z10) {
        LogUtils.d_yl("PriorityAsyncTask", "HttpHandler updateProgress 开始", 0);
        if (this.f78390j != null && this.f78393m != a.CANCELLED) {
            if (z10) {
                a(2, Long.valueOf(j10), Long.valueOf(j11));
            } else {
                long jUptimeMillis = SystemClock.uptimeMillis();
                long j12 = jUptimeMillis - this.f78396p;
                this.f78390j.getClass();
                if (j12 >= 1000) {
                    this.f78396p = jUptimeMillis;
                    a(2, Long.valueOf(j10), Long.valueOf(j11));
                }
            }
        }
        return this.f78393m != a.CANCELLED;
    }

    public final String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", 1);
            jSONObject.put("status", 102001);
            jSONObject.put("msg", "选择流量通道失败");
            jSONObject.put(RtspHeaders.Values.SEQ, 102001);
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public void a() {
        this.f78393m = a.CANCELLED;
        if (this.f78487c.get()) {
            return;
        }
        try {
            this.f78487c.set(true);
            this.f78486b.cancel(true);
        } catch (Throwable th) {
            LogUtils.e("PriorityAsyncTask", th.getMessage(), this.f78490f);
        }
    }

    public final f<T> b(d<T> dVar, HttpURLConnection httpURLConnection) {
        f<T> fVarB;
        String strA;
        LogUtils.d_yl("PriorityAsyncTask", "private ResponseData<T> sendRequest()", 0);
        try {
            b bVar = B;
            if (bVar.b(this.f78391k) && (strA = bVar.a(this.f78392l)) != null) {
                return new f<>(0, strA, true);
            }
            if (this.f78399s.booleanValue() && this.f78398r) {
                File file = new File(this.f78397q);
                long length = (file.isFile() && file.exists()) ? file.length() : 0L;
                if (length > 0) {
                    httpURLConnection.setRequestProperty("RANGE", "bytes=" + length + "-");
                }
            }
            TreeMap<String, Object> treeMap = new TreeMap<>();
            this.f78404x = treeMap;
            treeMap.clear();
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f78403w = jCurrentTimeMillis;
            this.f78404x.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(jCurrentTimeMillis));
            this.f78404x.put("url", httpURLConnection.getURL());
            LogUtils.d_yl("PriorityAsyncTask", "sendRequest() sendRequesturl" + httpURLConnection.getURL(), 3);
            HttpURLConnection httpURLConnectionA = dVar.a(httpURLConnection);
            this.f78405y = System.currentTimeMillis();
            this.f78404x.put("forcedTime", Long.valueOf(dVar.f78420c));
            this.f78404x.put("endTime", Long.valueOf(this.f78405y));
            TreeMap<String, Object> treeMap2 = C;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("step");
            int i10 = this.f78406z;
            this.f78406z = i10 + 1;
            sb2.append(i10);
            treeMap2.put(sb2.toString(), this.f78404x);
            LogUtils.d_yl("PriorityAsyncTask", "HttpHandler sendRequest; accessTreeMap:" + C.toString(), 3);
            fVarB = a(dVar, httpURLConnectionA);
            if (fVarB != null) {
                return fVarB;
            }
            f<T> fVar = new f<>(1, "网络访问异常", false);
            LogUtils.d_yl("PriorityAsyncTask", "HttpHandler：responseInfo=null网络访问异常", 0);
            return fVar;
        } catch (Throwable th) {
            MobileLogManager.status302002(th.toString());
            LogUtils.d_yl("PriorityAsyncTask", "访问异常HttpHandler：" + th.toString(), 0);
            int i11 = this.f78394n;
            if (i11 > 0) {
                this.f78394n = i11 - 1;
                fVarB = b(dVar, httpURLConnection);
            } else {
                fVarB = null;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final f<T> a(d<T> dVar, HttpURLConnection httpURLConnection) {
        int i10;
        int i11;
        int i12;
        int i13;
        String strA;
        Object byteArray;
        LogUtils.d_yl("PriorityAsyncTask", "HttpHandler handleResponse 开始", 0);
        if (this.f78487c.get()) {
            return new f<>(1, "网络访问已取消", false);
        }
        LogUtils.d_yl("PriorityAsyncTask", "HttpHandler handleResponse 跳过 isCancelled", 0);
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                URL url = httpURLConnection.getURL();
                MobileLogManager.status101005(url.toString(), jCurrentTimeMillis - this.f78403w);
                LogUtils.d_yl("PriorityAsyncTask", "HttpHandler handleResponse 跳过 MobileLogManager.status101005", 0);
                LogUtils.d_yl("PriorityAsyncTask", "handleResponse 正式发送数据 开始", 0);
                int responseCode = httpURLConnection.getResponseCode();
                try {
                    LogUtils.d_yl("PriorityAsyncTask", "handleResponse 正式发送数据 结束", 0);
                    LogUtils.d_yl("PriorityAsyncTask", "HttpHandler handleResponse 跳过 statusCode=" + responseCode, 0);
                    LogUtils.d_yl("OAUTH_SDK", "HttpHandler handleResponse 打印\nnet请求host：" + url.getHost() + "\n net请求path：" + url.getPath() + "\n net请求Query：" + url.getQuery() + "\n  net请求码：" + responseCode, 3);
                    if (responseCode == 200 && httpURLConnection.toString().contains("gmbs")) {
                        this.f78404x.put("endTime", Long.valueOf(jCurrentTimeMillis));
                    }
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (this.f78490f.booleanValue()) {
                        new TreeMap().put(httpURLConnection.getURL().toString(), Long.valueOf(jCurrentTimeMillis2 - this.f78403w));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("响应返回：code=");
                        sb2.append(responseCode);
                        sb2.append(";耗时=");
                        i13 = responseCode;
                        try {
                            sb2.append(System.currentTimeMillis() - this.f78403w);
                            LogUtils.d_yl("PriorityAsyncTask", sb2.toString(), 1);
                        } catch (SocketTimeoutException unused) {
                            i12 = i13;
                            i10 = i12;
                            com.sdk.j.a.b(SDKManager.getContext(), RtspHeaders.Values.SEQ, "qcTimeout");
                            i11 = i10;
                            MobileLogManager.status302002("服务异常 ResponseCode = " + i11);
                            LogUtils.e("PriorityAsyncTask", "服务异常 ResponseCode = " + i11, this.f78490f);
                            return new f<>(0, "服务端数据格式出错", false);
                        }
                    } else {
                        i13 = responseCode;
                    }
                    this.f78404x.put("endTime", Long.valueOf(jCurrentTimeMillis2));
                    LogUtils.d_yl("PriorityAsyncTask", "step访问结束时间" + jCurrentTimeMillis2, 0);
                    if (dVar.f78419b.f78436b.contains("nisportal")) {
                        new DataUtils.Access_process().setIfProtal(1);
                        C.put("ifProtal", 1);
                    }
                    if (httpURLConnection.getURL().getPath() == null) {
                        System.currentTimeMillis();
                        new ArrayList();
                        new ArrayList();
                        new ArrayList();
                        System.currentTimeMillis();
                    }
                    i12 = i13;
                    try {
                        if (i12 < 300) {
                            LogUtils.d_yl("PriorityAsyncTask", "(statusCode < 300)", 0);
                            this.f78395o = false;
                            if (this.f78398r) {
                                this.f78399s = Boolean.valueOf(this.f78399s.booleanValue() && com.sdk.l.a.b(httpURLConnection));
                                new com.sdk.c.a().a(httpURLConnection, this, this.f78397q, this.f78399s.booleanValue(), this.f78400t.booleanValue() ? com.sdk.l.a.a(httpURLConnection) : null);
                            }
                            if (this.f78401u.booleanValue()) {
                                InputStream inputStream = httpURLConnection.getInputStream();
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i14 = inputStream.read(bArr);
                                    if (i14 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i14);
                                }
                                byteArrayOutputStream.flush();
                                byteArray = byteArrayOutputStream.toByteArray();
                            } else {
                                strA = new com.sdk.c.c().a(httpURLConnection, this, "UTF-8");
                                b bVar = B;
                                if (bVar.b(this.f78391k)) {
                                    byteArray = strA;
                                    bVar.a(this.f78392l, strA, this.f78389i);
                                    byteArray = strA;
                                }
                            }
                            byteArray = strA;
                            httpURLConnection.disconnect();
                            return new f<>(0, byteArray, false);
                        }
                        if (i12 == 301 || i12 == 302) {
                            LogUtils.d_yl("PriorityAsyncTask", "(statusCode == 301 || statusCode == 302)", 0);
                            MobileLogManager.status101005(dVar.f78419b.f78436b, System.currentTimeMillis() - this.f78403w);
                            String str = dVar.f78419b.f78436b;
                            String strA2 = com.sdk.j.a.a(SDKManager.getContext(), RtspHeaders.Values.SEQ, (String) null);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("handleResponse seq: ");
                            sb3.append(strA2);
                            if (strA2 == null) {
                                Uri uri = Uri.parse(str);
                                if (str.contains("ret_url")) {
                                    Uri uri2 = Uri.parse(new String(Base64.decode(uri.getQueryParameter("ret_url"), 0)));
                                    this.A = uri2.getQueryParameter(RtspHeaders.Values.SEQ);
                                    com.sdk.j.a.b(SDKManager.getContext(), RtspHeaders.Values.SEQ, this.A);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("格式匹配seq--->");
                                    sb4.append(uri2.getQueryParameter(RtspHeaders.Values.SEQ));
                                }
                            }
                            String headerField = httpURLConnection.getHeaderField("Location");
                            String headerField2 = httpURLConnection.getHeaderField(HttpHeaders.Names.SET_COOKIE);
                            String path = httpURLConnection.getURL().getPath();
                            if (headerField == null) {
                                System.currentTimeMillis();
                                new ArrayList();
                                new ArrayList();
                                new ArrayList();
                                System.currentTimeMillis();
                            }
                            if (com.sdk.r.a.b(headerField).booleanValue()) {
                                e<T> eVar = dVar.f78419b;
                                eVar.f78436b = headerField;
                                boolean z10 = com.sdk.n.a.c.f78561a == eVar.f78442h;
                                com.sdk.l.a.a(headerField);
                                HttpURLConnection httpURLConnectionA = dVar.a(headerField, z10);
                                if (!com.sdk.r.a.b(headerField2).booleanValue()) {
                                    headerField2 = com.sdk.j.a.b(SDKManager.getContext(), "ctc");
                                } else if ("/ctcnet/gctcmc.do".equals(path)) {
                                    com.sdk.j.a.b(SDKManager.getContext(), "ctc", headerField2);
                                    LogUtils.i("PriorityAsyncTask", "mdb Cookie cache", this.f78490f);
                                }
                                httpURLConnectionA.setRequestProperty("Cookie", headerField2);
                                return httpURLConnectionA == null ? new f<>(0, b(), false) : b(dVar, httpURLConnectionA);
                            }
                            httpURLConnection.disconnect();
                        }
                        i11 = i12;
                        MobileLogManager.status302002("服务异常 ResponseCode = " + i11);
                        LogUtils.e("PriorityAsyncTask", "服务异常 ResponseCode = " + i11, this.f78490f);
                        return new f<>(0, "服务端数据格式出错", false);
                    } catch (SocketTimeoutException unused2) {
                        i10 = i12;
                        com.sdk.j.a.b(SDKManager.getContext(), RtspHeaders.Values.SEQ, "qcTimeout");
                        i11 = i10;
                    }
                } catch (SocketTimeoutException unused3) {
                    i12 = responseCode;
                }
            } catch (SocketTimeoutException unused4) {
                i10 = -1;
            }
        } catch (Exception e10) {
            MobileLogManager.status302002(e10.toString());
            LogUtils.e("PriorityAsyncTask", e10.toString(), this.f78490f);
            return new f<>(1, "网络访问异常", false);
        }
    }
}
