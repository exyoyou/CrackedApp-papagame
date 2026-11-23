package cn.fly.commons.a;

import cn.fly.commons.ab;
import cn.fly.commons.ac;
import cn.fly.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile d f965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f966b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<c> f967c = new ArrayList<>();

    private d() {
        a(new a());
        a(new b());
        a(new f());
        a(new g());
        a(new l());
        h hVar = new h();
        hVar.c();
        a(hVar);
        a(new i());
        a(new k());
        a(new j());
        a(new n());
        a(new o());
        a(new p());
        a(new e());
    }

    public static d a() {
        if (f965a == null) {
            synchronized (ab.class) {
                if (f965a == null) {
                    f965a = new d();
                }
            }
        }
        return f965a;
    }

    private long c() {
        return ((Integer) ResHelper.forceCast(cn.fly.commons.c.a(m.a("0034ekXkj"), 300), 300)).intValue() * 1000;
    }

    public void b() {
        if (this.f966b.compareAndSet(false, true)) {
            ac.f1042a.execute(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f967c.isEmpty()) {
            m.a().b(c(), this);
            return;
        }
        if (!cn.fly.commons.c.e() || !cn.fly.commons.e.j()) {
            m.a().b(60000L, this);
            return;
        }
        try {
            for (c cVar : this.f967c) {
                if (cVar.i() || cVar.f()) {
                    cVar.j();
                }
            }
        } catch (Throwable unused) {
        }
        m.a().b(c(), this);
    }

    public void b(c cVar, long j10, int i10) {
        m.a().a(j10, cVar, i10, false);
    }

    private <T extends c> void a(T t10) {
        this.f967c.add(t10);
    }

    public void a(c cVar, long j10, int i10) {
        m.a().a(j10, cVar, i10);
    }
}
