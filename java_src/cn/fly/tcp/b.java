package cn.fly.tcp;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ac;
import cn.fly.commons.ae;
import cn.fly.commons.q;
import cn.fly.mcl.BusinessCallBack;
import cn.fly.mcl.TcpStatus;
import cn.fly.tools.utils.ActivityTracker;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.i;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f1534a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScheduledFuture<?> f1540g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f1542i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1543j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f1535b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f1536c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f1537d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1538e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f1539f = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1544k = -1;

    /* JADX INFO: renamed from: cn.fly.tcp.b$7, reason: invalid class name */
    class AnonymousClass7 extends BroadcastReceiver {
        AnonymousClass7() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, final Intent intent) {
            try {
                ac.f1042a.execute(new Runnable() { // from class: cn.fly.tcp.b.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                                DH.requester(context).checkNetworkAvailableForce(true).request(new DH.DHResponder() { // from class: cn.fly.tcp.b.7.1.1
                                    @Override // cn.fly.tools.utils.DH.DHResponder
                                    public void onResponse(DH.DHResponse dHResponse) {
                                        b.this.d(dHResponse.checkNetworkAvailableForce(new int[0]));
                                    }
                                });
                            }
                        } catch (Throwable th) {
                            cn.fly.tcp.f.c.a().a(th);
                        }
                    }
                });
            } catch (Throwable th) {
                cn.fly.tcp.f.c.a().a(th);
            }
        }
    }

    private b() {
        C1293r.a(h(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private void f() {
        synchronized (this.f1539f) {
            this.f1543j++;
            ScheduledFuture<?> scheduledFuture = this.f1540g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.f1540g = null;
            }
            this.f1541h = 0;
            this.f1542i = 0L;
        }
    }

    private boolean g() {
        if (!this.f1538e.get()) {
            return false;
        }
        cn.fly.tcp.f.c.a().b("TP lifecycle ignored by user close");
        return true;
    }

    private BroadcastReceiver h() {
        return new AnonymousClass7();
    }

    public void d() {
        cn.fly.tcp.f.c.a().b("TP lifecycle onHBFld");
        if (g()) {
            return;
        }
        e();
    }

    public void e() {
        a(0L);
    }

    public void b() {
        if (this.f1538e.get()) {
            cn.fly.tcp.f.c.a().b("TP lifecycle autoInit ignored by user close");
            cn.fly.tcp.e.c.f().a(TcpStatus.obtain(26));
        } else if (this.f1535b.compareAndSet(false, true)) {
            b(true);
            a(0, 0);
        }
    }

    public boolean c() {
        this.f1538e.set(true);
        try {
            f();
            cn.fly.tcp.lifecycle.a.a().c();
            cn.fly.tcp.e.c.f().h();
            return !cn.fly.tcp.e.c.f().g();
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z10) {
        cn.fly.tcp.f.c.a().b("TP lifecycle onNetworkChanged. avail: " + z10 + ", last: " + this.f1544k);
        if (g()) {
            return;
        }
        int i10 = this.f1544k;
        if (i10 == -1) {
            this.f1544k = i10 + 1;
        } else if (z10) {
            if (cn.fly.tcp.e.c.f().g()) {
                cn.fly.tcp.f.c.a().b("TP lifecycle tcp status: true");
            } else {
                a(200L);
            }
        }
    }

    public static b a() {
        if (f1534a == null) {
            synchronized (b.class) {
                if (f1534a == null) {
                    f1534a = new b();
                }
            }
        }
        return f1534a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z10) {
        a(FlySDK.getContext());
        cn.fly.tcp.e.c.f().a(q.a(), a.a().f());
        if (z10) {
            ae.b().a("use_config", false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10) {
        cn.fly.tcp.f.c.a().b("TP lifecycle onActSt chgd, fg: " + z10);
        if (g()) {
            return;
        }
        e();
    }

    public void a(final BusinessCallBack<TcpStatus> businessCallBack) {
        this.f1538e.set(false);
        if (cn.fly.tcp.e.c.f().g()) {
            a(businessCallBack, TcpStatus.obtain(10));
        } else {
            if (a(4, 0L, new i() { // from class: cn.fly.tcp.b.1
                @Override // cn.fly.tools.utils.i
                public void a() {
                    TcpStatus detailedMsg;
                    try {
                        b bVar = b.this;
                        bVar.b(!bVar.f1535b.get());
                        detailedMsg = b.this.a(5000, true);
                    } catch (Throwable th) {
                        cn.fly.tcp.f.c.a().a(th);
                        detailedMsg = TcpStatus.obtain(23).setDetailedMsg("Exception: " + th.getMessage());
                    }
                    b.this.a((BusinessCallBack<TcpStatus>) businessCallBack, detailedMsg);
                }
            })) {
                return;
            }
            a(businessCallBack, TcpStatus.obtain(25).setDetailedMsg("TCP connect/register task is running"));
        }
    }

    private void a(Context context) {
        if (context == null || this.f1537d.getAndSet(true)) {
            return;
        }
        ActivityTracker.getInstance(context).addTracker(c.a(new c.a() { // from class: cn.fly.tcp.b.2
            @Override // cn.fly.tcp.c.a
            public void a() {
                b.this.c(true);
            }

            @Override // cn.fly.tcp.c.a
            public void b() {
                b.this.c(false);
            }
        }));
    }

    public void a(boolean z10) {
        cn.fly.tcp.f.c.a().b("TP lifecycle onSessCls recon: " + z10);
        cn.fly.tcp.lifecycle.a.a().c();
        if (!g() && z10) {
            e();
        }
    }

    public void a(long j10) {
        if (g()) {
            return;
        }
        a(j10 == 200 ? 2 : 3, j10, new Runnable() { // from class: cn.fly.tcp.b.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    cn.fly.tcp.f.c.a().b("TP lifecycle reconnect");
                    b.this.a(5000, false);
                } catch (Throwable th) {
                    cn.fly.tcp.f.c.a().a(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i10, int i11) {
        cn.fly.tcp.f.c.a().b("sched: count: " + i10 + ", delay: " + i11 + "s");
        if (g()) {
            cn.fly.tcp.e.c.f().a(TcpStatus.obtain(26));
            return;
        }
        if (cn.fly.tcp.e.c.f().g()) {
            cn.fly.tcp.e.c.f().a(TcpStatus.obtain(10));
            return;
        }
        if (a(1, TimeUnit.SECONDS.toMillis(i11), new i() { // from class: cn.fly.tcp.b.4
            @Override // cn.fly.tools.utils.i
            public void a() {
                TcpStatus tcpStatusA = b.this.a(5000, true);
                if (tcpStatusA == null) {
                    tcpStatusA = TcpStatus.obtain(24);
                }
                int i12 = tcpStatusA.code;
                if (i12 == 10 || i12 == 26) {
                    cn.fly.tcp.e.c.f().a(tcpStatusA);
                } else if (cn.fly.tcp.e.c.f().a()) {
                    cn.fly.tcp.e.c.f().a(TcpStatus.obtain(22));
                } else {
                    b.this.a(i10 + 1, 30);
                }
            }
        })) {
            return;
        }
        cn.fly.tcp.e.c.f().a(TcpStatus.obtain(25).setDetailedMsg("TCP connect/register task is running"));
    }

    private boolean a(int i10, long j10, final Runnable runnable) {
        synchronized (this.f1539f) {
            ScheduledFuture<?> scheduledFuture = this.f1540g;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                int i11 = this.f1541h;
                if (i10 >= i11 && (i10 != i11 || j10 < this.f1542i)) {
                    this.f1540g.cancel(false);
                }
                cn.fly.tcp.f.c.a().b("TP lifecycle skip pending conn, priority: " + i10 + ", delay: " + j10);
                return false;
            }
            final int i12 = this.f1543j + 1;
            this.f1543j = i12;
            this.f1541h = i10;
            this.f1542i = j10;
            this.f1540g = cn.fly.tcp.lifecycle.b.f1671a.schedule(new Runnable() { // from class: cn.fly.tcp.b.5
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.a(i12)) {
                        runnable.run();
                    }
                }
            }, j10, TimeUnit.MILLISECONDS);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i10) {
        synchronized (this.f1539f) {
            if (i10 != this.f1543j) {
                return false;
            }
            this.f1540g = null;
            this.f1541h = 0;
            this.f1542i = 0L;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TcpStatus a(int i10, boolean z10) {
        if (g()) {
            return TcpStatus.obtain(26);
        }
        if (cn.fly.tcp.e.c.f().g()) {
            return TcpStatus.obtain(10);
        }
        if (this.f1536c.getAndSet(true)) {
            return TcpStatus.obtain(25).setDetailedMsg("TCP connect/register task is running");
        }
        try {
            boolean zIsInMainProcess = DH.SyncMtd.isInMainProcess();
            cn.fly.tcp.f.c.a().b("init tp, main p: " + zIsInMainProcess);
            if (zIsInMainProcess) {
                if (z10 || !cn.fly.tcp.e.c.f().i()) {
                    cn.fly.tcp.e.c.f().j();
                }
                if (g()) {
                    cn.fly.tcp.e.c.f().h();
                    TcpStatus tcpStatusObtain = TcpStatus.obtain(26);
                    this.f1536c.set(false);
                    return tcpStatusObtain;
                }
                if (!cn.fly.tcp.e.c.f().b()) {
                    TcpStatus detailedMsg = TcpStatus.obtain(21).setDetailedMsg(cn.fly.tcp.e.c.f().c());
                    this.f1536c.set(false);
                    return detailedMsg;
                }
                if (cn.fly.tcp.e.c.f().i()) {
                    TcpStatus tcpStatusA = cn.fly.tcp.e.c.f().a(i10);
                    if (g()) {
                        cn.fly.tcp.e.c.f().h();
                        TcpStatus tcpStatusObtain2 = TcpStatus.obtain(26);
                        this.f1536c.set(false);
                        return tcpStatusObtain2;
                    }
                    if (tcpStatusA != null && tcpStatusA.code == 10) {
                        cn.fly.tcp.lifecycle.a.a();
                        f();
                        this.f1536c.set(false);
                        return tcpStatusA;
                    }
                    cn.fly.tcp.f.c.a().a("tp reg failed");
                    if (tcpStatusA == null) {
                        tcpStatusA = TcpStatus.obtain(24);
                    }
                    this.f1536c.set(false);
                    return tcpStatusA;
                }
                cn.fly.tcp.f.c.a().a("tp reg avail false");
                TcpStatus detailedMsg2 = TcpStatus.obtain(21).setDetailedMsg(cn.fly.tcp.e.c.f().d());
                this.f1536c.set(false);
                return detailedMsg2;
            }
            cn.fly.tcp.f.c.a().a("tp reg failed: sub process");
            TcpStatus detailedMsg3 = TcpStatus.obtain(21).setDetailedMsg("sub process");
            this.f1536c.set(false);
            return detailedMsg3;
        } catch (Throwable th) {
            try {
                String str = "Exception: " + th.getMessage();
                cn.fly.tcp.f.c.a().a(th);
                return TcpStatus.obtain(23).setDetailedMsg(str);
            } finally {
                this.f1536c.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void a(final BusinessCallBack<T> businessCallBack, final T t10) {
        if (businessCallBack == null) {
            return;
        }
        cn.fly.tcp.lifecycle.b.f1672b.execute(new Runnable() { // from class: cn.fly.tcp.b.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    businessCallBack.callback(t10);
                } catch (Throwable th) {
                    cn.fly.tcp.f.c.a().a(th);
                }
            }
        });
    }
}
