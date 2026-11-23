package cn.fly.commons.a;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.FlyProduct;
import cn.fly.commons.ac;
import cn.fly.commons.ad;
import cn.fly.commons.q;
import cn.fly.tools.FlyLog;
import cn.fly.tools.MDP;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ReflectHelper;
import cn.fly.tools.utils.ResHelper;
import cn.fly.tools.utils.UIHandler;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final WeakHashMap<String, Object> f940k = new WeakHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object f941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile long f947g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f950j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f951l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f952m;

    protected c(String str, String str2, long j10) {
        this(str, 0L, str2, 0L, j10);
    }

    private void n() {
        long jB = b();
        if (jB > 0) {
            this.f947g = System.currentTimeMillis() + (jB * 1000);
        } else {
            this.f947g = Long.MAX_VALUE;
            this.f950j = true;
        }
    }

    public c a(Object obj) {
        this.f941a = obj;
        return this;
    }

    protected abstract void a() throws Throwable;

    protected long b() {
        try {
            String str = this.f944d;
            if (str != null) {
                return Long.parseLong(String.valueOf(cn.fly.commons.c.a(str, Long.valueOf(this.f946f))));
            }
            return 0L;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return 0L;
        }
    }

    public void c() {
        this.f950j = true;
        this.f951l = 0L;
        this.f947g = Long.MAX_VALUE;
    }

    protected void d() {
    }

    public String e() {
        return this.f943c;
    }

    public boolean f() {
        return !this.f950j && System.currentTimeMillis() > this.f947g;
    }

    protected boolean g() {
        return ((Long) cn.fly.commons.c.a(this.f943c, Long.valueOf(this.f945e))).longValue() != 0 && h();
    }

    protected final boolean h() {
        if ("bs,l,ol,wi,wl,ext,aa,".contains(this.f943c + ",")) {
            return cn.fly.commons.k.a().b();
        }
        return true;
    }

    protected boolean i() {
        return this.f942b.get() == 0;
    }

    public boolean j() {
        if (!g()) {
            return false;
        }
        ac.f1042a.execute(this);
        return true;
    }

    protected boolean k() {
        boolean zB = cn.fly.commons.c.b();
        boolean zC = cn.fly.commons.c.c();
        if (!zB || !zC) {
            FlyLog.getInstance().d("slt: " + e() + ", to: " + zB + ", conn: " + zC, new Object[0]);
            return false;
        }
        boolean zG = g();
        FlyLog.getInstance().d("slt : " + getClass().getSimpleName() + ", to: " + zB + ", conn: " + zC + ", " + this.f943c + ": " + zG + ", key: " + a(this.f943c, 0) + ", gp: " + b() + " , oce " + this.f950j + " , tt " + this.f942b.get(), new Object[0]);
        return zG;
    }

    public int l() {
        return this.f948h;
    }

    protected void m() {
        if (TextUtils.isEmpty(this.f943c)) {
            return;
        }
        cn.fly.tools.utils.g.a().a("fcs_" + this.f943c, Long.valueOf(System.currentTimeMillis()));
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f951l > 0) {
            m.a().a(this.f951l, this, this.f949i);
            this.f951l = 0L;
            return;
        }
        try {
            if (i()) {
                d();
            }
            if (k() && a(this.f943c)) {
                a();
            }
        } catch (Throwable th) {
            try {
                FlyLog.getInstance().d(th);
            } finally {
                n();
                this.f942b.incrementAndGet();
            }
        }
    }

    protected c(String str, long j10, String str2, long j11, long j12) {
        this.f942b = new AtomicInteger(0);
        this.f949i = 0;
        this.f950j = false;
        this.f952m = 0;
        this.f943c = str;
        this.f944d = str2;
        this.f945e = j10;
        this.f946f = j11;
        this.f948h = getClass().hashCode();
        this.f951l = j12;
        this.f947g = System.currentTimeMillis();
        this.f952m = ((Integer) cn.fly.commons.c.a("sclt", 0)).intValue();
    }

    protected boolean a(String str) {
        if (this.f952m != 1) {
            return true;
        }
        cn.fly.tools.utils.g gVarA = cn.fly.tools.utils.g.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("fcs_");
        sb2.append(str);
        return System.currentTimeMillis() - gVarA.a(sb2.toString(), 1199116800000L) >= b() * 1000;
    }

    protected TreeMap<String, Object> b(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            HashMap map = (HashMap) obj;
            TreeMap<String, Object> treeMap = new TreeMap<>();
            treeMap.put("ltdmt", map.get("ltdmt"));
            treeMap.put("lndmt", map.get("lndmt"));
            return treeMap;
        } catch (Throwable unused) {
            return null;
        }
    }

    protected void a(int i10) {
        this.f949i = i10;
    }

    public <T> T a(String str, T t10) {
        return (T) cn.fly.commons.c.a(str, t10);
    }

    protected void a(final cn.fly.tools.utils.d<HashMap<String, Object>> dVar) {
        if (((Integer) a(cn.fly.commons.n.a("002?bi.e"), 0)).intValue() == 1) {
            DH.requester(FlySDK.getContext()).getPosCommForce(0, 0, true, false).request(new DH.DHResponder() { // from class: cn.fly.commons.a.c.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    List<HashMap<String, Object>> posCommForce = dHResponse.getPosCommForce(new int[0]);
                    if (posCommForce == null || posCommForce.isEmpty()) {
                        dVar.a(null);
                    } else {
                        dVar.a(posCommForce.get(posCommForce.size() - 1));
                    }
                }
            });
        } else {
            dVar.a(null);
        }
    }

    protected void a(long j10, String str, Object obj) {
        a(j10, str, obj, false);
    }

    protected void a(long j10, String str, Object obj, boolean z10) {
        a(j10, str, obj, null, z10);
    }

    protected void a(long j10, String str, Object obj, HashMap<String, Object> map, boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        final long j11 = j10 > 0 ? (j10 * 1000) + jCurrentTimeMillis : jCurrentTimeMillis;
        final HashMap<String, Object> map2 = new HashMap<>();
        map2.put(cn.fly.commons.n.a("004gFca]hd"), str);
        map2.put(cn.fly.commons.n.a("004eFbgdgSg"), obj);
        map2.put(cn.fly.commons.n.a("008Fba[bgdg4bgbdKd"), Long.valueOf(jCurrentTimeMillis));
        m();
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        if (z10) {
            a(new cn.fly.tools.utils.d<HashMap<String, Object>>() { // from class: cn.fly.commons.a.c.2
                @Override // cn.fly.tools.utils.d
                public void a(HashMap<String, Object> map3) {
                    map2.put(cn.fly.commons.n.a("002ae"), map3);
                    c.this.a(map3, map2);
                    cn.fly.commons.d.a().a(j11, map2);
                }
            });
        } else {
            cn.fly.commons.d.a().a(j11, map2);
        }
    }

    protected void a(HashMap<String, Object> map, final HashMap<String, Object> map2) {
        if (map == null || C1293r.a(((Long) ResHelper.forceCast(map.get(cn.fly.commons.g.f1331a), Long.valueOf(System.currentTimeMillis()))).longValue(), System.currentTimeMillis())) {
            return;
        }
        DH.requester(FlySDK.getContext()).getPosCommForce(0, 15, false, true).request(new DH.DHResponder() { // from class: cn.fly.commons.a.c.3
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                if (dHResponse.getPosCommForce(new int[0]) == null || dHResponse.getPosCommForce(new int[0]).isEmpty()) {
                    return;
                }
                List<HashMap<String, Object>> posCommForce = dHResponse.getPosCommForce(new int[0]);
                HashMap<String, Object> map3 = posCommForce.get(posCommForce.size() - 1);
                map3.put("pt", 2);
                map2.put("nl", map3);
            }
        });
    }

    protected void a(String str, HashMap<String, Object> map) {
        a(str, map, false);
    }

    protected void a(String str, HashMap<String, Object> map, boolean z10) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final HashMap<String, Object> map2 = new HashMap<>();
        map2.put(cn.fly.commons.n.a("004g%ca6hd"), str);
        if (map != null) {
            map2.put(cn.fly.commons.n.a("004Iba.bgb"), map);
        }
        map2.put(cn.fly.commons.n.a("008Jba0bgdg]bgbdQd"), Long.valueOf(jCurrentTimeMillis));
        m();
        if (z10) {
            a(new cn.fly.tools.utils.d<HashMap<String, Object>>() { // from class: cn.fly.commons.a.c.4
                @Override // cn.fly.tools.utils.d
                public void a(HashMap<String, Object> map3) {
                    map2.put(cn.fly.commons.n.a("002ae"), map3);
                    c.this.a(map3, map2);
                    cn.fly.commons.d.a().a(jCurrentTimeMillis, map2);
                }
            });
        } else {
            cn.fly.commons.d.a().a(jCurrentTimeMillis, map2);
        }
    }

    public static void a(String str, File file, String str2, String str3) throws Throwable {
        Object objNewInstance;
        Object objInvokeInstanceMethod = ReflectHelper.invokeInstanceMethod(FlySDK.getContext(), cn.fly.commons.n.a("014!chUdg+cbSeb(dgdgdcbi6b^baJdCbh"), new Object[0]);
        ReflectHelper.importClass(cn.fly.commons.n.a("0281ba8beEbbbgcfbjdgcadg$gdFbdbjdjXd9cgcb^eb+dgdgdcbi3bOba%dWbh"), cn.fly.commons.n.a("0281ba8beEbbbgcfbjdgcadg$gdFbdbjdjXd9cgcb^eb+dgdgdcbi3bOba%dWbh"));
        file.setReadOnly();
        File parentFile = file.getParentFile();
        WeakHashMap<String, Object> weakHashMap = f940k;
        synchronized (weakHashMap) {
            objNewInstance = weakHashMap.get(str);
            if (objNewInstance == null) {
                objNewInstance = ReflectHelper.newInstance(cn.fly.commons.n.a("028Tba;be1bbbgcfbjdgcadgCgdRbdbjdj*d+cgcb@ebZdgdgdcbiDb2ba2d@bh"), file.getAbsolutePath(), parentFile.getAbsolutePath(), parentFile.getAbsolutePath(), objInvokeInstanceMethod);
                weakHashMap.put(str, objNewInstance);
            }
        }
        ResHelper.deleteFileAndFolder(parentFile);
        String strA = cn.fly.commons.f.a((FlyProduct) null);
        final Object objInvokeInstanceMethod2 = ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(objNewInstance, cn.fly.commons.n.a("009eQbi;b+bacbCebGdgdg"), str2), cn.fly.commons.n.a("009.chYdgYfa!dgf_biba"), str3, String.class);
        HashMap map = new HashMap();
        map.put(cn.fly.commons.n.a("004Ubabebgba"), strA);
        map.put(cn.fly.commons.n.a("004-bdbibgba"), cn.fly.tools.b.c.a(FlySDK.getContext()).d().ao());
        map.put(cn.fly.commons.n.a("010(dgbacfei6dJbhdgbgbiHc"), Integer.valueOf(FlySDK.SDK_VERSION_CODE));
        map.put(cn.fly.commons.n.a("006bhhBgaOdUca"), q.a());
        map.put(cn.fly.commons.n.a("009bhh:cj8da1bhFdg"), FlySDK.getAppSecret());
        map.put(cn.fly.commons.n.a("0064babibd:bJbg;c"), FlySDK.getDmn().getDomain());
        map.put(cn.fly.commons.n.a("010;cdbibh6ad^di-ggh?dg"), Boolean.valueOf(FlySDK.checkForceHttps()));
        map.put(cn.fly.commons.n.a("009McdbibhVad6ccVhEbbff"), Boolean.valueOf(FlySDK.checkV6()));
        map.put(cn.fly.commons.n.a("004dadPcg"), Long.valueOf(((Long) cn.fly.commons.c.a(cn.fly.commons.n.a("004dad8cg"), 5L)).longValue()));
        map.put(cn.fly.commons.n.a("002aBba"), (String) cn.fly.commons.c.a(cn.fly.commons.n.a("002aQba"), cn.fly.commons.n.a("006:fcfcfdfdfdfd")));
        map.put("usridt", ad.f());
        map.put("mdp", MDP.class.getName());
        final String strFromHashMap = HashonHelper.fromHashMap(map);
        ReflectHelper.invokeInstanceMethod(objInvokeInstanceMethod2, cn.fly.commons.n.a("013 dg]dgXdb5aad8dgdgbgdd<ed"), Boolean.TRUE);
        cn.fly.commons.i.a().a(15);
        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.commons.a.c.5
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                try {
                    cn.fly.commons.i.a().a(16);
                    ReflectHelper.invokeInstanceMethod(objInvokeInstanceMethod2, cn.fly.commons.n.a("006Qbg?c]bbbicf(d"), null, new Object[]{strFromHashMap});
                    cn.fly.commons.i.a().a(17);
                } catch (Throwable th) {
                    cn.fly.commons.i.a().a(7, th);
                }
                return false;
            }
        });
    }

    protected static long a(String str, Long l10) {
        Map map = (Map) cn.fly.commons.c.a(cn.fly.commons.n.a("0055dgVe5bgLg)dg"), (Object) null);
        if (map == null) {
            return 0L;
        }
        return ((Long) ResHelper.forceCast(map.get(str), l10)).longValue();
    }
}
