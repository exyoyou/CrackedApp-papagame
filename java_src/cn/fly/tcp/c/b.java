package cn.fly.tcp.c;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import cn.fly.commons.ac;
import cn.fly.mcl.BusinessMessageCallback;
import cn.fly.mcl.BusinessMessageListener;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.UIHandler;
import cn.fly.tools.utils.i;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.f.b f1575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cn.fly.tcp.d.b f1576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f1577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Integer, CopyOnWriteArraySet<BusinessMessageListener>> f1578d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f1579e;

    public interface a {
        int a();
    }

    public b(cn.fly.tcp.f.b bVar, cn.fly.tcp.d.b bVar2, d dVar, ConcurrentHashMap<Integer, CopyOnWriteArraySet<BusinessMessageListener>> concurrentHashMap, a aVar) {
        this.f1575a = bVar;
        this.f1576b = bVar2;
        this.f1577c = dVar;
        this.f1578d = concurrentHashMap;
        this.f1579e = aVar;
    }

    public boolean a(final long j10, final String str, int i10, final int i11, final String str2, final cn.fly.tcp.d.a aVar) {
        try {
            if (a(str, i10)) {
                cn.fly.tcp.f.c.a().b("TP duplicate biz push ignored, no callback. uniqueId: " + j10 + ", workId: " + str + ", bisType: " + i11 + ", expire: " + i10);
                this.f1577c.a(aVar);
                return true;
            }
            ac.f1042a.execute(new i() { // from class: cn.fly.tcp.c.b.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r9v0 */
                /* JADX WARN: Type inference failed for: r9v1, types: [int] */
                /* JADX WARN: Type inference failed for: r9v2 */
                @Override // cn.fly.tools.utils.i
                protected void a() throws Throwable {
                    ?? r10;
                    boolean zA = false;
                    if (aVar != null) {
                        try {
                            zA = b.this.f1576b.a(aVar, b.this.f1579e.a()).a();
                        } catch (Throwable th) {
                            cn.fly.tcp.f.c.a().a(th);
                        }
                        if (zA) {
                            cn.fly.tcp.f.c.a().b("TP rp receipt confirmed");
                        }
                        r10 = zA;
                    } else {
                        r10 = 0;
                    }
                    b.this.a(j10, str, i11, str2, r10);
                }
            });
            return false;
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
            this.f1577c.a(aVar);
            return false;
        }
    }

    private synchronized boolean a(String str, int i10) {
        if (i10 > 0) {
            if (!TextUtils.isEmpty(str)) {
                long jA = this.f1575a.a(str);
                if (System.currentTimeMillis() <= jA) {
                    cn.fly.tcp.f.c.a().b("TP duplicate biz push detected. workId: " + str + ", expireTime: " + jA);
                    return true;
                }
                this.f1575a.a(str, System.currentTimeMillis() + (((long) i10) * 1000));
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, final String str, int i10, String str2, final int i11) {
        try {
            HashMap mapFromJson = HashonHelper.fromJson(str2);
            mapFromJson.put("uniqueId", Long.valueOf(j10));
            final String strFromHashMap = HashonHelper.fromHashMap(mapFromJson);
            final Integer numValueOf = Integer.valueOf(i10);
            CopyOnWriteArraySet<BusinessMessageListener> copyOnWriteArraySet = this.f1578d.get(numValueOf);
            if (copyOnWriteArraySet != null && !copyOnWriteArraySet.isEmpty()) {
                cn.fly.tcp.f.c.a().b("[dealBusinessMsg]TP Biz msg listener detected, callback directly. bisType: " + numValueOf);
                for (final BusinessMessageListener businessMessageListener : copyOnWriteArraySet) {
                    UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tcp.c.b.2
                        @Override // android.os.Handler.Callback
                        public boolean handleMessage(Message message) {
                            try {
                                BusinessMessageListener businessMessageListener2 = businessMessageListener;
                                if (businessMessageListener2 != null) {
                                    if (businessMessageListener2 instanceof BusinessMessageCallback) {
                                        cn.fly.tcp.f.c.a().b("[dealBusinessMsg]TP callback to messageReceived with st. bisType: " + numValueOf + ", workId: " + str + ", msg: " + strFromHashMap);
                                        ((BusinessMessageCallback) businessMessageListener).messageReceived(i11, numValueOf.intValue(), str, strFromHashMap);
                                    } else {
                                        cn.fly.tcp.f.c.a().b("[dealBusinessMsg]TP callback to messageReceived. bisType: " + numValueOf + ", workId: " + str + ", msg: " + strFromHashMap);
                                        businessMessageListener.messageReceived(numValueOf.intValue(), str, strFromHashMap);
                                    }
                                }
                                return false;
                            } catch (Throwable th) {
                                cn.fly.tcp.f.c.a().a(th);
                                return false;
                            }
                        }
                    });
                }
                return;
            }
            cn.fly.tcp.f.c.a().b("[dealBusinessMsg]TP No biz msg listener detected, cache msg. bisType: " + numValueOf);
            HashMap map = new HashMap();
            map.put("bisType", numValueOf);
            map.put("workId", str);
            map.put(cn.fly.tcp.c.a.f1572a, strFromHashMap);
            map.put("ackStatus", Integer.valueOf(i11));
            cn.fly.tcp.c.a.a().a(map);
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
    }
}
