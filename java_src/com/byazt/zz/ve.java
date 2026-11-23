package com.byazt.zz;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.DownloadHandleService;
import com.byazt.c.eo;
import com.byazt.c.nb;
import com.byazt.c.p;
import com.byazt.hs.IDownloadHttpService;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.Dispatcher;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile com.byazt.b.c f23118a;
    public static final int aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f23119b;
    public static int bm;
    public static int bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Context f23120c;
    public static volatile com.byazt.hs.a cu;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile IDownloadHttpService f23122da;
    public static volatile sp gr;
    public static volatile ExecutorService gt;
    public static volatile ScheduledExecutorService gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile p f23123h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public static final int f23124hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile c f23125i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public static final int f23126ic;
    public static com.byazt.zl.ve kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final List<com.byazt.c.sl> f23127l;
    public static final List<Object> lo;
    public static boolean lr;
    public static boolean lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile ExecutorService f23128m;
    public static volatile com.byazt.zl.tt md;
    public static volatile ExecutorService my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile eo f23129n;
    public static volatile ExecutorService nu;
    public static volatile com.byazt.hs.a or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile nu f23131p;
    public static int pu;
    public static volatile rl qp;
    public static volatile ExecutorService qy;
    public static volatile ExecutorService rh;
    public static volatile ExecutorService rl;
    public static volatile com.byazt.hs.x sl;
    public static volatile z sp;
    public static final int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile IDownloadHttpService f23132t;
    public static rh tk;
    public static boolean to;
    public static volatile da tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile com.byazt.hs.x f23133u;
    public static volatile x uj;
    public static volatile sl ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile z f23134x;
    public static volatile t yp;
    public static volatile my yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile ExecutorService f23135z;
    public static volatile DownloadReceiver zm;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile List<nb> f23121d = new ArrayList();
    public static volatile boolean eo = false;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public static volatile OkHttpClient f23136zb = null;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public static final List<com.byazt.c.u> f23130nb = new ArrayList();
    public static boolean pf = false;

    public interface c {

        /* JADX INFO: renamed from: com.byazt.zz.ve$c$c, reason: collision with other inner class name */
        public interface InterfaceC0510c {
            void c();
        }

        gt c(InterfaceC0510c interfaceC0510c);

        z c();

        u tt();
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        sv = iAvailableProcessors;
        aw = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        f23126ic = iAvailableProcessors;
        f23124hd = iAvailableProcessors;
        bm = 8192;
        f23127l = new ArrayList();
        lo = new ArrayList();
        lt = true;
        to = false;
        f23119b = false;
    }

    private ve() {
    }

    public static com.byazt.hs.x a() {
        return sl;
    }

    public static rl aw() {
        if (qp == null) {
            synchronized (ve.class) {
                if (qp == null) {
                    qp = new rl.c();
                }
            }
        }
        return qp;
    }

    @NonNull
    public static com.byazt.zl.ve bm() {
        if (kp == null) {
            kp = new com.byazt.zl.ve() { // from class: com.byazt.zz.ve.3
                @Override // com.byazt.zl.ve
                public void c(int i10, String str, JSONObject jSONObject) {
                }

                @Override // com.byazt.zl.ve
                public void tt(int i10, String str, JSONObject jSONObject) {
                }
            };
        }
        return kp;
    }

    public static sp bx() {
        if (gr == null) {
            synchronized (ve.class) {
                if (gr == null) {
                    gr = new com.byazt.b.tt();
                }
            }
        }
        return gr;
    }

    public static void c(rh rhVar) {
    }

    public static boolean cu() {
        return lt;
    }

    public static com.byazt.b.c d() {
        if (f23118a == null) {
            synchronized (ve.class) {
                if (f23118a == null) {
                    f23118a = new com.byazt.b.n();
                }
            }
        }
        return f23118a;
    }

    public static boolean da() {
        return com.byazt.k.c.ve().c("switch_not_auto_boot_service", to ? 1 : 0) > 0;
    }

    public static int eo() {
        return pu;
    }

    public static synchronized t gr() {
        return yp;
    }

    public static ScheduledExecutorService gt() {
        if (gu == null) {
            synchronized (ve.class) {
                if (gu == null) {
                    gu = new com.byazt.jtc.n(1, new com.byazt.u.c("DownloadThreadPool-Schedule", true));
                }
            }
        }
        return gu;
    }

    public static com.byazt.hs.a gu() {
        if (cu == null) {
            synchronized (ve.class) {
                if (cu == null) {
                    cu = new com.byazt.hs.a() { // from class: com.byazt.zz.ve.2
                        @Override // com.byazt.hs.a
                        public List<InetAddress> c(String str) throws UnknownHostException {
                            return Dns.SYSTEM.lookup(str);
                        }
                    };
                }
            }
        }
        return cu;
    }

    public static sl h() {
        if (ve == null) {
            synchronized (ve.class) {
                if (ve == null) {
                    ve = new com.byazt.b.i();
                }
            }
        }
        return ve;
    }

    public static synchronized boolean hd() {
        return lr;
    }

    public static com.byazt.hs.x i() {
        if (f23133u == null) {
            synchronized (ve.class) {
                if (f23133u == null) {
                    f23133u = new com.byazt.b.a();
                }
            }
        }
        return f23133u;
    }

    public static synchronized Context ic() {
        return f23120c;
    }

    public static boolean l() {
        return f23119b;
    }

    public static boolean lo() {
        StringBuilder sb2 = new StringBuilder("supportMultiProc::=");
        sb2.append(f23125i != null);
        com.byazt.x.c.c("wjd", sb2.toString());
        return f23125i != null;
    }

    public static rh lr() {
        return tk;
    }

    private static void lt() {
        if (zm == null) {
            zm = new DownloadReceiver();
        }
        if (pf) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            f23120c.registerReceiver(zm, intentFilter);
            pf = true;
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public static ExecutorService m() {
        if (nu == null) {
            synchronized (ve.class) {
                if (nu == null) {
                    int i10 = f23126ic;
                    com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.u.c("DownloadThreadPool-mix-fixed", true));
                    try {
                        ujVar.allowCoreThreadTimeOut(true);
                    } catch (Throwable th) {
                        com.byazt.nr.m.c(th);
                    }
                    nu = ujVar;
                }
            }
        }
        return nu;
    }

    public static List<com.byazt.c.u> md() {
        return f23130nb;
    }

    public static OkHttpClient my() {
        if (f23136zb == null) {
            synchronized (ve.class) {
                if (f23136zb == null) {
                    f23136zb = rl().build();
                }
            }
        }
        return f23136zb;
    }

    public static List<nb> n() {
        List<nb> list;
        synchronized (f23121d) {
            list = f23121d;
        }
        return list;
    }

    public static x nb() {
        if (uj == null) {
            synchronized (ve.class) {
                if (uj == null) {
                    uj = new com.byazt.b.ve();
                }
            }
        }
        return uj;
    }

    public static ExecutorService nu() {
        if (rl == null) {
            synchronized (ve.class) {
                if (rl == null) {
                    int i10 = aw;
                    com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.u.c("DownloadThreadPool-chunk-fixed", true));
                    try {
                        ujVar.allowCoreThreadTimeOut(true);
                    } catch (Throwable th) {
                        com.byazt.nr.m.c(th);
                    }
                    rl = ujVar;
                }
            }
        }
        return rl;
    }

    public static void or() {
        if (TextUtils.isEmpty(com.byazt.ev.n.ve)) {
            com.byazt.ev.n.ve = "oppo";
            com.byazt.ev.n.tt = "oppo".toUpperCase();
        }
    }

    public static z p() {
        if (f23134x == null) {
            synchronized (ve.class) {
                if (f23134x == null) {
                    f23134x = f23125i.c();
                }
            }
        }
        return f23134x;
    }

    public static eo pf() {
        return f23129n;
    }

    public static c pu() {
        return f23125i;
    }

    public static synchronized int qp() {
        return bm;
    }

    public static com.byazt.hs.a qy() {
        return or;
    }

    public static ExecutorService rh() {
        if (gt == null) {
            synchronized (ve.class) {
                if (gt == null) {
                    int i10 = f23124hd;
                    com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.u.c("DownloadThreadPool-db-fixed", true));
                    try {
                        ujVar.allowCoreThreadTimeOut(true);
                    } catch (Throwable th) {
                        com.byazt.nr.m.c(th);
                    }
                    gt = ujVar;
                }
            }
        }
        return gt;
    }

    public static OkHttpClient.Builder rl() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(30000L, timeUnit).readTimeout(30000L, timeUnit).writeTimeout(30000L, timeUnit).retryOnConnectionFailure(true).followRedirects(true).protocols(Collections.singletonList(Protocol.HTTP_1_1));
        if (qy != null) {
            builder.dispatcher(new Dispatcher(qy));
        }
        return builder;
    }

    public static synchronized nu sl() {
        return f23131p;
    }

    public static com.byazt.zl.tt sp() {
        return md;
    }

    public static my sv() {
        if (yv == null) {
            synchronized (ve.class) {
                if (yv == null) {
                    yv = new com.byazt.b.da();
                }
            }
        }
        return yv;
    }

    public static ExecutorService t() {
        if (f23135z == null) {
            synchronized (ve.class) {
                if (f23135z == null) {
                    int i10 = sv;
                    com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.u.c("DownloadThreadPool-cpu-fixed", true));
                    try {
                        ujVar.allowCoreThreadTimeOut(true);
                    } catch (Throwable th) {
                        com.byazt.nr.m.c(th);
                    }
                    f23135z = ujVar;
                }
            }
        }
        return f23135z;
    }

    public static synchronized void tt(DownloaderBuilder downloaderBuilder) {
        ve(downloaderBuilder);
    }

    public static ExecutorService u() {
        return f23128m != null ? f23128m : t();
    }

    public static IDownloadHttpService uj() {
        return f23122da;
    }

    private static void ve(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder != null) {
            if (downloaderBuilder.getContext() != null) {
                c(downloaderBuilder.getContext());
            }
            if (downloaderBuilder.getDownloadCache() != null) {
                c(downloaderBuilder.getDownloadCache());
            }
            if (downloaderBuilder.getIdGenerator() != null) {
                c(downloaderBuilder.getIdGenerator());
            }
            if (downloaderBuilder.getChunkCntCalculator() != null) {
                c(downloaderBuilder.getChunkCntCalculator());
            }
            if (downloaderBuilder.getNotificationClickCallback() != null) {
                c(downloaderBuilder.getNotificationClickCallback());
            }
            if (downloaderBuilder.getMaxDownloadPoolSize() != 0) {
                tt(downloaderBuilder.getMaxDownloadPoolSize());
            }
            if (downloaderBuilder.getHttpService() != null) {
                c(downloaderBuilder.getHttpService());
            }
            if (downloaderBuilder.getHeadHttpService() != null) {
                c(downloaderBuilder.getHeadHttpService());
            }
            if (downloaderBuilder.getDownloadLaunchHandler() != null) {
                c(downloaderBuilder.getDownloadLaunchHandler());
            }
            if (downloaderBuilder.getCPUThreadExecutor() != null) {
                ve(downloaderBuilder.getCPUThreadExecutor());
            }
            if (downloaderBuilder.getIOThreadExecutor() != null) {
                uj(downloaderBuilder.getIOThreadExecutor());
            }
            if (downloaderBuilder.getMixDefaultDownloadExecutor() != null) {
                n(downloaderBuilder.getMixDefaultDownloadExecutor());
            }
            if (downloaderBuilder.getMixFrequentDownloadExecutor() != null) {
                a(downloaderBuilder.getMixFrequentDownloadExecutor());
            }
            if (downloaderBuilder.getMixApkDownloadExecutor() != null) {
                sp(downloaderBuilder.getMixApkDownloadExecutor());
            }
            if (downloaderBuilder.getDBThreadExecutor() != null) {
                x(downloaderBuilder.getDBThreadExecutor());
            }
            if (downloaderBuilder.getChunkThreadExecutor() != null) {
                c(downloaderBuilder.getChunkThreadExecutor());
            }
            if (downloaderBuilder.getOkHttpDispatcherExecutor() != null) {
                tt(downloaderBuilder.getOkHttpDispatcherExecutor());
            }
            if (!downloaderBuilder.getDownloadCompleteHandlers().isEmpty()) {
                c(downloaderBuilder.getDownloadCompleteHandlers());
            }
            if (downloaderBuilder.getMonitorConfig() != null) {
                f23131p = downloaderBuilder.getMonitorConfig();
            }
            if (downloaderBuilder.getWriteBufferSize() > 1024) {
                bm = downloaderBuilder.getWriteBufferSize();
            }
            if (downloaderBuilder.getChunkAdjustCalculator() != null) {
                c(downloaderBuilder.getChunkAdjustCalculator());
            }
            if (downloaderBuilder.isDownloadInMultiProcess()) {
                eo = true;
            }
            if (downloaderBuilder.getDownloadExpSwitch() != 0) {
                pu = downloaderBuilder.getDownloadExpSwitch();
            }
            if (downloaderBuilder.getDownloadSetting() != null) {
                c(downloaderBuilder.getDownloadSetting());
            }
            if (downloaderBuilder.getDownloadDns() != null) {
                or = downloaderBuilder.getDownloadDns();
            }
            if (downloaderBuilder.getTTNetHandler() != null) {
                rl tTNetHandler = downloaderBuilder.getTTNetHandler();
                qp = tTNetHandler;
                if (tTNetHandler.c()) {
                    c(qp.tt());
                    c(qp.ve());
                } else {
                    c(x());
                    c(i());
                }
            }
            tt(downloaderBuilder.needAutoRefreshUnSuccessTask());
            if (downloaderBuilder.getDownloadMonitorListener() != null) {
                c(downloaderBuilder.getDownloadMonitorListener());
            }
        }
    }

    public static IDownloadHttpService x() {
        if (f23132t == null) {
            synchronized (ve.class) {
                if (f23132t == null) {
                    f23132t = new com.byazt.b.sp();
                }
            }
        }
        return f23132t;
    }

    public static ExecutorService yp() {
        return rh != null ? rh : m();
    }

    public static z yv() {
        if (sp == null) {
            synchronized (ve.class) {
                if (sp == null) {
                    sp = new com.byazt.b.x();
                }
            }
        }
        return sp;
    }

    public static ExecutorService z() {
        return my != null ? my : m();
    }

    @NonNull
    public static JSONObject zb() {
        return (f23123h == null || f23123h.c() == null) ? com.byazt.ev.n.f14038i : f23123h.c();
    }

    public static da zm() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new com.byazt.b.uj();
                }
            }
        }
        return tt;
    }

    private static void a(ExecutorService executorService) {
        if (executorService != null) {
            rh = executorService;
        }
    }

    public static synchronized void c(DownloaderBuilder downloaderBuilder) {
        if (f23119b) {
            com.byazt.x.c.n("DownloadComponentManager", "component has init");
            return;
        }
        boolean z10 = eo;
        ve(downloaderBuilder);
        if (tt == null) {
            tt = new com.byazt.b.uj();
        }
        if (sp == null) {
            sp = new com.byazt.b.x();
        }
        if (f23134x == null && f23125i != null) {
            f23134x = f23125i.c();
        }
        if (ve == null) {
            ve = new com.byazt.b.i();
        }
        if (f23118a == null) {
            f23118a = new com.byazt.b.n();
        }
        if (uj == null) {
            uj = new com.byazt.b.ve();
        }
        if (gr == null) {
            gr = new com.byazt.b.tt();
        }
        if (yv == null) {
            yv = new com.byazt.b.da();
        }
        int i10 = bx;
        if (i10 <= 0 || i10 > sv) {
            bx = sv;
        }
        lt();
        if (eo && !z10 && !com.byazt.w.a.ve()) {
            com.byazt.b.t.c(true).startService();
        } else if (com.byazt.w.a.uj()) {
            ExecutorService executorServiceU = u();
            if (executorServiceU != null) {
                executorServiceU.execute(new Runnable() { // from class: com.byazt.zz.ve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context contextIc = ve.ic();
                        if (contextIc != null) {
                            com.byazt.w.a.uj(contextIc);
                        }
                    }
                });
            }
        } else {
            Context contextIc = ic();
            if (contextIc != null) {
                com.byazt.w.a.uj(contextIc);
            }
        }
        or();
        f23119b = true;
    }

    private static void sp(ExecutorService executorService) {
        if (executorService != null) {
            my = executorService;
        }
    }

    private static void uj(ExecutorService executorService) {
        if (executorService != null) {
            f23128m = executorService;
        }
    }

    public static synchronized void tt() {
        if (eo) {
            return;
        }
        eo = true;
        try {
            Intent intent = new Intent(ic(), (Class<?>) DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY");
            ic().startService(intent);
            if (!com.byazt.w.a.ve()) {
                com.byazt.b.t.c(true).startService();
            }
        } catch (Throwable th) {
            eo = false;
            com.byazt.nr.m.c(th);
        }
    }

    private static void n(ExecutorService executorService) {
        if (executorService != null) {
            nu = executorService;
        }
    }

    private static void x(ExecutorService executorService) {
        if (executorService != null) {
            gt = executorService;
        }
    }

    public static void tt(com.byazt.c.sl slVar) {
        List<com.byazt.c.sl> list = f23127l;
        synchronized (list) {
            if (slVar != null) {
                if (list.contains(slVar)) {
                    list.remove(slVar);
                }
            }
        }
    }

    public static void tt(DownloadTask downloadTask, int i10) {
        List<Object> list = lo;
        synchronized (list) {
            Iterator<Object> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    private static com.byazt.hs.sp tt(String str, List<com.byazt.t.ve> list, int i10, boolean z10, DownloadInfo downloadInfo) throws Throwable {
        IOException iOException;
        com.byazt.hs.x xVarA = i10 == 1 ? a() : i();
        if (xVarA != null) {
            IOException iOException2 = null;
            long jCurrentTimeMillis = 0;
            if (z10) {
                try {
                    jCurrentTimeMillis = System.currentTimeMillis();
                } catch (IOException e10) {
                    e = e10;
                    iOException2 = e;
                    throw iOException2;
                } catch (Throwable th) {
                    th = th;
                    iOException = iOException2;
                    if (z10) {
                        com.byazt.zl.c.c(null, str, null, System.currentTimeMillis() - jCurrentTimeMillis, "head", i10, iOException, downloadInfo);
                    }
                    throw th;
                }
            }
            try {
                try {
                    com.byazt.hs.sp spVarC = xVarA.c(str, list);
                    if (z10) {
                        com.byazt.zl.c.c(spVarC, str, null, System.currentTimeMillis() - jCurrentTimeMillis, "head", i10, null, downloadInfo);
                    }
                    return spVarC;
                } catch (IOException e11) {
                    e = e11;
                    iOException2 = e;
                    throw iOException2;
                }
            } catch (Throwable th2) {
                th = th2;
                iOException = iOException2;
                if (z10) {
                    com.byazt.zl.c.c(null, str, null, System.currentTimeMillis() - jCurrentTimeMillis, "head", i10, iOException, downloadInfo);
                }
                throw th;
            }
        }
        throw new BaseException(1022, new IOException("httpService not exist, netLib = " + i10));
    }

    public static void tt(ExecutorService executorService) {
        if (executorService != null) {
            qy = executorService;
        }
    }

    public static void tt(Runnable runnable) {
        tt(runnable, false);
    }

    public static void tt(Runnable runnable, boolean z10) {
        if (runnable == null) {
            return;
        }
        if (z10 && !com.byazt.w.a.uj()) {
            runnable.run();
        } else {
            u().execute(runnable);
        }
    }

    public static synchronized void c() {
        try {
            if (pf && zm != null && f23120c != null) {
                f23120c.unregisterReceiver(zm);
                pf = false;
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    private static void tt(int i10) {
        if (i10 > 0) {
            bx = i10;
        }
    }

    private static void tt(boolean z10) {
        lt = z10;
    }

    public static void c(nb nbVar) {
        if (nbVar == null) {
            return;
        }
        synchronized (f23121d) {
            f23121d.add(nbVar);
        }
    }

    public static void c(com.byazt.c.sl slVar) {
        List<com.byazt.c.sl> list = f23127l;
        synchronized (list) {
            if (slVar != null) {
                if (!list.contains(slVar)) {
                    list.add(slVar);
                }
            }
        }
    }

    public static void c(com.byazt.ev.uj ujVar) {
        List<com.byazt.c.sl> list = f23127l;
        synchronized (list) {
            for (com.byazt.c.sl slVar : list) {
                if (slVar != null && ujVar != com.byazt.ev.uj.SYNC_START && ujVar == com.byazt.ev.uj.SYNC_SUCCESS) {
                    slVar.c();
                }
            }
            if (ujVar == com.byazt.ev.uj.SYNC_SUCCESS) {
                f23127l.clear();
            }
        }
    }

    public static synchronized boolean ve() {
        return eo;
    }

    public static void c(DownloadTask downloadTask, int i10) {
        List<Object> list = lo;
        synchronized (list) {
            Iterator<Object> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    private static void ve(ExecutorService executorService) {
        if (executorService != null) {
            f23135z = executorService;
        }
    }

    public static void ve(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!com.byazt.w.a.uj()) {
            runnable.run();
        } else {
            rh().execute(runnable);
        }
    }

    public static com.byazt.hs.i c(boolean z10, int i10, String str, List<com.byazt.t.ve> list) throws Exception {
        return c(z10, i10, str, null, list, 0, false, null);
    }

    public static com.byazt.hs.i c(boolean z10, int i10, String str, String str2, List<com.byazt.t.ve> list, int i11, boolean z11, DownloadInfo downloadInfo) throws Exception {
        List<com.byazt.t.ve> list2;
        int i12;
        if (!TextUtils.isEmpty(str2)) {
            List<com.byazt.t.ve> arrayList = list == null ? new ArrayList<>() : list;
            arrayList.add(new com.byazt.t.ve("ss_d_request_host_ip_114", str2));
            list2 = arrayList;
            i12 = 1;
        } else if (z10) {
            list2 = list;
            i12 = i11;
        } else {
            i12 = 2;
            list2 = list;
        }
        int[] iArrC = c(i12);
        Exception exc = null;
        for (int i13 : iArrC) {
            try {
                com.byazt.hs.i iVarC = c(i10, str, str2, list2, i13, z11, downloadInfo);
                if (iVarC != null) {
                    return iVarC;
                }
            } catch (Exception e10) {
                if (downloadInfo.isExpiredRedownload() && com.byazt.w.a.sp(e10) && com.byazt.w.a.ve(list2)) {
                    com.byazt.x.c.c("dcach::http exception 304, throw excepiton, not retry " + e10);
                    throw e10;
                }
                exc = e10;
            }
        }
        if (exc == null) {
            return null;
        }
        throw exc;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    private static com.byazt.hs.i c(int i10, String str, String str2, List<com.byazt.t.ve> list, int i11, boolean z10, DownloadInfo downloadInfo) throws Throwable {
        IOException iOException;
        IDownloadHttpService iDownloadHttpServiceUj = i11 == 1 ? uj() : x();
        if (iDownloadHttpServiceUj != null) {
            IOException iOException2 = null;
            long jCurrentTimeMillis = 0;
            if (z10) {
                try {
                    jCurrentTimeMillis = System.currentTimeMillis();
                } catch (IOException e10) {
                    e = e10;
                    iOException2 = e;
                    throw iOException2;
                } catch (Throwable th) {
                    th = th;
                    iOException = iOException2;
                    if (z10) {
                        com.byazt.zl.c.c(null, str, str2, System.currentTimeMillis() - jCurrentTimeMillis, "get", i11, iOException, downloadInfo);
                    }
                    throw th;
                }
            }
            try {
                try {
                    com.byazt.hs.i iVarDownloadWithConnection = iDownloadHttpServiceUj.downloadWithConnection(i10, str, list);
                    if (z10) {
                        com.byazt.zl.c.c(iVarDownloadWithConnection, str, str2, System.currentTimeMillis() - jCurrentTimeMillis, "get", i11, null, downloadInfo);
                    }
                    return iVarDownloadWithConnection;
                } catch (IOException e11) {
                    e = e11;
                    iOException2 = e;
                    throw iOException2;
                }
            } catch (Throwable th2) {
                th = th2;
                iOException = iOException2;
                if (z10) {
                    com.byazt.zl.c.c(null, str, str2, System.currentTimeMillis() - jCurrentTimeMillis, "get", i11, iOException, downloadInfo);
                }
                throw th;
            }
        }
        throw new BaseException(1022, new IOException("httpService not exist, netLib = " + i11));
    }

    public static com.byazt.hs.sp c(String str, List<com.byazt.t.ve> list) throws Exception {
        return c(str, list, 0, false, null);
    }

    public static com.byazt.hs.sp c(String str, List<com.byazt.t.ve> list, int i10, boolean z10, DownloadInfo downloadInfo) throws Exception {
        Exception e10 = null;
        for (int i11 : c(i10)) {
            try {
                com.byazt.hs.sp spVarTt = tt(str, list, i11, z10, downloadInfo);
                if (spVarTt != null) {
                    return spVarTt;
                }
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            return null;
        }
        throw e10;
    }

    private static int[] c(int i10) {
        if (i10 == 1) {
            return new int[]{0};
        }
        if (i10 == 2) {
            return new int[]{1};
        }
        if (i10 != 3) {
            return new int[]{1, 0};
        }
        return new int[]{0, 1};
    }

    public static synchronized void c(t tVar) {
        if (tVar != null) {
            yp = tVar;
            if (tt instanceof com.byazt.b.uj) {
                ((com.byazt.b.uj) tt).x();
            }
        }
    }

    public static void c(ExecutorService executorService) {
        if (executorService != null) {
            rl = executorService;
        }
    }

    private static void c(List<com.byazt.c.u> list) {
        List<com.byazt.c.u> list2 = f23130nb;
        if (list2.isEmpty()) {
            synchronized (list2) {
                list2.addAll(list);
            }
        }
    }

    public static void c(boolean z10) {
        to = z10;
    }

    public static void c(Runnable runnable) {
        c(runnable, false);
    }

    public static void c(Runnable runnable, boolean z10) {
        if (runnable == null) {
            return;
        }
        if (z10 && !com.byazt.w.a.uj()) {
            runnable.run();
        } else {
            t().execute(runnable);
        }
    }

    public static Future c(Runnable runnable, long j10, TimeUnit timeUnit) {
        if (runnable == null) {
            return null;
        }
        return gt().schedule(runnable, j10, timeUnit);
    }

    public static void c(IDownloadHttpService iDownloadHttpService) {
        if (iDownloadHttpService != null) {
            f23122da = iDownloadHttpService;
        }
        lr = f23122da != null;
    }

    public static void c(com.byazt.hs.x xVar) {
        if (xVar != null) {
            sl = xVar;
        }
    }

    private static void c(da daVar) {
        if (daVar != null) {
            tt = daVar;
        }
    }

    private static void c(sl slVar) {
        if (slVar != null) {
            ve = slVar;
        }
    }

    private static void c(com.byazt.zl.tt ttVar) {
        if (ttVar != null) {
            md = ttVar;
        }
    }

    public static void c(p pVar) {
        f23123h = pVar;
        com.byazt.k.c.c();
    }

    private static void c(x xVar) {
        if (xVar != null) {
            uj = xVar;
        }
    }

    public static void c(eo eoVar) {
        if (eoVar != null) {
            f23129n = eoVar;
        }
    }

    private static void c(sp spVar) {
        if (spVar != null) {
            gr = spVar;
        }
    }

    public static synchronized void c(Context context) {
        if (context != null) {
            if (f23120c == null) {
                f23120c = context.getApplicationContext();
                com.byazt.g.c.c().c(f23120c);
            }
        }
    }

    public static int c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0;
        }
        String taskKey = downloadInfo.getTaskKey();
        if (TextUtils.isEmpty(taskKey)) {
            taskKey = downloadInfo.getUrl();
        }
        return c(taskKey, downloadInfo.getSavePath());
    }

    public static int c(String str, String str2) {
        sl slVarH = h();
        if (slVarH == null) {
            return 0;
        }
        return slVarH.c(str, str2);
    }

    public static void c(com.byazt.zl.ve veVar) {
        kp = veVar;
    }

    public static void c(c cVar) {
        com.byazt.x.c.c("wjd", "setIndependentServiceCreator::creator=" + cVar);
        f23125i = cVar;
    }
}
