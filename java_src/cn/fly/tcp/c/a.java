package cn.fly.tcp.c;

import cn.fly.commons.a.m;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1572a = m.a("004<ihgjel3f");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f1573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Map<String, Object>> f1574c = new CopyOnWriteArrayList();

    private a() {
    }

    public static a a() {
        if (f1573b == null) {
            synchronized (a.class) {
                if (f1573b == null) {
                    f1573b = new a();
                }
            }
        }
        return f1573b;
    }

    public boolean b() {
        return !this.f1574c.isEmpty();
    }

    public List<Map<String, Object>> c() {
        return this.f1574c;
    }

    public void b(Map<String, Object> map) {
        this.f1574c.remove(map);
    }

    public synchronized void a(Map<String, Object> map) {
        while (this.f1574c.size() >= 50) {
            cn.fly.tcp.f.c.a().b("TP biz msg cache full, drop oldest");
            this.f1574c.remove(0);
        }
        this.f1574c.add(map);
    }
}
