package com.byazt.omf;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.nys.PluginConstants;
import com.join.mgps.Util.o0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import n0.b;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 47})
public class eo {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f18006x;
    public static final eo uj = new eo();
    public static int sp = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f18002i = "ext_plugin";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function<SparseArray<Object>, Object> f18004c = null;
    public volatile Function<SparseArray<Object>, Object> tt = null;
    public volatile Function<SparseArray<Object>, Object> ve = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicBoolean f18005n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f18003a = new AtomicBoolean(false);

    private eo() {
    }

    private Integer a() {
        Function<SparseArray<Object>, Object> functionI = i();
        if (functionI != null) {
            Object objApply = functionI.apply(com.byazt.yxi.uj.c().c(1004).c(Integer.class).tt());
            if (objApply instanceof Integer) {
                return (Integer) objApply;
            }
        }
        return -1;
    }

    public static eo c() {
        return uj;
    }

    private Function<SparseArray<Object>, Object> i() {
        ClassLoader classLoader;
        try {
            if (this.f18006x == null && (classLoader = (ClassLoader) x.m().lt().apply(com.byazt.yxi.uj.c().c(4).c(ClassLoader.class).c(0, "com.byted.csj.ext").tt())) != null) {
                this.f18006x = n0.c.a(classLoader.loadClass("com.byted.csj.ext_impl.ServiceManager").getConstructor(new Class[0]).newInstance(new Object[0]));
            }
            return this.f18006x;
        } catch (Throwable th) {
            com.byazt.nr.m.uj(f18002i, "getServiceManager:" + th.getMessage());
            return null;
        }
    }

    private Function<SparseArray<Object>, Object> sp() {
        com.byazt.whk.ve veVar = (com.byazt.whk.ve) com.byazt.ut.uj.getService("pitaya");
        if (veVar == null || !veVar.isPitayaEnvAvailable()) {
            com.byazt.nr.m.uj(f18002i, "can use pitaya false");
            return null;
        }
        if (!uj() || a().intValue() < 1100) {
            return null;
        }
        if (this.ve == null) {
            synchronized (eo.class) {
                if (this.ve == null) {
                    try {
                        Function<SparseArray<Object>, Object> functionI = i();
                        if (functionI != null) {
                            Object objApply = functionI.apply(com.byazt.yxi.uj.c().c(10003).c(n0.a.a()).tt());
                            if (b.a(objApply)) {
                                this.ve = n0.c.a(objApply);
                            }
                        }
                    } catch (Throwable th) {
                        com.byazt.nr.m.uj(f18002i, "getBridge:" + th.getMessage());
                    }
                }
            }
        }
        return this.ve;
    }

    public static int tt() {
        if (sp == -1) {
            sp = c().a().intValue();
        }
        return sp;
    }

    public static void ve() {
        if (!gt.tt().pf()) {
            JSONObject jSONObjectCu = x.m().cu();
            if (jSONObjectCu != null) {
                jSONObjectCu.remove("com.byted.csj.ext");
                return;
            }
            return;
        }
        Bundle bundle = new Bundle();
        Bundle bundleC = c(x.m().rl());
        if (bundleC != null) {
            bundle.putBundle("com.byted.csj.ext", bundleC);
        }
        x.m().c(bundle);
    }

    private static String x() {
        return (String) x.m().lt().apply(com.byazt.yxi.uj.c().c(8).c(String.class).c(0, "com.byted.csj.ext").tt());
    }

    public com.byazt.jg.c n() {
        if (com.byazt.vgp.tt.c(gt.tt().l()) && uj()) {
            return (com.byazt.jg.c) com.byazt.ut.uj.getService("alog");
        }
        return null;
    }

    public boolean uj() {
        try {
            if (!gt.tt().pf()) {
                return false;
            }
            if (this.f18005n.get()) {
                return true;
            }
            if (this.f18003a.compareAndSet(false, true)) {
                final Function<SparseArray<Object>, Object> functionLt = x.m().lt();
                Object objApply = functionLt.apply(com.byazt.yxi.uj.c().c(6).c(Boolean.class).c(0, "com.byted.csj.ext").tt());
                if (objApply != null ? ((Boolean) objApply).booleanValue() : false) {
                    Object objApply2 = functionLt.apply(com.byazt.yxi.uj.c().c(7).c(Boolean.class).c(0, "com.byted.csj.ext").tt());
                    if (objApply2 != null ? ((Boolean) objApply2).booleanValue() : false) {
                        this.f18005n.set(true);
                        this.f18003a.set(false);
                        return true;
                    }
                    com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.omf.eo.1
                        @Override // java.lang.Runnable
                        public void run() {
                            eo.this.c(functionLt, true);
                        }
                    });
                } else {
                    this.f18003a.set(false);
                }
            }
            return false;
        } catch (Throwable th) {
            com.byazt.nr.m.uj(f18002i, "pit_ext_error:" + th.getMessage());
        }
    }

    public Function<SparseArray<Object>, Object> c(int i10) {
        try {
            if (p.c() && i10 == 10003) {
                return sp();
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
        return null;
    }

    public static String tt(int i10) {
        char[] charArray = String.valueOf(i10).toCharArray();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < charArray.length; i11++) {
            sb2.append(charArray[i11]);
            if (i11 < charArray.length - 1) {
                sb2.append(o0.f49827a);
            }
        }
        String string = sb2.toString();
        if (i10 < 100 || i10 >= 1000) {
            return string;
        }
        return "0." + string;
    }

    private static Bundle c(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(PluginConstants.KEY_APP_ID, str);
            String strX = x();
            if (TextUtils.isEmpty(strX)) {
                return null;
            }
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, strX);
            bundle.putString("sdk_version", tt(p.f18090a));
            return bundle;
        } catch (Throwable th) {
            com.byazt.nr.m.uj(f18002i, "error:" + th.getMessage());
            com.byazt.nr.m.c(th);
            return null;
        }
    }

    public boolean c(Function<SparseArray<Object>, Object> function, boolean z10) {
        try {
            if (this.f18005n.get()) {
                return true;
            }
            if (!z10) {
                this.f18003a.set(true);
            }
            Object objApply = function.apply(com.byazt.yxi.uj.c().c(5).c(Boolean.class).c(0, "com.byted.csj.ext").tt());
            boolean zBooleanValue = objApply != null ? ((Boolean) objApply).booleanValue() : false;
            this.f18005n.set(zBooleanValue);
            this.f18003a.set(false);
            return zBooleanValue;
        } catch (Throwable th) {
            com.byazt.nr.m.uj(f18002i, ":" + th.getMessage());
            return false;
        }
    }
}
