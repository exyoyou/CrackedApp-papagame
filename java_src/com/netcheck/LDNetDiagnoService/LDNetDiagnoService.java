package com.netcheck.LDNetDiagnoService;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.utils.TraceRouterInfo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class LDNetDiagnoService extends LDNetAsyncTaskEx<String, String, String> implements com.netcheck.LDNetDiagnoService.a.InterfaceC0971a, LDNetTraceRoute.a, LDNetSocket.a {
    private static final int L = 1;
    private static final int M = 1;
    private static final int N = 10;
    private static final BlockingQueue<Runnable> O = new LinkedBlockingQueue(2);
    private static final ThreadFactory P = new a();
    private static ThreadPoolExecutor Q = null;
    private List<String> A;
    private List<TraceRouterInfo> B;
    private final StringBuilder C;
    private LDNetSocket D;
    private com.netcheck.LDNetDiagnoService.a E;
    private LDNetTraceRoute F;
    private boolean G;
    private LDNetDiagnoListener H;
    private boolean I;
    private boolean J;
    private int K;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f75796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f75797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f75798j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f75799k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f75800l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f75801m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f75802n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f75803o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f75804p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f75805q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f75806r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f75807s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Context f75808t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f75809u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f75810v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f75811w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f75812x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f75813y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private InetAddress[] f75814z;

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f75815b = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Trace #" + this.f75815b.getAndIncrement());
            thread.setPriority(1);
            return thread;
        }
    }

    public LDNetDiagnoService() {
        this.C = new StringBuilder(256);
        this.I = false;
        this.J = true;
        this.K = 0;
    }

    private boolean m(String str) throws Throwable {
        Map<String, Object> mapA = t7.a.a(str);
        String str2 = (String) mapA.get("useTime");
        this.f75814z = (InetAddress[]) mapA.get("remoteInet");
        String str3 = Integer.parseInt(str2) > 5000 ? " (" + (Integer.parseInt(str2) / 1000) + "s)" : " (" + str2 + "ms)";
        InetAddress[] inetAddressArr = this.f75814z;
        String str4 = "";
        if (inetAddressArr != null) {
            int length = inetAddressArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.A.add(this.f75814z[i10].getHostAddress());
                str4 = str4 + this.f75814z[i10].getHostAddress() + ",";
            }
            return true;
        }
        if (Integer.parseInt(str2) > 10000) {
            Map<String, Object> mapA2 = t7.a.a(str);
            String str5 = (String) mapA2.get("useTime");
            this.f75814z = (InetAddress[]) mapA2.get("remoteInet");
            String str6 = Integer.parseInt(str5) > 5000 ? " (" + (Integer.parseInt(str5) / 1000) + "s)" : " (" + str5 + "ms)";
            InetAddress[] inetAddressArr2 = this.f75814z;
            if (inetAddressArr2 != null) {
                int length2 = inetAddressArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.A.add(this.f75814z[i11].getHostAddress());
                    str4 = str4 + this.f75814z[i11].getHostAddress() + ",";
                }
                o("DNS解析结果:\t" + str4.substring(0, str4.length() - 1) + str6);
                return true;
            }
            o("DNS解析结果:\t解析失败" + str6);
        } else {
            o("DNS解析结果:\t解析失败" + str3);
        }
        return false;
    }

    private void n() {
        if (t7.a.e(this.f75808t).booleanValue()) {
            this.f75805q = true;
        } else {
            this.f75805q = false;
        }
        if (this.f75805q) {
            t7.a.f97141e.equals(this.f75809u);
        }
        if (this.f75805q) {
            this.f75812x = t7.a.b("dns1");
            this.f75813y = t7.a.b("dns2");
        }
        if (this.f75805q) {
            this.f75806r = m(this.f75800l);
        }
    }

    private void o(String str) {
        this.C.append(str + "\n");
        i(str + "\n");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a A[PHI: r0 r1
      0x004a: PHI (r0v7 java.lang.String) = (r0v6 java.lang.String), (r0v9 java.lang.String) binds: [B:20:0x0048, B:25:0x0053] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r1v4 java.net.HttpURLConnection) = (r1v3 java.net.HttpURLConnection), (r1v5 java.net.HttpURLConnection) binds: [B:20:0x0048, B:25:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    private String p() throws Throwable {
        String str;
        Throwable th;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        strD = null;
        strD = null;
        String strD = null;
        httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL("").openConnection();
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() == 200) {
                        strD = t7.a.d(httpURLConnection.getInputStream());
                        httpURLConnection.disconnect();
                    }
                    httpURLConnection.disconnect();
                    return strD;
                } catch (MalformedURLException e10) {
                    e = e10;
                    String str2 = strD;
                    httpURLConnection2 = httpURLConnection;
                    str = str2;
                    e.printStackTrace();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return str;
                } catch (IOException e11) {
                    e = e11;
                    String str3 = strD;
                    httpURLConnection2 = httpURLConnection;
                    str = str3;
                    e.printStackTrace();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        } catch (MalformedURLException e12) {
            e = e12;
            str = null;
        } catch (IOException e13) {
            e = e13;
            str = null;
        }
    }

    @Override // com.netcheck.LDNetDiagnoService.a.InterfaceC0971a
    public void OnNetPingFinished(String str) {
        o(str);
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetSocket.a
    public void OnNetSocketFinished(String str) {
        this.C.append(str);
        i(str);
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetSocket.a
    public void OnNetSocketUpdated(String str) {
        this.C.append(str);
        i(str);
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetTraceRoute.a
    public void OnNetTraceFinished() {
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetTraceRoute.a
    public void OnNetTraceUpdated(String str, TraceRouterInfo traceRouterInfo) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            return;
        }
        LDNetTraceRoute lDNetTraceRoute = this.F;
        if (lDNetTraceRoute == null || !lDNetTraceRoute.isCTrace) {
            o(str);
            return;
        }
        if (str.contains("ms") || str.contains("***")) {
            str = str + ";\n";
        }
        this.C.append(str);
        if (traceRouterInfo != null) {
            this.B.add(traceRouterInfo);
        }
        i(str);
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetAsyncTaskEx
    protected ThreadPoolExecutor d() {
        return Q;
    }

    @Override // com.netcheck.LDNetDiagnoService.LDNetAsyncTaskEx
    protected void e() {
        stopNetDialogsis();
    }

    public boolean isRunning() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netcheck.LDNetDiagnoService.LDNetAsyncTaskEx
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String b(String... strArr) {
        if (isCancelled()) {
            return null;
        }
        return startNetDiagnosis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netcheck.LDNetDiagnoService.LDNetAsyncTaskEx
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void f(String str) {
        if (isCancelled()) {
            return;
        }
        super.f(str);
        stopNetDialogsis();
        LDNetDiagnoListener lDNetDiagnoListener = this.H;
        if (lDNetDiagnoListener != null) {
            lDNetDiagnoListener.OnNetDiagnoFinished(this.C.toString(), this.B);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netcheck.LDNetDiagnoService.LDNetAsyncTaskEx
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void h(String... strArr) {
        if (isCancelled()) {
            return;
        }
        super.h(strArr);
        LDNetDiagnoListener lDNetDiagnoListener = this.H;
        if (lDNetDiagnoListener != null) {
            lDNetDiagnoListener.OnNetDiagnoUpdated(strArr[0]);
        }
    }

    public void printLogInfo() {
        System.out.print(this.C);
    }

    public void setIfUseJNICConn(boolean z10) {
        this.I = z10;
    }

    public void setIfUseJNICTrace(boolean z10) {
        this.J = z10;
    }

    public void setTraceTimes(int i10) {
        this.K = i10;
    }

    public String startNetDiagnosis() throws Throwable {
        if (TextUtils.isEmpty(this.f75800l) || this.G) {
            return "";
        }
        this.G = true;
        this.C.setLength(0);
        this.B = new ArrayList();
        n();
        if (!this.f75805q) {
            o("\n\n当前主机未联网,请检查网络！");
            return this.C.toString();
        }
        LDNetTraceRoute lDNetTraceRoute = new LDNetTraceRoute();
        this.F = lDNetTraceRoute;
        lDNetTraceRoute.initListenter(this);
        LDNetTraceRoute lDNetTraceRoute2 = this.F;
        lDNetTraceRoute2.isCTrace = this.J;
        lDNetTraceRoute2.setTraceTimes(this.K);
        this.F.startTraceRoute(this.f75800l);
        return this.C.toString();
    }

    public void stopNetDialogsis() {
        if (this.G) {
            LDNetSocket lDNetSocket = this.D;
            if (lDNetSocket != null) {
                lDNetSocket.h();
                this.D = null;
            }
            if (this.E != null) {
                this.E = null;
            }
            LDNetTraceRoute lDNetTraceRoute = this.F;
            if (lDNetTraceRoute != null) {
                lDNetTraceRoute.resetInstance();
                this.F = null;
            }
            cancel(true);
            ThreadPoolExecutor threadPoolExecutor = Q;
            if (threadPoolExecutor != null && !threadPoolExecutor.isShutdown()) {
                Q.shutdown();
                Q = null;
            }
            this.G = false;
        }
    }

    public LDNetDiagnoService(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, LDNetDiagnoListener lDNetDiagnoListener) {
        this.C = new StringBuilder(256);
        this.I = false;
        this.J = true;
        this.K = 0;
        this.f75808t = context;
        this.f75796h = str;
        this.f75797i = str2;
        this.f75798j = str3;
        this.f75799k = str4;
        this.f75800l = str5;
        this.f75801m = str6;
        this.f75802n = str7;
        this.f75803o = str8;
        this.f75804p = str9;
        this.H = lDNetDiagnoListener;
        this.G = false;
        this.A = new ArrayList();
        Q = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, O, P);
    }
}
