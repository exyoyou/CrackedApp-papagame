package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.ce;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f85396a = 86400000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static f f85397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85398c = aw.b().b("id");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Object f85399j = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f85400d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f85402f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f85405i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.c f85401e = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Set<com.umeng.commonsdk.statistics.idtracking.a> f85404h = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f85403g = 86400000;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f85406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Set<String> f85407b = new HashSet();

        public a(Context context) {
            this.f85406a = context;
        }

        public synchronized boolean a(String str) {
            return !this.f85407b.contains(str);
        }

        public synchronized void b(String str) {
            this.f85407b.add(str);
        }

        public void c(String str) {
            this.f85407b.remove(str);
        }

        public synchronized void a() {
            if (!this.f85407b.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it2 = this.f85407b.iterator();
                while (it2.hasNext()) {
                    sb2.append(it2.next());
                    sb2.append(StringUtil.COMMA);
                }
                sb2.deleteCharAt(sb2.length() - 1);
                PreferenceWrapper.getDefault(this.f85406a).edit().putString("invld_id", sb2.toString()).commit();
            }
        }

        public synchronized void b() {
            String[] strArrSplit;
            String string = PreferenceWrapper.getDefault(this.f85406a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (strArrSplit = string.split(",")) != null) {
                for (String str : strArrSplit) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f85407b.add(str);
                    }
                }
            }
        }
    }

    f(Context context) {
        this.f85405i = null;
        this.f85400d = new File(context.getFilesDir(), f85398c);
        a aVar = new a(context);
        this.f85405i = aVar;
        aVar.b();
    }

    public static synchronized void a() {
        f fVar = f85397b;
        if (fVar != null) {
            fVar.e();
            f85397b = null;
        }
    }

    private synchronized void h() {
        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f85404h) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    map.put(aVar.b(), aVar.d());
                }
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        cVar.a(arrayList);
        cVar.a(map);
        synchronized (this) {
            this.f85401e = cVar;
        }
    }

    private com.umeng.commonsdk.statistics.proto.c i() {
        Throwable th;
        FileInputStream fileInputStream;
        synchronized (f85399j) {
            if (!this.f85400d.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(this.f85400d);
                try {
                    try {
                        byte[] streamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
                        new by().a(cVar, streamToByteArray);
                        HelperUtils.safeClose(fileInputStream);
                        return cVar;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        HelperUtils.safeClose(fileInputStream);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                HelperUtils.safeClose(fileInputStream);
                throw th;
            }
        }
    }

    public synchronized void b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f85402f >= this.f85403g) {
            boolean z10 = false;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f85404h) {
                if (aVar.c() && aVar.a()) {
                    if (!aVar.c()) {
                        this.f85405i.b(aVar.b());
                    }
                    z10 = true;
                }
            }
            if (z10) {
                h();
                this.f85405i.a();
                g();
            }
            this.f85402f = jCurrentTimeMillis;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.c c() {
        return this.f85401e;
    }

    public String d() {
        return null;
    }

    public synchronized void e() {
        if (f85397b == null) {
            return;
        }
        boolean z10 = false;
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f85404h) {
            if (aVar.c() && aVar.e() != null && !aVar.e().isEmpty()) {
                aVar.a((List<com.umeng.commonsdk.statistics.proto.a>) null);
                z10 = true;
            }
        }
        if (z10) {
            this.f85401e.b(false);
            g();
        }
    }

    public synchronized void f() {
        com.umeng.commonsdk.statistics.proto.c cVarI = i();
        if (cVarI == null) {
            return;
        }
        a(cVarI);
        ArrayList arrayList = new ArrayList(this.f85404h.size());
        synchronized (this) {
            this.f85401e = cVarI;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f85404h) {
                aVar.a(this.f85401e);
                if (!aVar.c()) {
                    arrayList.add(aVar);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.f85404h.remove((com.umeng.commonsdk.statistics.idtracking.a) it2.next());
            }
            h();
        }
    }

    public synchronized void g() {
        com.umeng.commonsdk.statistics.proto.c cVar = this.f85401e;
        if (cVar != null) {
            b(cVar);
        }
    }

    public static synchronized f a(Context context) {
        if (f85397b == null) {
            f fVar = new f(context);
            f85397b = fVar;
            fVar.a(new g(context));
            f85397b.a(new b(context));
            f85397b.a(new k(context));
            f85397b.a(new e(context));
            f85397b.a(new d(context));
            f85397b.a(new h(context));
            f85397b.a(new j());
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
                f85397b.a(new i(context));
                if (DeviceConfig.isHonorDevice()) {
                    f85397b.a(new c(context));
                }
            }
            f85397b.f();
        }
        return f85397b;
    }

    private void b(com.umeng.commonsdk.statistics.proto.c cVar) {
        byte[] bArrA;
        synchronized (f85399j) {
            if (cVar != null) {
                try {
                    synchronized (this) {
                        a(cVar);
                        bArrA = new ce().a(cVar);
                    }
                    if (bArrA != null) {
                        HelperUtils.writeFile(this.f85400d, bArrA);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private boolean a(com.umeng.commonsdk.statistics.idtracking.a aVar) {
        if (this.f85405i.a(aVar.b())) {
            return this.f85404h.add(aVar);
        }
        if (!AnalyticsConstants.UM_DEBUG) {
            return false;
        }
        MLog.w("invalid domain: " + aVar.b());
        return false;
    }

    public void a(long j10) {
        this.f85403g = j10;
    }

    private void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map;
        if (cVar == null || (map = cVar.f85492a) == null) {
            return;
        }
        if (map.containsKey("mac") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f85576h)) {
            cVar.f85492a.remove("mac");
        }
        if (cVar.f85492a.containsKey("imei") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f85575g)) {
            cVar.f85492a.remove("imei");
        }
        if (cVar.f85492a.containsKey("android_id") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f85577i)) {
            cVar.f85492a.remove("android_id");
        }
        if (cVar.f85492a.containsKey("serial") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f85578j)) {
            cVar.f85492a.remove("serial");
        }
        if (cVar.f85492a.containsKey("idfa") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f85591w)) {
            cVar.f85492a.remove("idfa");
        }
        if (!cVar.f85492a.containsKey("oaid") || FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            return;
        }
        cVar.f85492a.remove("oaid");
    }
}
