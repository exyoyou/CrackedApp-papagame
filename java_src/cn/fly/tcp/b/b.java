package cn.fly.tcp.b;

import java.util.List;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.a.b f1567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Long, cn.fly.tcp.d.a> f1568b;

    public b(cn.fly.tcp.a.b bVar, ConcurrentMap<Long, cn.fly.tcp.d.a> concurrentMap) {
        this.f1567a = bVar;
        this.f1568b = concurrentMap;
    }

    private void b(a aVar) {
        cn.fly.tcp.f.c.a().b("rcv type: non-pu5h");
        cn.fly.tcp.d.a aVarRemove = this.f1568b.remove(Long.valueOf(aVar.f1565c));
        if (aVarRemove != null) {
            aVarRemove.a(aVar);
            return;
        }
        cn.fly.tcp.f.c.a().b("TP response future not found, maybe response for canceled receipt or one-way msg. type: " + aVar.f1564b + ", uniqueId: " + aVar.f1565c);
    }

    public void a(cn.fly.tcp.a.a aVar, List<a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (a aVar2 : list) {
            if (a(aVar2)) {
                a(aVar, aVar2);
            } else {
                b(aVar2);
            }
        }
    }

    private boolean a(a aVar) {
        return aVar.f1564b >= 9001;
    }

    private void a(cn.fly.tcp.a.a aVar, a aVar2) {
        if (this.f1567a != null) {
            cn.fly.tcp.f.c.a().b("rcv type: pu5h");
            this.f1567a.a(aVar, aVar2);
        }
    }
}
