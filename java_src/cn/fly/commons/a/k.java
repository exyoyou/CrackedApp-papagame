package cn.fly.commons.a;

import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class k extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static cn.fly.commons.l f987b;

    public k() {
        super("p", 0L, null, 0L, 0L);
        a(0);
    }

    private synchronized boolean n() {
        if (f987b != null) {
            return false;
        }
        f987b = new cn.fly.commons.l() { // from class: cn.fly.commons.a.k.1
            @Override // cn.fly.commons.l
            public void a(boolean z10, boolean z11, long j10) {
                if (z10) {
                    k.this.a(Long.valueOf(System.currentTimeMillis()));
                    d.a().a(k.this, 0L, 0);
                }
            }
        };
        cn.fly.commons.m.a().a(f987b);
        return true;
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        if (i()) {
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put(m.a("004j*fd@kg"), "PVMT");
        map.put(m.a("008'edXejgjMejegTg"), this.f941a);
        if (!cn.fly.commons.k.a().f1381a.get()) {
            map.putAll(cn.fly.commons.k.a().c());
            cn.fly.commons.k.a().f1381a.compareAndSet(false, true);
        }
        cn.fly.commons.d.a().a(System.currentTimeMillis(), map);
    }

    @Override // cn.fly.commons.a.c
    protected void d() {
        n();
    }
}
