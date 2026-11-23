package cn.fly.tools.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ae;
import cn.fly.tools.FlyLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile k f2326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BroadcastReceiver f2327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f2328c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f2329d = 0;

    public interface a {
        void a();
    }

    private k() {
        this.f2327b = null;
        if (cn.fly.commons.e.c() || cn.fly.commons.e.d()) {
            this.f2327b = new BroadcastReceiver() { // from class: cn.fly.tools.utils.k.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    k.a().a(context, intent);
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(cn.fly.commons.a.m.a("029ef+edekelejedemXfgjEemghejfgejemfmgdgegdhjeifeglgefhjehj"));
            C1293r.a(this.f2327b, intentFilter);
        }
    }

    public static k a() {
        if (f2326a == null) {
            synchronized (k.class) {
                if (f2326a == null) {
                    f2326a = new k();
                }
            }
        }
        return f2326a;
    }

    public void a(String str, a aVar) {
        if (aVar == null || str == null || this.f2328c.containsKey(str)) {
            return;
        }
        this.f2328c.put(str, aVar);
    }

    public void a(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            if (!cn.fly.commons.a.m.a("029efBedekelejedemAfgj;emghejfgejemfmgdgegdhjeifeglgefhjehj").equals(intent.getAction()) || intent.getParcelableExtra(cn.fly.commons.a.m.a("011fgj_ghelekfiff5f)fgel")) == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f2329d > 2000) {
                this.f2329d = jCurrentTimeMillis;
                cn.fly.commons.a.m.a().b(2500L, new i() { // from class: cn.fly.tools.utils.k.2
                    @Override // cn.fly.tools.utils.i
                    protected void a() {
                        if (cn.fly.commons.e.j()) {
                            DH.requester(FlySDK.getContext()).getMwfoForce(true).request(new DH.DHResponder() { // from class: cn.fly.tools.utils.k.2.1
                                @Override // cn.fly.tools.utils.DH.DHResponder
                                public void onResponse(DH.DHResponse dHResponse) {
                                    HashMap<String, Object> mwfoForce = dHResponse.getMwfoForce(new int[0]);
                                    if (mwfoForce == null) {
                                        return;
                                    }
                                    String str = (String) mwfoForce.get("ssmt");
                                    String str2 = (String) mwfoForce.get("bsmt");
                                    FlyLog.getInstance().d("[MCM] cdi " + str + " bcdi " + str2 + " len " + k.a().f2328c.size(), new Object[0]);
                                    if (TextUtils.isEmpty(str2) && (TextUtils.isEmpty(str) || cn.fly.commons.a.m.a("014MjfehYfMfiXf0elghTf9jggjgjejedjh").equalsIgnoreCase(str))) {
                                        return;
                                    }
                                    TreeMap treeMap = new TreeMap();
                                    treeMap.put("ssmt", str);
                                    treeMap.put("bsmt", str2);
                                    String strMD5 = Data.MD5(new JSONObject(treeMap).toString());
                                    String strB = ae.b().b(ae.f1069i, (String) null);
                                    if (strB == null || !strB.equals(strMD5)) {
                                        Iterator it2 = k.this.f2328c.values().iterator();
                                        while (it2.hasNext()) {
                                            ((a) it2.next()).a();
                                        }
                                    }
                                }
                            });
                        }
                    }
                });
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
