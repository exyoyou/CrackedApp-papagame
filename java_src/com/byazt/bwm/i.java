package com.byazt.bwm;

import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.kuaishou.weapon.p0.t;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 42})
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f12115c = Runtime.getRuntime().availableProcessors();
    public static final i tt = new i();
    public static boolean uj = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f12118da;
    public volatile ThreadPoolExecutor gt;
    public int gu;
    public volatile boolean md;
    public volatile ThreadPoolExecutor my;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile boolean f12123p;
    public com.byazt.mc.n rh;
    public volatile ScheduledExecutorService rl;
    public boolean yv;
    public volatile boolean ve = true;
    public long sp = 5000;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f12126x = 20000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f12120i = true;
    public boolean sl = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12124t = 100;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f12125u = 50;
    public long yp = 1000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f12127z = BaseCloudFileManager.ACK_TIMEOUT;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f12121m = false;
    public volatile boolean nu = true;
    public boolean qy = true;
    public boolean gr = true;
    public com.byazt.mc.tt zm = new com.byazt.mc.tt() { // from class: com.byazt.bwm.i.1
        @Override // com.byazt.mc.tt
        public String c(String str) {
            if (str != null) {
                return str.startsWith("csj") ? str : "csj_".concat(str);
            }
            return "csj_uk";
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f12119h = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f12117d = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12122n = Math.min(f12115c, 4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12116a = 50;

    private i() {
    }

    public boolean a() {
        return this.yv;
    }

    public ThreadPoolExecutor da() {
        if (this.gt == null) {
            synchronized (this) {
                if (this.gt == null) {
                    this.gt = new com.byazt.msj.tt(this.f12122n, this.f12116a, this.sp, TimeUnit.MILLISECONDS, new x(10, t.f74887l) { // from class: com.byazt.bwm.i.3
                        @Override // com.byazt.bwm.x
                        public Thread c(ThreadGroup threadGroup, Runnable runnable, String str) {
                            return new Thread(threadGroup, runnable, str);
                        }
                    });
                    if (this.f12117d) {
                        try {
                            this.gt.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        }
        return this.gt;
    }

    public boolean gt() {
        return this.f12121m;
    }

    public ThreadPoolExecutor i() {
        if (this.my == null) {
            synchronized (this) {
                if (this.my == null) {
                    this.my = new com.byazt.msj.uj(this.f12122n, this.f12116a, this.f12126x, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new x(10, "a") { // from class: com.byazt.bwm.i.2
                        @Override // com.byazt.bwm.x
                        public Thread c(ThreadGroup threadGroup, Runnable runnable, String str) {
                            return new Thread(threadGroup, runnable, str);
                        }
                    });
                }
            }
        }
        return this.my;
    }

    public boolean m() {
        return this.f12119h && uj;
    }

    public long my() {
        return this.f12127z;
    }

    public boolean n() {
        return this.ve;
    }

    public long nu() {
        return this.f12125u;
    }

    public long rh() {
        return this.yp;
    }

    public int sl() {
        return this.f12116a;
    }

    public com.byazt.mc.n sp() {
        if (this.rh == null) {
            this.rh = new com.byazt.mc.n();
        }
        return this.rh;
    }

    public ScheduledExecutorService t() {
        if (this.rl == null) {
            synchronized (this) {
                if (this.rl == null) {
                    this.rl = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.byazt.bwm.i.4
                        @Override // java.util.concurrent.ThreadFactory
                        public Thread newThread(Runnable runnable) {
                            return new Thread(runnable, i.this.yv ? "csj-p-wp" : "csj-wp");
                        }
                    }, com.byazt.jtc.c.f15921c);
                }
            }
        }
        return this.rl;
    }

    public boolean tt(int i10) {
        return (this.gu & i10) == i10;
    }

    public ThreadPoolExecutor u() {
        return this.f12118da ? da() : i();
    }

    public long uj() {
        return this.f12124t;
    }

    public com.byazt.mc.tt ve() {
        return this.zm;
    }

    public int x() {
        return this.f12122n;
    }

    public boolean yp() {
        return this.f12123p;
    }

    public boolean z() {
        return this.md;
    }

    public void a(boolean z10) {
        this.f12120i = z10;
    }

    public void c(int i10) {
        this.gu = i10;
    }

    public void n(boolean z10) {
        this.f12118da = z10;
    }

    public boolean tt() {
        return this.qy;
    }

    public void uj(boolean z10) {
        this.yv = z10;
    }

    public void ve(boolean z10) {
        this.ve = z10;
    }

    public void x(boolean z10) {
        if (this.f12123p) {
            return;
        }
        if (this.gt != null) {
            this.gt.allowCoreThreadTimeOut(z10);
        }
        this.f12117d = z10;
    }

    public boolean c() {
        return this.sl;
    }

    public void tt(boolean z10) {
        this.qy = z10;
    }

    public void uj(int i10) {
        this.f12116a = i10;
        i().setMaximumPoolSize(i10);
        da().setMaximumPoolSize(i10);
    }

    public void ve(int i10) {
        this.f12122n = i10;
        i().setCorePoolSize(i10);
        da().setCorePoolSize(i10);
    }

    public void c(boolean z10) {
        this.sl = z10;
    }

    public void sp(boolean z10) {
        if (z10) {
            x(false);
            uj = false;
        }
        this.f12123p = z10;
    }

    public void tt(long j10) {
        this.f12125u = j10;
    }

    public void c(long j10) {
        this.sp = j10;
        da().setKeepAliveTime(j10, TimeUnit.MILLISECONDS);
    }

    public void uj(long j10) {
        this.f12127z = j10;
    }

    public void ve(long j10) {
        this.yp = j10;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        i iVar = tt;
        int iOptInt = jSONObject.optInt("big_max_mum", 50);
        if (iOptInt > 0) {
            iVar.uj(iOptInt);
        }
        int iOptInt2 = jSONObject.optInt("core_count", 0);
        if (iOptInt2 > 0) {
            iVar.ve(iOptInt2);
        }
        int iOptInt3 = jSONObject.optInt("big_keep_alive", 0);
        if (iOptInt3 > 0) {
            iVar.c(iOptInt3);
        }
        iVar.n(jSONObject.optBoolean("big_priority", false));
        iVar.ve(jSONObject.optBoolean("catch_oom", true));
        iVar.tt(jSONObject.optBoolean("forbid_autosize_oom", true));
        iVar.a(jSONObject.optBoolean("enable_proxy", true));
        uj = jSONObject.optBoolean("autosize", true);
        iVar.i(jSONObject.optBoolean("report_task", false));
        iVar.tt(jSONObject.optInt("wait_in_big", 50));
        iVar.ve(jSONObject.optInt("wait_in_little", 2000));
        iVar.uj(jSONObject.optInt("run_cost", 6000));
    }

    public void i(boolean z10) {
        this.f12121m = z10;
    }
}
