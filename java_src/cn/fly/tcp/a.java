package cn.fly.tcp;

import android.text.TextUtils;
import cn.fly.commons.f;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.utils.j;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f1511a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile String f1513c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f1515e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile String f1516f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f1512b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f1514d = new byte[0];

    private a() {
    }

    public static a a() {
        if (f1511a == null) {
            synchronized (a.class) {
                if (f1511a == null) {
                    f1511a = new a();
                }
            }
        }
        return f1511a;
    }

    public void b() {
        if (this.f1512b.compareAndSet(false, true)) {
            new j() { // from class: cn.fly.tcp.a.1
                @Override // cn.fly.tools.utils.j
                protected void a() throws Throwable {
                    cn.fly.tcp.f.c.a().b("MclGlobal init: start");
                    a.this.f();
                    cn.fly.tcp.f.c.a().b("MclGlobal init: done");
                }
            }.start();
        } else {
            cn.fly.tcp.f.c.a().b("MclGlobal already initialized");
        }
    }

    public String c() {
        if (TextUtils.isEmpty(this.f1513c)) {
            cn.fly.tcp.f.c.a().b("WARNING: getDuidQuick got null!");
        }
        return this.f1513c;
    }

    public boolean d() {
        return this.f1515e;
    }

    public String e() {
        return this.f1516f;
    }

    public String f() {
        HashMap<String, Object> mapB;
        if (TextUtils.isEmpty(this.f1513c)) {
            synchronized (this.f1514d) {
                if (TextUtils.isEmpty(this.f1513c) && (mapB = f.b(null)) != null) {
                    this.f1513c = (String) mapB.get(NetCommunicator.KEY_DUID);
                    this.f1515e = ((Boolean) mapB.get("isModified")).booleanValue();
                    this.f1516f = (String) mapB.get("duidPrevious");
                    cn.fly.tcp.f.c.a().b("MC Global -> duid: " + this.f1513c + ", duidPre: " + this.f1516f + ", isModified: " + this.f1515e);
                }
            }
        }
        return this.f1513c;
    }
}
