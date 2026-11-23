package cn.fly.tcp.e;

import android.os.Handler;
import android.os.Message;
import cn.fly.FlySDK;
import cn.fly.mcl.BusinessMessageCallback;
import cn.fly.mcl.BusinessMessageListener;
import cn.fly.tools.utils.UIHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.a.c f1623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cn.fly.tcp.f.b f1625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Integer, CopyOnWriteArraySet<BusinessMessageListener>> f1626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.fly.tcp.c.d f1627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.fly.tcp.c.b f1628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.fly.tcp.c.c f1629g;

    public b(cn.fly.tcp.a.c cVar, a aVar) {
        this.f1623a = cVar;
        this.f1624b = aVar;
        cn.fly.tcp.f.b bVar = new cn.fly.tcp.f.b(FlySDK.getContext());
        this.f1625c = bVar;
        ConcurrentHashMap<Integer, CopyOnWriteArraySet<BusinessMessageListener>> concurrentHashMap = new ConcurrentHashMap<>();
        this.f1626d = concurrentHashMap;
        cn.fly.tcp.c.d dVar = new cn.fly.tcp.c.d(cVar, b());
        this.f1627e = dVar;
        cn.fly.tcp.c.b bVar2 = new cn.fly.tcp.c.b(bVar, aVar.a(), dVar, concurrentHashMap, c());
        this.f1628f = bVar2;
        this.f1629g = new cn.fly.tcp.c.c(dVar, bVar2, d());
    }

    private cn.fly.tcp.c.b.a c() {
        return new cn.fly.tcp.c.b.a() { // from class: cn.fly.tcp.e.b.3
            @Override // cn.fly.tcp.c.b.a
            public int a() {
                return b.this.f1624b.d();
            }
        };
    }

    private cn.fly.tcp.c.c.a d() {
        return new cn.fly.tcp.c.c.a() { // from class: cn.fly.tcp.e.b.4
            @Override // cn.fly.tcp.c.c.a
            public boolean a(cn.fly.tcp.a.a aVar) {
                if (b.this.f1623a == null || b.this.f1623a.a(aVar)) {
                    return true;
                }
                cn.fly.tcp.f.c.a().b("TP ignore stale messageReceived");
                return false;
            }

            @Override // cn.fly.tcp.c.c.a
            public HashMap<String, Object> b(String str) {
                return b.this.f1624b.b(str);
            }

            @Override // cn.fly.tcp.c.c.a
            public void c(String str) {
                b.this.f1624b.a(str);
            }

            @Override // cn.fly.tcp.c.c.a
            public String a(String str) throws Throwable {
                if (b.this.f1624b.j()) {
                    return b.this.f1624b.b(b.this.f1624b.m(), str);
                }
                cn.fly.tcp.f.c.a().b("rcv pu5h msg, but send token is 0");
                return null;
            }
        };
    }

    private cn.fly.tcp.c.d.a b() {
        return new cn.fly.tcp.c.d.a() { // from class: cn.fly.tcp.e.b.2
            @Override // cn.fly.tcp.c.d.a
            public String a() {
                return b.this.f1624b.m();
            }

            @Override // cn.fly.tcp.c.d.a
            public String a(String str, String str2) throws Throwable {
                return b.this.f1624b.c(str, str2);
            }
        };
    }

    void a() {
        this.f1625c.a();
    }

    void a(String str) {
        this.f1625c.b(str);
    }

    void a(int i10, BusinessMessageListener businessMessageListener) {
        Iterator<Map<String, Object>> it2;
        CopyOnWriteArraySet<BusinessMessageListener> copyOnWriteArraySetPutIfAbsent;
        try {
            cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: bisType = " + i10 + ", listener = " + businessMessageListener);
            Integer numValueOf = Integer.valueOf(i10);
            if (businessMessageListener == null) {
                cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: remove key = " + numValueOf);
                this.f1626d.remove(numValueOf);
                return;
            }
            CopyOnWriteArraySet<BusinessMessageListener> copyOnWriteArraySet = this.f1626d.get(numValueOf);
            if (copyOnWriteArraySet == null && (copyOnWriteArraySetPutIfAbsent = this.f1626d.putIfAbsent(numValueOf, (copyOnWriteArraySet = new CopyOnWriteArraySet<>()))) != null) {
                copyOnWriteArraySet = copyOnWriteArraySetPutIfAbsent;
            }
            CopyOnWriteArraySet<BusinessMessageListener> copyOnWriteArraySet2 = copyOnWriteArraySet;
            copyOnWriteArraySet2.add(businessMessageListener);
            if (cn.fly.tcp.c.a.a().b()) {
                cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: has cached msg");
                List<Map<String, Object>> listC = cn.fly.tcp.c.a.a().c();
                ArrayList<Map<String, Object>> arrayList = new ArrayList();
                Iterator<Map<String, Object>> it3 = listC.iterator();
                while (it3.hasNext()) {
                    Map<String, Object> next = it3.next();
                    Object obj = next.get("bisType");
                    int iIntValue = obj != null ? ((Integer) obj).intValue() : 0;
                    final String str = (String) next.get("workId");
                    final String str2 = (String) next.get(cn.fly.tcp.c.a.f1572a);
                    final int iA = a.a((HashMap<String, Object>) new HashMap(next), "ackStatus", 0);
                    cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: cachedBisType = " + iIntValue + ", target bisType = " + numValueOf);
                    if (iIntValue == numValueOf.intValue()) {
                        for (final BusinessMessageListener businessMessageListener2 : copyOnWriteArraySet2) {
                            final int i11 = iIntValue;
                            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tcp.e.b.1
                                @Override // android.os.Handler.Callback
                                public boolean handleMessage(Message message) {
                                    if (businessMessageListener2 == null) {
                                        return false;
                                    }
                                    try {
                                        cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: callback to messageReceived. bisType: " + i11 + ", workId: " + str + ", msg: " + str2);
                                        BusinessMessageListener businessMessageListener3 = businessMessageListener2;
                                        if (businessMessageListener3 instanceof BusinessMessageCallback) {
                                            ((BusinessMessageCallback) businessMessageListener3).messageReceived(iA, i11, str, str2);
                                        } else {
                                            businessMessageListener3.messageReceived(i11, str, str2);
                                        }
                                        return false;
                                    } catch (Throwable th) {
                                        cn.fly.tcp.f.c.a().a(th);
                                        return false;
                                    }
                                }
                            });
                            it3 = it3;
                        }
                        it2 = it3;
                        cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: mark msg to rm. msg = " + next);
                        arrayList.add(next);
                    } else {
                        it2 = it3;
                    }
                    it3 = it2;
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                for (Map<String, Object> map : arrayList) {
                    cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: rm msg = " + map);
                    cn.fly.tcp.c.a.a().b(map);
                }
                return;
            }
            cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: no cached msg");
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().b("TP tcpPu5hServ addBMListener: error");
            cn.fly.tcp.f.c.a().a(th);
        }
    }

    public void a(cn.fly.tcp.a.a aVar, cn.fly.tcp.b.a aVar2) {
        this.f1629g.a(aVar, aVar2);
    }
}
