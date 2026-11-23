package cn.fly.tools.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.GnssStatus;
import android.os.Handler;
import cn.fly.FlySDK;
import cn.fly.commons.CSCenter;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"MissingPermission"})
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f2277a;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f2278j = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Object f2281d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Class<?> f2283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f2284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f2285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile Object f2286i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile List f2279b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile List f2280c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f2282e = g();

    public interface a {
        void a();
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object f() throws Throwable {
        HashMap map = new HashMap();
        final int iIdentityHashCode = System.identityHashCode(map);
        map.put(x.b("018=cjXdBhc4i:ehdk4hchMcfehdcSgcd*di6eEcb"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.2
            @Override // cn.fly.tools.utils.ReflectHelper.a
            public Object a(Object[] objArr) {
                if (objArr == null || ((Integer) objArr[0]).intValue() != 4) {
                    return null;
                }
                e.this.i();
                return null;
            }
        });
        map.put("equals", new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.3
            @Override // cn.fly.tools.utils.ReflectHelper.a
            public Object a(Object[] objArr) {
                if (objArr != null) {
                    Object obj = objArr[0];
                    if (obj != null) {
                        return Boolean.valueOf(obj.hashCode() == iIdentityHashCode);
                    }
                }
                return Boolean.FALSE;
            }
        });
        map.put(x.b("008gcJehQgVdccjcb)e"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.4
            @Override // cn.fly.tools.utils.ReflectHelper.a
            public Object a(Object[] objArr) {
                return Integer.valueOf(iIdentityHashCode);
            }
        });
        return ReflectHelper.createProxy((Map<String, ReflectHelper.a<Object[], Object>>) map, (Class<?>[]) new Class[]{Class.forName(x.b("026cdPcbcicjchcbckYfIcjBbch]chcj5dYckhc!i ehdkHhch:cfeh") + "$" + x.b("008Gedcheh8hede7ci"))});
    }

    private Object g() {
        HashMap map = new HashMap();
        final int iIdentityHashCode = System.identityHashCode(map);
        try {
            map.put(x.b("0179cjJdKedcj[bchPchcjPd9dcGgcd7diCe6cb"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.5
                @Override // cn.fly.tools.utils.ReflectHelper.a
                public Object a(Object[] objArr) {
                    Object obj;
                    if (objArr != null) {
                        try {
                            if (objArr.length > 0) {
                                FlyLog.getInstance().d("[212] oncge" + objArr[0], new Object[0]);
                                Object obj2 = objArr[0];
                                if (obj2 instanceof List) {
                                    e.this.f2280c.addAll((List) obj2);
                                } else {
                                    e.this.f2280c.add(objArr[0]);
                                }
                            }
                        } catch (Throwable th) {
                            try {
                                FlyLog.getInstance().d(th);
                                synchronized (obj) {
                                    return null;
                                }
                            } finally {
                                synchronized (e.f2278j) {
                                    e.f2278j.notifyAll();
                                }
                            }
                        }
                    }
                    e.this.j();
                    synchronized (e.f2278j) {
                        e.f2278j.notifyAll();
                    }
                    return null;
                }
            });
            map.put("equals", new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.6
                @Override // cn.fly.tools.utils.ReflectHelper.a
                public Object a(Object[] objArr) {
                    Object obj;
                    FlyLog.getInstance().d("equals " + objArr, new Object[0]);
                    if (objArr == null || (obj = objArr[0]) == null) {
                        return Boolean.FALSE;
                    }
                    return Boolean.valueOf(obj.hashCode() == iIdentityHashCode);
                }
            });
            map.put(x.b("008gcQehZg?dccjcbCe"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.utils.e.7
                @Override // cn.fly.tools.utils.ReflectHelper.a
                public Object a(Object[] objArr) {
                    FlyLog.getInstance().d(x.b("008gc,ehRg$dccjcb-e"), new Object[0]);
                    return Integer.valueOf(iIdentityHashCode);
                }
            });
            return ReflectHelper.createProxy((Map<String, ReflectHelper.a<Object[], Object>>) map, (Class<?>[]) new Class[]{k()});
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    private GnssStatus.Callback h() {
        if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
            return new GnssStatus.Callback() { // from class: cn.fly.tools.utils.e.8
                @Override // android.location.GnssStatus.Callback
                public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
                    super.onSatelliteStatusChanged(gnssStatus);
                    e.this.i();
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            a aVar = this.f2285h;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th, "%s", "[cl]");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f2282e != null) {
            ReflectHelper.invokeInstanceMethod(this.f2281d, x.b("013LciLe5cecjcc+e2dj)iNcb@cheWeh"), new Object[]{this.f2282e}, new Class[]{k()}, null);
        }
    }

    private Class<?> k() {
        if (this.f2283f == null) {
            try {
                this.f2283f = Class.forName(x.b("033cd)cbcicjchcbckCfUcj2bch$chcjJd'ckedcjKbch chcjZdLedchehLhede3ci"));
            } catch (Throwable unused) {
            }
        }
        return this.f2283f;
    }

    public static e a() {
        if (f2277a == null) {
            synchronized (e.class) {
                if (f2277a == null) {
                    f2277a = new e();
                }
            }
        }
        return f2277a;
    }

    private Object b(String str) {
        if (DH.SyncMtd.getOSVersionIntForFly() <= 25) {
            return cn.fly.tools.b.e.a(FlySDK.getContext()).b(str);
        }
        try {
            return cn.fly.tools.b.i.a(FlySDK.getContext(), str);
        } catch (Throwable unused) {
            return cn.fly.tools.b.e.a(FlySDK.getContext()).b(str);
        }
    }

    private void e() {
        if (cn.fly.commons.e.g()) {
            try {
                if (DH.SyncMtd.checkPermission(x.b("039cd2cbcicjchcbck,ieRcicechehehchcj>d^ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"))) {
                    if (this.f2281d == null) {
                        this.f2281d = DH.SyncMtd.getSystemServiceSafe(x.b("008f^cjWbch3chcj=d"));
                    }
                    if (this.f2281d == null) {
                        return;
                    }
                    if (DH.SyncMtd.getOSVersionIntForFly() < 31 && FlySDK.getContext().getApplicationInfo().targetSdkVersion < 31) {
                        cn.fly.commons.a.m.a().b().post(new Runnable() { // from class: cn.fly.tools.utils.e.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    ReflectHelper.invokeInstanceMethod(e.this.f2281d, x.b("020c-cbcbhcHiMehdkXhch>cfehedcheh3hede)ci"), new Object[]{e.this.f()}, new Class[]{Class.forName(x.b("026cd1cbcicjchcbckFf.cjObchXchcjRd6ckhcAiCehdkOhch3cfeh") + "$" + x.b("008=edcheh$hede7ci"))});
                                    FlyLog.getInstance().d("[212] rg < 31", new Object[0]);
                                } catch (Throwable th) {
                                    FlyLog.getInstance().d(th, "%s", "[cl]");
                                }
                            }
                        });
                    } else if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
                        ReflectHelper.invokeInstanceMethod(this.f2281d, x.b("0265ciPe'dichehJhe9cihcGdBehehdkOhch7cfehdc;cffFeeRcb?dg"), new Object[]{h(), cn.fly.commons.a.m.a().b()}, new Class[]{s.a(), Handler.class});
                        FlyLog.getInstance().d("[212] rg >= 31", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th, "%s", "[212]");
            }
        }
    }

    public Object c() {
        return b(x.b("003Udi^i;eh"));
    }

    private void b(Context context, String str, long j10) {
        if (cn.fly.commons.e.e()) {
            try {
                cn.fly.tools.b.e.a(context).a(str, 1000L, 0.0f, this.f2282e);
                f2278j.wait(j10);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
            j();
        }
    }

    public void a(a aVar) {
        this.f2285h = aVar;
        e();
    }

    public List a(Context context, int i10, int i11, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        if (CSCenter.getInstance().isLocationDataEnable()) {
            arrayList.addAll(a(z11));
            if (arrayList.isEmpty()) {
                synchronized (f2278j) {
                    arrayList.addAll(a(z11));
                    if (arrayList.isEmpty()) {
                        arrayList.addAll(a(context, i10, i11, z10));
                    }
                }
            }
        } else {
            arrayList.add(CSCenter.getInstance().getLocation());
        }
        return arrayList;
    }

    public Object b() {
        return this.f2286i;
    }

    private List a(Context context, int i10, int i11, boolean z10) {
        Object objB;
        Object objB2;
        ArrayList arrayList = new ArrayList();
        try {
            if (DH.SyncMtd.checkPermission(x.b("039cdTcbcicjchcbckFieIcicechehehchcjDd[ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf")) || DH.SyncMtd.checkPermission(x.b("041cd;cbcicjchcbckDieDcicechehehchcj'dZckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf"))) {
                if (this.f2281d == null) {
                    this.f2281d = DH.SyncMtd.getSystemServiceSafe(x.b("008fZcjMbchNchcjSd"));
                }
                if (this.f2281d == null) {
                    return null;
                }
                synchronized (f2278j) {
                    if (i10 != 0) {
                        try {
                            if (a(this.f2281d, x.b("003[diLi[eh"))) {
                                a(context, x.b("003;di.iDeh"), i10 * 1000);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if ((i11 != 0) && a(this.f2281d, x.b("007dehDefcjcidg"))) {
                        a(context, x.b("007dehNefcjcidg"), i11 * 1000);
                    }
                }
            }
            if (this.f2280c.isEmpty() && z10) {
                Object objB3 = b(x.b("003!di5iYeh"));
                if (objB3 != null) {
                    this.f2280c.add(objB3);
                }
                if (this.f2280c.isEmpty() && (objB2 = b(x.b("007deh-efcjcidg"))) != null) {
                    this.f2280c.add(objB2);
                }
                if (this.f2280c.isEmpty() && (objB = b("passive")) != null) {
                    this.f2280c.add(objB);
                }
            }
            if (!this.f2280c.isEmpty()) {
                for (Object obj : this.f2280c) {
                    if (obj != null) {
                        this.f2279b.add(ReflectHelper.newInstance(ReflectHelper.importClass(x.b("025cdIcbcicjchcbckQfScj2bch<chcj^d4ckedcj+bch5chcjFd")), obj));
                        arrayList.add(ReflectHelper.newInstance(ReflectHelper.importClass(x.b("025cd>cbcicjchcbck<fPcj?bch]chcj[dFckedcj5bchGchcj)d")), obj));
                    }
                }
                this.f2284g = System.currentTimeMillis();
                this.f2280c.clear();
            }
        } catch (Throwable th2) {
            FlyLog.getInstance().d(th2);
        }
        return arrayList;
    }

    private void a(Context context, String str, long j10) {
        if (DH.SyncMtd.getOSVersionIntForFly() <= 25) {
            b(context, str, j10);
            return;
        }
        try {
            Object objA = cn.fly.tools.b.i.a(context, str, j10);
            if (objA != null) {
                this.f2280c.add(objA);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d("[212] cur err " + th, new Object[0]);
            b(context, str, j10);
        }
    }

    private boolean a(Object obj, String str) {
        return cn.fly.commons.e.e() && ((Boolean) ReflectHelper.invokeInstanceMethodNoThrow(obj, x.b("017RchehfkcicjccchcbKe'cifhEdc*eeMfe?cb"), Boolean.FALSE, str)).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0047 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #0 {all -> 0x004d, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x001d, B:9:0x0023, B:11:0x0029, B:13:0x002f, B:14:0x0047), top: B:19:0x0007 }] */
    private List a(boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (!z10) {
            try {
                if (!this.f2279b.isEmpty() && System.currentTimeMillis() - this.f2284g <= 180000) {
                    for (Object obj : this.f2279b) {
                        if (obj != null) {
                            arrayList.add(ReflectHelper.newInstance(ReflectHelper.importClass(x.b("025cdQcbcicjchcbck1fRcjQbch.chcj]dZckedcjXbch7chcjHd")), obj));
                        }
                    }
                } else {
                    this.f2279b.clear();
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        } else {
            this.f2279b.clear();
        }
        return arrayList;
    }

    public void a(Object obj) {
        if (obj != null) {
            this.f2286i = obj;
        }
    }

    public boolean a(String str) {
        return (x.b("0031diNi:eh").equalsIgnoreCase(str) && DH.SyncMtd.checkPermission(x.b("039cd!cbcicjchcbck-ie^cicechehehchcjQd:ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"))) || (x.b("007dehPefcjcidg").equalsIgnoreCase(str) && DH.SyncMtd.checkPermission(x.b("039cd_cbcicjchcbck?ie0cicechehehchcjUd6ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"))) || ((x.b("007deh*efcjcidg").equalsIgnoreCase(str) && DH.SyncMtd.checkPermission(x.b("041cd9cbcicjchcbck]ieMcicechehehchcj>d$ckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf"))) || (("passive".equalsIgnoreCase(str) && DH.SyncMtd.checkPermission(x.b("039cd(cbcicjchcbckRie1cicechehehchcj]dOckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"))) || ("passive".equalsIgnoreCase(str) && DH.SyncMtd.checkPermission(x.b("041cd7cbcicjchcbckOie8cicechehehchcjVd@ckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf")))));
    }
}
