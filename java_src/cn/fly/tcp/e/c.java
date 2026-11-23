package cn.fly.tcp.e;

import android.os.Handler;
import android.os.Message;
import cn.fly.mcl.BusinessCallBack;
import cn.fly.mcl.BusinessMessageListener;
import cn.fly.mcl.TcpStatus;
import cn.fly.mcl.TcpStatusListener;
import cn.fly.mgs.OnIdChangeListener;
import cn.fly.tools.utils.UIHandler;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f1639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private cn.fly.tcp.a.c f1640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f1641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f1642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.fly.tcp.a.d f1643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f1644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f1645g;

    private c() {
        cn.fly.tcp.f.c.a().b("TP tcpService init");
        this.f1640b = new cn.fly.tcp.a.c();
        this.f1644f = new d();
        this.f1645g = new e();
        a aVar = new a(this.f1640b);
        this.f1641c = aVar;
        b bVar = new b(this.f1640b, aVar);
        this.f1642d = bVar;
        cn.fly.tcp.a.d dVar = new cn.fly.tcp.a.d(this.f1641c, bVar);
        this.f1643e = dVar;
        this.f1640b.a(dVar);
    }

    public static c f() {
        if (f1639a == null) {
            synchronized (c.class) {
                if (f1639a == null) {
                    f1639a = new c();
                }
            }
        }
        return f1639a;
    }

    public boolean a() {
        return this.f1641c.e();
    }

    public boolean b() {
        return this.f1641c.f();
    }

    public String c() {
        return this.f1641c.h();
    }

    public String d() {
        return this.f1641c.g();
    }

    public int e() {
        return this.f1641c.c();
    }

    public boolean g() {
        return this.f1641c.i();
    }

    public void h() {
        this.f1641c.b();
    }

    public boolean i() {
        return this.f1641c.k();
    }

    public void j() {
        this.f1641c.n();
    }

    public String k() {
        return this.f1645g.a();
    }

    public long l() {
        return this.f1645g.b();
    }

    public void a(String str) {
        this.f1642d.a(str);
    }

    public void b(TcpStatusListener tcpStatusListener) {
        this.f1644f.b(tcpStatusListener);
    }

    public void a(int i10, BusinessMessageListener businessMessageListener) {
        this.f1642d.a(i10, businessMessageListener);
    }

    public void a(String str, String str2) {
        this.f1641c.a(str, str2);
        this.f1642d.a();
    }

    public boolean a(int i10, int i11) {
        return this.f1641c.a(i10, i11);
    }

    public void a(final BusinessCallBack<Boolean> businessCallBack) {
        final boolean zG = g();
        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tcp.e.c.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                try {
                    BusinessCallBack businessCallBack2 = businessCallBack;
                    if (businessCallBack2 == null) {
                        return false;
                    }
                    businessCallBack2.callback(Boolean.valueOf(zG));
                    return false;
                } catch (Throwable th) {
                    cn.fly.tcp.f.c.a().a(th);
                    return false;
                }
            }
        });
    }

    public TcpStatus a(int i10) {
        return this.f1641c.a(i10);
    }

    public void a(TcpStatusListener tcpStatusListener) {
        this.f1644f.a(tcpStatusListener);
    }

    public void a(TcpStatus tcpStatus) {
        this.f1644f.a(tcpStatus);
    }

    public void a(OnIdChangeListener onIdChangeListener) {
        this.f1645g.a(onIdChangeListener);
        this.f1645g.c();
    }
}
