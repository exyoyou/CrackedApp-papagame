package cn.fly.tools.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.commons.CSCenter;
import cn.fly.commons.aa;
import cn.fly.commons.ab;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileUtils;
import cn.fly.tools.utils.FlyPersistence;
import com.baidu.mobads.sdk.internal.bn;
import com.kuaishou.weapon.p0.bg;
import com.papa91.arc.CContext;
import com.umeng.analytics.pro.aw;
import java.io.File;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class k implements cn.fly.tools.b.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f1916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f1917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Set<String> f1918f = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f1913a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, Integer> f1914b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<String, Long> f1915c = new ConcurrentHashMap<>();

    private static abstract class a<T> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public T f2016g;

        public a(T t10) {
            this.f2016g = t10;
        }

        protected long a(T t10) {
            return 0L;
        }

        protected abstract T b() throws Throwable;
    }

    public k(Context context) {
        this.f1916d = context;
        this.f1917e = b.a(context);
        cn.fly.tools.utils.g.a();
        FlyLog.getInstance().d("[DH] nml imp loaded", new Object[0]);
    }

    private void h(String str) {
    }

    @Override // cn.fly.tools.b.a
    public String A() {
        return (String) b("ole", new a<String>(null) { // from class: cn.fly.tools.b.k.15
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.h();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String B() {
        return (String) b("ocy", new a<String>(null) { // from class: cn.fly.tools.b.k.16
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.j();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> C() {
        return (HashMap) b("cio0", new a<HashMap<String, Object>>(null) { // from class: cn.fly.tools.b.k.17
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, Object> map) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, Object> b() throws Throwable {
                return k.this.f1917e.A();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String D() {
        return (String) b("gabis", new a<String>(null) { // from class: cn.fly.tools.b.k.18
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.ay();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<ArrayList<String>> E() {
        return (ArrayList) b("tdio", new a<ArrayList<ArrayList<String>>>(null) { // from class: cn.fly.tools.b.k.19
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ArrayList<ArrayList<String>> arrayList) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ArrayList<ArrayList<String>> b() throws Throwable {
                return k.this.f1917e.B();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String F() {
        return (String) b("qkl", new a<String>(null) { // from class: cn.fly.tools.b.k.20
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                if ("0".equals(str)) {
                    return 86400000L;
                }
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.C();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, HashMap<String, Long>> G() {
        return (HashMap) b("siio", new a<HashMap<String, HashMap<String, Long>>>(null) { // from class: cn.fly.tools.b.k.21
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, HashMap<String, Long>> map) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, HashMap<String, Long>> b() throws Throwable {
                return k.this.f1917e.D();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Long> H() {
        return (HashMap) b("meio", new a<HashMap<String, Long>>(null) { // from class: cn.fly.tools.b.k.22
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, Long> map) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, Long> b() throws Throwable {
                return k.this.f1917e.E();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String I() {
        return (String) b("ale", new a<String>(null) { // from class: cn.fly.tools.b.k.24
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 600000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.i();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String J() {
        return (String) b("sse", new a<String>(null) { // from class: cn.fly.tools.b.k.25
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.k();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String K() {
        return o(false);
    }

    @Override // cn.fly.tools.b.a
    public String L() {
        String lowerCase = i(false).toLowerCase();
        if (TextUtils.isEmpty(lowerCase) || cn.fly.commons.m.a("004g[fmDgh").equals(lowerCase)) {
            return cn.fly.commons.m.a("004g(fm2gh");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("0049hifkghfk"))) {
            return cn.fly.commons.m.a("004Khifkghfk");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("002Ojkgl"))) {
            return cn.fly.commons.m.a("0024jkgl");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("002Ijngl"))) {
            return cn.fly.commons.m.a("002:jngl");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("002^lhgl"))) {
            return cn.fly.commons.m.a("002!lhgl");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("002Rjggl"))) {
            return cn.fly.commons.m.a("002Ljggl");
        }
        return lowerCase.startsWith(cn.fly.commons.m.a("009XhhRiUfi_hk fmfmPkj")) ? cn.fly.commons.m.a("0092hh4iCfi8hk,fmfmBkj") : lowerCase;
    }

    @Override // cn.fly.tools.b.a
    public int M() {
        return p(true);
    }

    @Override // cn.fly.tools.b.a
    public int N() {
        return p(cn.fly.commons.e.i());
    }

    @Override // cn.fly.tools.b.a
    public String O() {
        return (String) b("tize", new a<String>(null) { // from class: cn.fly.tools.b.k.28
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.P();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String P() {
        return (String) b("flvr", new a<String>(null) { // from class: cn.fly.tools.b.k.29
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.Q();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String Q() {
        return (String) b("babd", new a<String>(null) { // from class: cn.fly.tools.b.k.30
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.R();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String R() {
        return (String) b("bfsp", new a<String>(null) { // from class: cn.fly.tools.b.k.31
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.S();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String S() {
        return (String) b("bopm", new a<String>(null) { // from class: cn.fly.tools.b.k.32
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.T();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String T() {
        return q(true);
    }

    @Override // cn.fly.tools.b.a
    public String U() {
        return q(cn.fly.commons.e.i());
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> V() {
        return r(false);
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> W() {
        ArrayList<HashMap<String, String>> arrayListA;
        synchronized ("gsl") {
            arrayListA = this.f1917e.a(r(false), 2);
        }
        return arrayListA;
    }

    @Override // cn.fly.tools.b.a
    public String X() {
        return (String) b("deky", new a<String>(null) { // from class: cn.fly.tools.b.k.36
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.b(false);
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String Y() {
        return (String) b("scph", new a<String>(null) { // from class: cn.fly.tools.b.k.37
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.s();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String Z() {
        return this.f1917e.b(aa());
    }

    @Override // cn.fly.tools.b.a
    public int aA() {
        return ((Integer) b("hmpmst", new a<Integer>(-1) { // from class: cn.fly.tools.b.k.60
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.am());
            }
        })).intValue();
    }

    @Override // cn.fly.tools.b.a
    public int aB() {
        return ((Integer) b("hmepmst", new a<Integer>(-1) { // from class: cn.fly.tools.b.k.61
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.aq());
            }
        })).intValue();
    }

    @Override // cn.fly.tools.b.a
    public String aC() {
        return (String) b("gtinnerlangmt", new a<String>(null) { // from class: cn.fly.tools.b.k.62
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.as();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public int aD() {
        return ((Integer) b("gtgramgendt", new a<Integer>(0) { // from class: cn.fly.tools.b.k.63
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.at());
            }
        })).intValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean aE() {
        return ((Boolean) a("debbing", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.64
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 60000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(k.this.f1917e.aw());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> aF() {
        return (ArrayList) b("gteacifo", new a<ArrayList<HashMap<String, Object>>>(null) { // from class: cn.fly.tools.b.k.68
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ArrayList<HashMap<String, Object>> arrayList) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                return k.this.f1917e.av();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public boolean aG() {
        return ((Boolean) a("gpsavlbmt", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.71
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(k.this.f1917e.ax());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean aH() {
        return ((Boolean) a("isaut", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.72
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 600000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(k.this.f1917e.ad());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String aI() {
        return (String) b("gtscrpch", new a<String>(null) { // from class: cn.fly.tools.b.k.73
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.an();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String aJ() {
        return (String) a("gtrddi", new a<String>(null) { // from class: cn.fly.tools.b.k.75
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.ap();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String aa() {
        return (String) b("pne", new a<String>(null) { // from class: cn.fly.tools.b.k.38
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.n();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String ab() {
        return this.f1917e.o();
    }

    @Override // cn.fly.tools.b.a
    public int ac() {
        return this.f1917e.p();
    }

    @Override // cn.fly.tools.b.a
    public String ad() {
        return this.f1917e.q();
    }

    @Override // cn.fly.tools.b.a
    public boolean ae() {
        return ((Boolean) a(aw.f84322c, new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.39
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(k.this.f1917e.W());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String af() {
        return (String) a("cpne", new a<String>(null) { // from class: cn.fly.tools.b.k.40
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.X();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public boolean ag() {
        return aa.a();
    }

    @Override // cn.fly.tools.b.a
    public Context ah() {
        return (Context) a("galct", new a<Context>(null) { // from class: cn.fly.tools.b.k.41
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Context b() throws Throwable {
                if (k.this.f1916d != null) {
                    return k.this.f1916d;
                }
                Context contextW = b.w();
                if (contextW != null) {
                    k.this.f1916d = contextW;
                }
                return contextW;
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String ai() {
        return this.f1917e.d();
    }

    @Override // cn.fly.tools.b.a
    public String aj() {
        return this.f1917e.e();
    }

    @Override // cn.fly.tools.b.a
    public long ak() {
        return this.f1917e.Y();
    }

    @Override // cn.fly.tools.b.a
    public String al() {
        return (String) b("dvcnm", new a<String>(null) { // from class: cn.fly.tools.b.k.43
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.Z();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String am() {
        return (String) b("cgrp", new a<String>(null) { // from class: cn.fly.tools.b.k.44
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.aa();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String an() {
        return (String) b("cinfo", new a<String>(null) { // from class: cn.fly.tools.b.k.46
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.ab();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String ao() {
        if (!CSCenter.getInstance().isOaidEnable()) {
            return CSCenter.getInstance().getOaid();
        }
        String str = null;
        if (cn.fly.commons.e.a()) {
            return (String) b("odmt", new a<String>(str) { // from class: cn.fly.tools.b.k.47
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // cn.fly.tools.b.k.a
                public long a(String str2) {
                    if (TextUtils.isEmpty(str2)) {
                        return -1L;
                    }
                    return bn.f7592d;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // cn.fly.tools.b.k.a
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public String b() throws Throwable {
                    return k.this.f1917e.ac();
                }
            });
        }
        return null;
    }

    @Override // cn.fly.tools.b.a
    public String ap() {
        String strAo = c.a(this.f1916d).d().ao();
        if (!TextUtils.isEmpty(strAo)) {
            try {
                return Base64.encodeToString(Data.AES128Encode(Data.MD5(DH.SyncMtd.getManufacturerForFly()), strAo), 2);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return strAo;
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> aq() {
        return (HashMap) b("alldmt", new a<HashMap<String, Object>>(null) { // from class: cn.fly.tools.b.k.48
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, Object> map) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, Object> b() throws Throwable {
                return k.this.f1917e.ae();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public ApplicationInfo ar() {
        final boolean zA = cn.fly.tools.c.a("1009", this.f1916d.getPackageName());
        return (ApplicationInfo) b("gtaif", new a<ApplicationInfo>(null) { // from class: cn.fly.tools.b.k.49
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ApplicationInfo applicationInfo) {
                return zA ? 0L : 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ApplicationInfo b() throws Throwable {
                return e.a(k.this.f1916d).d();
            }
        }, a(zA, "gtaif", aa()));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> as() {
        return (ArrayList) b("gtwflok", new a<ArrayList<HashMap<String, Object>>>(null) { // from class: cn.fly.tools.b.k.50
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ArrayList<HashMap<String, Object>> arrayList) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                Boolean bool;
                if (!cn.fly.commons.e.d() || !k.this.e(cn.fly.commons.m.a("036fgIfeflfmfkfefn:lhZflfhfkhkhkfkfm0g'fngfhmhfgikfikfjihggieggfjgnhehfheik")) || !k.this.e(cn.fly.commons.m.a("036fg feflfmfkfefnYlhBflfhfkhkhkfkfm[gMfnhfgfgfikgngnfjihggieggfjgnhehfheik"))) {
                    return null;
                }
                LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                k.this.f1917e.a((BlockingQueue<Boolean>) linkedBlockingQueue);
                k.this.f1917e.z();
                try {
                    bool = (Boolean) linkedBlockingQueue.poll(20000L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                    bool = null;
                }
                if (bool == null || !bool.booleanValue()) {
                    return null;
                }
                return k.this.f1917e.y();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String at() {
        return (String) b("gtdrd", new a<String>(null) { // from class: cn.fly.tools.b.k.52
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.af();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public long au() {
        return ((Long) b("gtbdt", new a<Long>(0L) { // from class: cn.fly.tools.b.k.53
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Long l10) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Long b() throws Throwable {
                return Long.valueOf(k.this.f1917e.ag());
            }
        })).longValue();
    }

    @Override // cn.fly.tools.b.a
    public double av() {
        return ((Double) b("gtscnin", new a<Double>(Double.valueOf(0.0d)) { // from class: cn.fly.tools.b.k.54
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Double d10) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Double b() throws Throwable {
                return Double.valueOf(k.this.f1917e.ah());
            }
        })).doubleValue();
    }

    @Override // cn.fly.tools.b.a
    public int aw() {
        return ((Integer) b("gtscnppi", new a<Integer>(0) { // from class: cn.fly.tools.b.k.55
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.ai());
            }
        })).intValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean ax() {
        return ((Boolean) b("ishmos", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.57
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() throws Throwable {
                return Boolean.valueOf(k.this.f1917e.aj());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String ay() {
        return (String) b("gthmosv", new a<String>(null) { // from class: cn.fly.tools.b.k.58
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.ak();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String az() {
        return (String) b("gthmosdtlv", new a<String>(null) { // from class: cn.fly.tools.b.k.59
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bg.f74510s;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.al();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public boolean c() {
        return ((Boolean) b("pd0", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.23
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.H());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean d() {
        return ((Boolean) a("dee", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.34
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.M());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean e() {
        return this.f1917e.L();
    }

    @Override // cn.fly.tools.b.a
    public boolean f() {
        return ((Boolean) a("ua0", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.45
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.K());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean g() {
        return ((Boolean) a("dee1", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.56
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.J());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean i() {
        return ((Boolean) a("wpy", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.76
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.N());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String j() {
        return (String) b("agi", new a<String>(null) { // from class: cn.fly.tools.b.k.77
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.t();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String k() {
        return (String) b("mvn", new a<String>(null) { // from class: cn.fly.tools.b.k.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.F();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String l() {
        if (CSCenter.getInstance().isSystemInfoAvailable()) {
            return k();
        }
        String strB = cn.fly.tools.utils.g.a().b("mvn", "");
        if (TextUtils.isEmpty(strB)) {
            strB = CSCenter.getInstance().getROMVersion();
        }
        return TextUtils.isEmpty(strB) ? "" : strB;
    }

    @Override // cn.fly.tools.b.a
    public String m() {
        return (String) b("mol", new a<String>(null) { // from class: cn.fly.tools.b.k.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.b();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String n() {
        if (CSCenter.getInstance().isModelAvailable()) {
            return m();
        }
        String strB = cn.fly.tools.utils.g.a().b("mol", "");
        if (TextUtils.isEmpty(strB)) {
            strB = CSCenter.getInstance().getModel();
        }
        return TextUtils.isEmpty(strB) ? "" : strB;
    }

    @Override // cn.fly.tools.b.a
    public String o() {
        return (String) b("mar", new a<String>(null) { // from class: cn.fly.tools.b.k.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.c();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String p() {
        if (CSCenter.getInstance().isManufacturerAvailable()) {
            return o();
        }
        String strB = cn.fly.tools.utils.g.a().b("mar", "");
        if (TextUtils.isEmpty(strB)) {
            strB = CSCenter.getInstance().getManufacturer();
        }
        return TextUtils.isEmpty(strB) ? "" : strB;
    }

    @Override // cn.fly.tools.b.a
    public String q() {
        return (String) b("brd", new a<String>(null) { // from class: cn.fly.tools.b.k.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.V();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String r() {
        if (CSCenter.getInstance().isManufacturerAvailable()) {
            return q();
        }
        String strA = cn.fly.tools.utils.g.a().a("brd");
        if (TextUtils.isEmpty(strA)) {
            strA = CSCenter.getInstance().getBrand();
        }
        return TextUtils.isEmpty(strA) ? "" : strA;
    }

    @Override // cn.fly.tools.b.a
    public String s() {
        return (String) b("dte", new a<String>(null) { // from class: cn.fly.tools.b.k.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.v();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public Object t() {
        return b("gtecloc", new a<Object>(null) { // from class: cn.fly.tools.b.k.9
            @Override // cn.fly.tools.b.k.a
            protected long a(Object obj) {
                return 180000L;
            }

            @Override // cn.fly.tools.b.k.a
            protected Object b() throws Throwable {
                return k.this.f1917e.ar();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> u() {
        return (ArrayList) b("bsnbcl", new a<ArrayList<HashMap<String, Object>>>(null) { // from class: cn.fly.tools.b.k.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ArrayList<HashMap<String, Object>> arrayList) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ArrayList<HashMap<String, Object>> b() throws Throwable {
                return k.this.f1917e.u();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> v() {
        return g(false);
    }

    @Override // cn.fly.tools.b.a
    public int w() {
        return ((Integer) b("ovit", new a<Integer>(-1) { // from class: cn.fly.tools.b.k.13
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.f());
            }
        })).intValue();
    }

    @Override // cn.fly.tools.b.a
    public int x() {
        if (CSCenter.getInstance().isSystemInfoAvailable()) {
            return w();
        }
        int iA = cn.fly.tools.utils.g.a().a("ovit", 0);
        if (iA >= 1 || (iA = CSCenter.getInstance().getSystemVersionCode()) >= 1) {
            return iA;
        }
        return 0;
    }

    @Override // cn.fly.tools.b.a
    public String y() {
        return (String) b("ovne", new a<String>(null) { // from class: cn.fly.tools.b.k.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.g();
            }
        });
    }

    @Override // cn.fly.tools.b.a
    public String z() {
        if (CSCenter.getInstance().isSystemInfoAvailable()) {
            return y();
        }
        String strB = cn.fly.tools.utils.g.a().b("ovne", "");
        if (TextUtils.isEmpty(strB)) {
            strB = CSCenter.getInstance().getSystemVersionName();
        }
        return TextUtils.isEmpty(strB) ? "" : strB;
    }

    private String o(boolean z10) {
        String lowerCase = i(z10).toLowerCase();
        if (TextUtils.isEmpty(lowerCase) || cn.fly.commons.m.a("004g%fm,gh").equals(lowerCase)) {
            return cn.fly.commons.m.a("004g;fmWgh");
        }
        if (lowerCase.startsWith(cn.fly.commons.m.a("002'jkgl")) || lowerCase.startsWith(cn.fly.commons.m.a("002Qjngl")) || lowerCase.startsWith(cn.fly.commons.m.a("002Ylhgl")) || lowerCase.startsWith(cn.fly.commons.m.a("0026jggl"))) {
            return cn.fly.commons.m.a("004ehii");
        }
        return (lowerCase.startsWith(cn.fly.commons.m.a("004Vhifkghfk")) || "forbid".equals(lowerCase)) ? cn.fly.commons.m.a("004[hifkghfk") : cn.fly.commons.m.a("005Sfm6kjh.fl");
    }

    private String q(boolean z10) {
        if (!CSCenter.getInstance().isIpAddressEnable()) {
            return CSCenter.getInstance().getIpAddress();
        }
        if (!z10) {
            return com.join.mgps.socket.entity.b.f73008j;
        }
        try {
            Enumeration<NetworkInterface> enumerationA = e.a(this.f1916d).a();
            while (enumerationA.hasMoreElements()) {
                Enumeration<InetAddress> enumerationA2 = e.a(this.f1916d).a(enumerationA.nextElement());
                while (enumerationA2.hasMoreElements()) {
                    InetAddress inetAddressNextElement = enumerationA2.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress();
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    @Override // cn.fly.tools.b.a
    public boolean b() {
        return ((Boolean) b("cx0", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return (bool == null || !bool.booleanValue()) ? 180000L : 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.G());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String c(boolean z10) {
        return b(z10, true);
    }

    @Override // cn.fly.tools.b.a
    public String d(boolean z10) {
        return b(z10, cn.fly.commons.e.i());
    }

    @Override // cn.fly.tools.b.a
    public String e(boolean z10) {
        return c(z10, true);
    }

    @Override // cn.fly.tools.b.a
    public String f(boolean z10) {
        return c(z10, cn.fly.commons.e.i());
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> g(boolean z10) {
        return (HashMap) b("crtwfo", new a<HashMap<String, Object>>(null) { // from class: cn.fly.tools.b.k.11
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, Object> map) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, Object> b() throws Throwable {
                return k.this.f1917e.x();
            }
        }, z10);
    }

    @Override // cn.fly.tools.b.a
    public boolean h() {
        return ((Boolean) a("uee", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.67
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.I());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String i(boolean z10) {
        return d(z10, cn.fly.commons.e.i());
    }

    @Override // cn.fly.tools.b.a
    public boolean j(boolean z10) {
        String strO = o(z10);
        return cn.fly.commons.m.a("004*hifkghfk").equals(strO) || cn.fly.commons.m.a("004ehii").equals(strO);
    }

    @Override // cn.fly.tools.b.a
    public Set<String> k(boolean z10) {
        return (Set) b("gppl", new a<Set<String>>(null) { // from class: cn.fly.tools.b.k.35
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Set<String> set) {
                Calendar calendar = Calendar.getInstance();
                long jA = k.this.a(calendar) - calendar.getTimeInMillis();
                if (jA > 0) {
                    return jA;
                }
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Set<String> b() throws Throwable {
                return k.this.f1917e.r();
            }
        }, z10);
    }

    @Override // cn.fly.tools.b.a
    public String m(boolean z10) {
        return (String) b("gtdm", new a<String>(null) { // from class: cn.fly.tools.b.k.69
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return ab.a().g();
            }
        }, z10);
    }

    private String c(boolean z10, boolean z11) {
        return (String) a("cne", new a<String>(null) { // from class: cn.fly.tools.b.k.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 600000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.m();
            }
        }, z10, z11);
    }

    private String d(final boolean z10, boolean z11) {
        if (!z11) {
            FlyLog.getInstance().d("net type W: forb as na=0 probably", new Object[0]);
        }
        String str = (String) a("nte", new a<String>(null) { // from class: cn.fly.tools.b.k.26
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str2) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.a(z10);
            }
        }, z10, z11);
        return (str != null || z11) ? str : "forbid";
    }

    private long g(String str) {
        if (!TextUtils.isEmpty(str)) {
            ApplicationInfo applicationInfoA = a(true, str, 0);
            String str2 = applicationInfoA != null ? applicationInfoA.sourceDir : null;
            if (!TextUtils.isEmpty(str2)) {
                return new File(str2).lastModified();
            }
        }
        return 0L;
    }

    @Override // cn.fly.tools.b.a
    public String b(boolean z10) {
        HashMap<String, Object> mapG = g(z10);
        if (mapG != null) {
            return (String) mapG.get("bsmt");
        }
        return null;
    }

    @Override // cn.fly.tools.b.a
    public boolean e(String str) {
        try {
            return this.f1917e.d(str);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    @Override // cn.fly.tools.b.a
    public long f(final String str) {
        return ((Long) b("gtlstact-" + str, new a<Long>(-1L) { // from class: cn.fly.tools.b.k.70
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Long l10) {
                return bn.f7592d;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Long b() throws Throwable {
                return Long.valueOf(FileUtils.getLATime(str));
            }
        })).longValue();
    }

    @Override // cn.fly.tools.b.a
    public String h(boolean z10) {
        return d(z10, true);
    }

    @Override // cn.fly.tools.b.a
    public String c(String str) {
        return this.f1917e.b(str);
    }

    private String b(boolean z10, boolean z11) {
        return (String) a("car", new a<String>(null) { // from class: cn.fly.tools.b.k.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(String str) {
                return 600000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() throws Throwable {
                return k.this.f1917e.l();
            }
        }, z10, z11);
    }

    private <T> T c(String str, a<T> aVar) throws FlyPersistence.NoValidDataException {
        Object objB;
        Type typeA = a((a) aVar);
        int iA = a(typeA);
        try {
            if (iA == 1) {
                objB = cn.fly.tools.utils.g.a().a(str, (Class) ((GenericArrayType) typeA).getGenericComponentType(), (Parcelable[]) aVar.f2016g);
            } else if (iA == 2 || iA == 4) {
                objB = cn.fly.tools.utils.g.a().b(str, aVar.f2016g);
            } else {
                if (iA == 3) {
                    ParameterizedType parameterizedType = (ParameterizedType) typeA;
                    Class cls = (Class) parameterizedType.getRawType();
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    Type type = actualTypeArguments[0];
                    if (actualTypeArguments.length == 2) {
                        type = actualTypeArguments[1];
                    }
                    if (!(type instanceof Class)) {
                        return null;
                    }
                    Class cls2 = (Class) type;
                    if (!Parcelable.class.isAssignableFrom(cls2)) {
                        return null;
                    }
                    if (cls != List.class && cls != LinkedList.class && cls != ArrayList.class) {
                        if (cls == Map.class || cls == HashMap.class || cls == TreeMap.class || cls == Hashtable.class) {
                            return (T) cn.fly.tools.utils.g.a().b(str, cls2);
                        }
                        return null;
                    }
                    return (T) cn.fly.tools.utils.g.a().c(str, cls2);
                }
                if (iA == 9) {
                    Class<T> cls3 = (Class) typeA;
                    if (cls3 == null) {
                        return null;
                    }
                    if (cls3 == Integer.class) {
                        return (T) Integer.valueOf(cn.fly.tools.utils.g.a().b(str, ((Integer) aVar.f2016g).intValue()));
                    }
                    if (cls3 == Long.class) {
                        return (T) Long.valueOf(cn.fly.tools.utils.g.a().b(str, ((Long) aVar.f2016g).longValue()));
                    }
                    if (cls3 == Double.class) {
                        return (T) Double.valueOf(cn.fly.tools.utils.g.a().a(str, ((Double) aVar.f2016g).doubleValue()));
                    }
                    if (cls3 == Boolean.class) {
                        return (T) Boolean.valueOf(cn.fly.tools.utils.g.a().a(str, ((Boolean) aVar.f2016g).booleanValue()));
                    }
                    if (cls3 == String.class) {
                        return (T) cn.fly.tools.utils.g.a().c(str, (String) aVar.f2016g);
                    }
                    if (Parcelable.class.isAssignableFrom(cls3)) {
                        return (T) cn.fly.tools.utils.g.a().a(str, cls3, aVar.f2016g);
                    }
                    return (T) cn.fly.tools.utils.g.a().b(str, aVar.f2016g);
                }
                objB = cn.fly.tools.utils.g.a().b(str, aVar.f2016g);
            }
            return (T) objB;
        } catch (FlyPersistence.NoValidDataException e10) {
            throw e10;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    @Override // cn.fly.tools.b.a
    public boolean a() {
        return ((Boolean) b("ird", new a<Boolean>(Boolean.FALSE) { // from class: cn.fly.tools.b.k.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Boolean bool) {
                return (bool == null || !bool.booleanValue()) ? 180000L : 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b() {
                return Boolean.valueOf(k.this.f1917e.a());
            }
        })).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String d(String str) {
        return this.f1917e.c(str);
    }

    @Override // cn.fly.tools.b.a
    public String a(boolean z10) {
        HashMap<String, Object> mapG = g(z10);
        if (mapG != null) {
            return (String) mapG.get("ssmt");
        }
        return null;
    }

    @Override // cn.fly.tools.b.a
    public boolean b(String str) {
        return this.f1917e.e(str);
    }

    private int p(boolean z10) {
        return ((Integer) a("dtnttp", (a) new a<Integer>(-1) { // from class: cn.fly.tools.b.k.27
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(Integer num) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer b() throws Throwable {
                return Integer.valueOf(k.this.f1917e.U());
            }
        }, false, z10)).intValue();
    }

    private ArrayList<HashMap<String, String>> r(final boolean z10) {
        ArrayList<HashMap<String, String>> arrayList;
        synchronized ("gal") {
            arrayList = (ArrayList) b("gal", new a<ArrayList<HashMap<String, String>>>(null) { // from class: cn.fly.tools.b.k.33
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // cn.fly.tools.b.k.a
                public long a(ArrayList<HashMap<String, String>> arrayList2) {
                    Calendar calendar = Calendar.getInstance();
                    long jA = k.this.a(calendar) - calendar.getTimeInMillis();
                    if (jA > 0) {
                        return jA;
                    }
                    return 86400000L;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // cn.fly.tools.b.k.a
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public ArrayList<HashMap<String, String>> b() throws Throwable {
                    return k.this.f1917e.c(z10);
                }
            }, z10);
        }
        return arrayList;
    }

    @Override // cn.fly.tools.b.a
    public ResolveInfo b(Intent intent, int i10) {
        return e.a(this.f1916d).b(intent, i10);
    }

    @Override // cn.fly.tools.b.a
    public String l(boolean z10) {
        return this.f1917e.b(z10);
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Long> n(boolean z10) {
        return (HashMap) b("gtrtmey", new a<HashMap<String, Long>>(null) { // from class: cn.fly.tools.b.k.74
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(HashMap<String, Long> map) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HashMap<String, Long> b() throws Throwable {
                return k.this.f1917e.ao();
            }
        }, z10);
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> a(boolean z10, boolean z11) {
        synchronized ("giafce") {
            ArrayList<HashMap<String, String>> arrayListR = r(z11);
            if (z10) {
                return this.f1917e.a(arrayListR, 0);
            }
            return this.f1917e.a(arrayListR, 1);
        }
    }

    @Override // cn.fly.tools.b.a
    public Object b(boolean z10, int i10, String str, int i11) {
        return b(z10, i10, str, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List b(final int i10, final int i11, final boolean z10, final boolean z11) {
        return (List) b("gtelcmefce-" + i10 + "-" + i11 + "-" + z10, new a<List<Location>>(null) { // from class: cn.fly.tools.b.k.65
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(List<Location> list) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public List<Location> b() throws Throwable {
                return k.this.f1917e.a(i10, i11, z10, z11);
            }
        }, z11);
    }

    private PackageInfo b(boolean z10, int i10, String str, int i11, boolean z11) {
        if (str.equals(DH.SyncMtd.getPackageName())) {
            int i12 = (i11 == 0 || i11 == 1 || i11 == 128 || i11 == 64) ? 193 : i11;
            PackageInfo packageInfoA = a(z10, i10, str, i12, z11);
            return (packageInfoA == null && i12 == 193) ? a(z10, i10, str, i11, z11) : packageInfoA;
        }
        return a(z10, i10, str, i11, z11);
    }

    @Override // cn.fly.tools.b.a
    public Location a(int i10, int i11, boolean z10) {
        List listB = b(i10, i11, z10, false);
        if (listB == null || listB.isEmpty()) {
            return null;
        }
        return (Location) listB.get(listB.size() - 1);
    }

    private <T> T b(String str, a<T> aVar) {
        return (T) b(str, aVar, false);
    }

    private <T> T b(String str, a<T> aVar, boolean z10) {
        return (T) a(str, (a) aVar, z10, true);
    }

    @Override // cn.fly.tools.b.a
    public String a(String str) {
        return this.f1917e.a(str);
    }

    @Override // cn.fly.tools.b.a
    public List<ResolveInfo> a(Intent intent, int i10) {
        return e.a(this.f1916d).a(intent, i10);
    }

    @Override // cn.fly.tools.b.a
    public PackageInfo a(boolean z10, int i10, String str, int i11) {
        return b(z10, i10, str, i11, true);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0077  */
    private PackageInfo a(boolean z10, final int i10, final String str, final int i11, final boolean z11) {
        boolean z12;
        final boolean zA = cn.fly.tools.c.a("1009", str);
        String str2 = "gpi-" + i10 + "-" + str + "-" + i11 + "-" + z11;
        a<PackageInfo> aVar = new a<PackageInfo>(null) { // from class: cn.fly.tools.b.k.42
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(PackageInfo packageInfo) {
                if (zA) {
                    return i10;
                }
                return 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PackageInfo b() throws Throwable {
                return (PackageInfo) e.a(k.this.f1916d).a(str, i11, z11);
            }
        };
        if (z10) {
            z12 = true;
        } else {
            if (a(zA, "gpi-" + i10 + "-" + str + "-" + i11 + "-" + z11, str)) {
                z12 = true;
            } else {
                z12 = false;
            }
        }
        return (PackageInfo) b(str2, aVar, z12);
    }

    @Override // cn.fly.tools.b.a
    public ApplicationInfo a(String str, int i10) {
        return a(false, str, i10);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x004a  */
    @Override // cn.fly.tools.b.a
    public ApplicationInfo a(boolean z10, final String str, final int i10) {
        boolean z11;
        final boolean zA = cn.fly.tools.c.a("1009", str);
        String str2 = "gtaiffce-" + str + "-" + i10;
        a<ApplicationInfo> aVar = new a<ApplicationInfo>(null) { // from class: cn.fly.tools.b.k.51
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(ApplicationInfo applicationInfo) {
                return zA ? 0L : 86400000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ApplicationInfo b() throws Throwable {
                return e.a(k.this.f1916d).a(str, i10);
            }
        };
        if (z10) {
            z11 = true;
        } else {
            if (a(zA, "gtaiffce-" + str + "-" + i10, str)) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        return (ApplicationInfo) b(str2, aVar, z11);
    }

    @Override // cn.fly.tools.b.a
    public List<HashMap<String, Object>> a(final int i10, final int i11, final boolean z10, final boolean z11) {
        return (List) b("gtepcommfce-" + i10 + "-" + i11 + "-" + z10, new a<List<HashMap<String, Object>>>(null) { // from class: cn.fly.tools.b.k.66
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            public long a(List<HashMap<String, Object>> list) {
                return 180000L;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // cn.fly.tools.b.k.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public List<HashMap<String, Object>> b() throws Throwable {
                ArrayList arrayList = null;
                try {
                    List listB = k.this.b(i10, i11, z10, z11);
                    if (listB == null || listB.isEmpty()) {
                        return null;
                    }
                    int i12 = 0;
                    while (i12 < listB.size()) {
                        ArrayList arrayList2 = new ArrayList();
                        try {
                            HashMap<String, Object> mapL = new i.a(listB.get(i12)).l();
                            if (mapL != null) {
                                arrayList2.add(mapL);
                            }
                            i12++;
                            arrayList = arrayList2;
                        } catch (Throwable unused) {
                            return arrayList2;
                        }
                    }
                    return arrayList;
                } catch (Throwable unused2) {
                    return arrayList;
                }
            }
        }, z11);
    }

    private boolean a(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == -1) {
                return true;
            }
        } else if (obj instanceof Long) {
            if (((Long) obj).longValue() == -1) {
                return true;
            }
        } else {
            if (obj instanceof Map) {
                return ((Map) obj).isEmpty();
            }
            if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            }
        }
        return false;
    }

    private <T> T a(String str, a<T> aVar) {
        return (T) a(str, (a) aVar, false);
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00f8: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:51:0x00f8 */
    private <T> T a(String str, a<T> aVar, boolean z10) {
        T tB;
        T t10;
        Object obj;
        T tB2 = null;
        String strA = null;
        try {
            if (str == null) {
                h("M|A, key: " + str);
                tB = aVar.b();
            } else {
                Integer num = this.f1914b.get(str);
                try {
                    if (num != null) {
                        obj = this.f1913a.get(str);
                        if (obj == null && !z10) {
                            return aVar.f2016g;
                        }
                    } else {
                        obj = null;
                    }
                    Long l10 = this.f1915c.get(str);
                    boolean z11 = false;
                    boolean z12 = l10 != null && System.currentTimeMillis() >= l10.longValue();
                    if (!z12 && a(obj) && !this.f1918f.contains(str)) {
                        z11 = true;
                    }
                    if (!z10 && obj != null && !z12 && !z11) {
                        h("M|C, key: " + str);
                        tB = (T) obj;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("M|A, key: ");
                        sb2.append(str);
                        sb2.append("|");
                        if (z10) {
                            strA = CContext.SCENE_FC;
                        } else if (obj == null || z12) {
                            strA = "NVC";
                        } else if (z11) {
                            strA = cn.fly.commons.m.a("002Ygiil");
                        }
                        sb2.append(strA);
                        h(sb2.toString());
                        tB2 = aVar.b();
                        this.f1918f.add(str);
                        if (tB2 != null) {
                            this.f1913a.put(str, tB2);
                            if (aVar.a(tB2) > 0) {
                                this.f1915c.put(str, Long.valueOf(System.currentTimeMillis() + aVar.a(tB2)));
                            }
                        }
                        if (num == null) {
                            this.f1914b.put(str, 1);
                        } else {
                            this.f1914b.put(str, Integer.valueOf(num.intValue() + 1));
                        }
                        tB = tB2;
                    }
                } catch (Throwable th) {
                    th = th;
                    tB2 = t10;
                    if (th instanceof PackageManager.NameNotFoundException) {
                        FlyLog.getInstance().w("Exception: " + th.getClass().getName() + ": " + th.getMessage());
                    } else {
                        FlyLog.getInstance().w(th);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return tB == null ? aVar.f2016g : tB;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0066  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x006e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0070 A[Catch: all -> 0x00c8, TryCatch #1 {all -> 0x00c8, blocks: (B:47:0x00a4, B:51:0x00bb, B:33:0x0056, B:40:0x0076, B:39:0x0070, B:22:0x003e), top: B:70:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0095 A[Catch: all -> 0x00cb, TryCatch #3 {all -> 0x00cb, blocks: (B:3:0x0001, B:6:0x0009, B:41:0x0084, B:44:0x0095, B:45:0x009a), top: B:71:0x0001 }] */
    /* JADX WARN: Multi-variable type inference failed */
    private <T> T a(String str, a<T> aVar, boolean z10, boolean z11) {
        T t10;
        Object objC;
        boolean z12;
        long jA;
        Object objB = null;
        String strA = null;
        try {
            if (TextUtils.isEmpty(str)) {
                h("F|A, key: " + str);
                t10 = (T) aVar.b();
            } else {
                boolean z13 = false;
                if (z10) {
                    objC = null;
                } else {
                    z12 = true;
                    try {
                        objC = c(str, aVar);
                        try {
                            if (!a(objC) || this.f1918f.contains(str)) {
                            }
                        } catch (FlyPersistence.NoValidDataException unused) {
                            z13 = true;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                FlyLog.getInstance().d(th);
                            } catch (Throwable th2) {
                                th = th2;
                                objB = objC;
                                if (th instanceof InvocationTargetException) {
                                    String name = th.getClass().getName();
                                    String message = th.getMessage();
                                    Throwable cause = th.getCause();
                                    if (cause != null) {
                                        name = cause.getClass().getName();
                                        message = cause.getMessage();
                                    }
                                    FlyLog.getInstance().w("Exception: " + name + ": " + message);
                                } else if (th instanceof PackageManager.NameNotFoundException) {
                                    FlyLog.getInstance().w("Exception: " + th.getClass().getName() + ": " + th.getMessage());
                                } else {
                                    FlyLog.getInstance().w(th);
                                }
                            }
                        }
                    } catch (FlyPersistence.NoValidDataException unused2) {
                        objC = null;
                    } catch (Throwable th3) {
                        th = th3;
                        objC = null;
                    }
                    if ((!z10 || z13 || z12) && z11) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("F|A, key: ");
                        sb2.append(str);
                        sb2.append("|");
                        if (z10) {
                            strA = CContext.SCENE_FC;
                        } else if (z13) {
                            strA = "NVC";
                        } else if (z12) {
                            strA = cn.fly.commons.m.a("002Agiil");
                        }
                        sb2.append(strA);
                        h(sb2.toString());
                        objB = aVar.b();
                        this.f1918f.add(str);
                        jA = aVar.a(objB);
                        if (jA >= 0) {
                            a(str, objB, jA > 0 ? System.currentTimeMillis() + jA : 0L, aVar);
                        }
                        t10 = (T) objB;
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("F|C, key: ");
                        sb3.append(str);
                        sb3.append("|");
                        sb3.append(z11 ? "AA" : "OC");
                        h(sb3.toString());
                        t10 = (T) objC;
                    }
                }
                z12 = false;
                if (!z10) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("F|A, key: ");
                    sb4.append(str);
                    sb4.append("|");
                    if (z10) {
                        strA = CContext.SCENE_FC;
                    } else if (z13) {
                        strA = "NVC";
                    } else if (z12) {
                        strA = cn.fly.commons.m.a("002Agiil");
                    }
                    sb4.append(strA);
                    h(sb4.toString());
                    objB = aVar.b();
                    this.f1918f.add(str);
                    jA = aVar.a(objB);
                    if (jA >= 0) {
                        a(str, objB, jA > 0 ? System.currentTimeMillis() + jA : 0L, aVar);
                    }
                    t10 = (T) objB;
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("F|A, key: ");
                    sb5.append(str);
                    sb5.append("|");
                    if (z10) {
                        strA = CContext.SCENE_FC;
                    } else if (z13) {
                        strA = "NVC";
                    } else if (z12) {
                        strA = cn.fly.commons.m.a("002Agiil");
                    }
                    sb5.append(strA);
                    h(sb5.toString());
                    objB = aVar.b();
                    this.f1918f.add(str);
                    jA = aVar.a(objB);
                    if (jA >= 0) {
                        a(str, objB, jA > 0 ? System.currentTimeMillis() + jA : 0L, aVar);
                    }
                    t10 = (T) objB;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return t10 == null ? aVar.f2016g : t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void a(String str, T t10, long j10, a<T> aVar) {
        try {
            Type typeA = a((a) aVar);
            int iA = a(typeA);
            if (iA == 1) {
                cn.fly.tools.utils.g.a().a(str, (Parcelable[]) t10, j10);
            } else if (iA == 2 || iA == 4) {
                cn.fly.tools.utils.g.a().a(str, t10, j10);
            } else if (iA == 3) {
                Class cls = (Class) ((ParameterizedType) typeA).getRawType();
                if (cls != List.class && cls != LinkedList.class && cls != ArrayList.class) {
                    if (cls == Map.class || cls == HashMap.class || cls == TreeMap.class || cls == Hashtable.class) {
                        cn.fly.tools.utils.g.a().a(str, (Map) t10, j10);
                    }
                } else {
                    cn.fly.tools.utils.g.a().a(str, (List) t10, j10);
                }
            } else if (iA == 9) {
                Class cls2 = (Class) typeA;
                if (cls2 != null) {
                    if (cls2 == Integer.class) {
                        cn.fly.tools.utils.g.a().a(str, (Integer) t10, j10);
                    } else if (cls2 == Long.class) {
                        cn.fly.tools.utils.g.a().a(str, (Long) t10, j10);
                    } else if (cls2 == Double.class) {
                        cn.fly.tools.utils.g.a().a(str, (Double) t10, j10);
                    } else if (cls2 == Boolean.class) {
                        cn.fly.tools.utils.g.a().a(str, (Boolean) t10, j10);
                    } else if (cls2 == String.class) {
                        cn.fly.tools.utils.g.a().a(str, (String) t10, j10);
                    } else if (Parcelable.class.isAssignableFrom(cls2)) {
                        cn.fly.tools.utils.g.a().a(str, (Parcelable) t10, j10);
                    } else {
                        cn.fly.tools.utils.g.a().a(str, t10, j10);
                    }
                }
            } else {
                cn.fly.tools.utils.g.a().a(str, t10, j10);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    private <T> Type a(a<T> aVar) {
        try {
            return ((ParameterizedType) aVar.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    private int a(Type type) {
        if (type instanceof GenericArrayType) {
            return Parcelable.class.isAssignableFrom((Class) ((GenericArrayType) type).getGenericComponentType()) ? 1 : 2;
        }
        if (!(type instanceof ParameterizedType)) {
            return 9;
        }
        try {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type type2 = actualTypeArguments[0];
            if (actualTypeArguments.length == 2) {
                type2 = actualTypeArguments[1];
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                Type type3 = actualTypeArguments2[0];
                if (actualTypeArguments2.length == 2) {
                    type3 = actualTypeArguments2[1];
                }
                if (type3 instanceof Class) {
                }
                return 4;
            }
            if (type2 instanceof Class) {
                return Parcelable.class.isAssignableFrom((Class) type2) ? 3 : 4;
            }
            return -1;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(Calendar calendar) {
        calendar.add(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    private boolean a(boolean z10, String str, String str2) {
        String str3 = "sdir_able_" + (TextUtils.equals(str2, DH.SyncMtd.getPackageName()) ? 1 : 0);
        if (cn.fly.tools.utils.g.a().a(str3, -1) != z10) {
            cn.fly.tools.utils.g.a().a(str3, Integer.valueOf(z10 ? 1 : 0));
            if (!z10) {
                return true;
            }
        }
        if (!z10 || TextUtils.isEmpty(str2)) {
            return false;
        }
        String str4 = "key_almdf-" + str + "-" + str2;
        long jD = cn.fly.tools.utils.g.a().d(str4);
        long jG = g(str2);
        if (jG == jD) {
            return false;
        }
        cn.fly.tools.utils.g.a().a(str4, Long.valueOf(jG));
        return true;
    }
}
