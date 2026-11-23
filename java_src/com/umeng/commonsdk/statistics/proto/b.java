package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.bs;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.ch;
import com.umeng.analytics.pro.ci;
import com.umeng.analytics.pro.co;
import com.umeng.analytics.pro.cp;
import com.umeng.analytics.pro.cu;
import com.umeng.analytics.pro.cv;
import com.umeng.analytics.pro.cx;
import com.umeng.analytics.pro.cz;
import com.umeng.analytics.pro.da;
import com.umeng.analytics.pro.dc;
import com.umeng.analytics.pro.dd;
import com.umeng.analytics.pro.de;
import com.umeng.analytics.pro.df;
import com.umeng.analytics.pro.dg;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b implements bv<b, e>, Serializable, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<e, ch> f85465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f85466e = -6496538196005191531L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final cz f85467f = new cz("IdSnapshot");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cp f85468g = new cp("identity", (byte) 11, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cp f85469h = new cp("ts", (byte) 10, 2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final cp f85470i = new cp("version", (byte) 8, 3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f85471j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f85472k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f85473l = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f85474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f85475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f85476c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte f85477m;

    private static class a extends de<b> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, b bVar) throws cb {
            cuVar.j();
            while (true) {
                cp cpVarL = cuVar.l();
                byte b10 = cpVarL.f84586b;
                if (b10 == 0) {
                    break;
                }
                short s10 = cpVarL.f84587c;
                if (s10 != 1) {
                    if (s10 != 2) {
                        if (s10 != 3) {
                            cx.a(cuVar, b10);
                        } else if (b10 == 8) {
                            bVar.f85476c = cuVar.w();
                            bVar.c(true);
                        } else {
                            cx.a(cuVar, b10);
                        }
                    } else if (b10 == 10) {
                        bVar.f85475b = cuVar.x();
                        bVar.b(true);
                    } else {
                        cx.a(cuVar, b10);
                    }
                } else if (b10 == 11) {
                    bVar.f85474a = cuVar.z();
                    bVar.a(true);
                } else {
                    cx.a(cuVar, b10);
                }
                cuVar.m();
            }
            cuVar.k();
            if (!bVar.g()) {
                throw new cv("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
            if (bVar.j()) {
                bVar.k();
                return;
            }
            throw new cv("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, b bVar) throws cb {
            bVar.k();
            cuVar.a(b.f85467f);
            if (bVar.f85474a != null) {
                cuVar.a(b.f85468g);
                cuVar.a(bVar.f85474a);
                cuVar.c();
            }
            cuVar.a(b.f85469h);
            cuVar.a(bVar.f85475b);
            cuVar.c();
            cuVar.a(b.f85470i);
            cuVar.a(bVar.f85476c);
            cuVar.c();
            cuVar.d();
            cuVar.b();
        }
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.b$b, reason: collision with other inner class name */
    private static class C1062b implements dd {
        private C1062b() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    private static class c extends df<b> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, b bVar) throws cb {
            da daVar = (da) cuVar;
            daVar.a(bVar.f85474a);
            daVar.a(bVar.f85475b);
            daVar.a(bVar.f85476c);
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, b bVar) throws cb {
            da daVar = (da) cuVar;
            bVar.f85474a = daVar.z();
            bVar.a(true);
            bVar.f85475b = daVar.x();
            bVar.b(true);
            bVar.f85476c = daVar.w();
            bVar.c(true);
        }
    }

    private static class d implements dd {
        private d() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap map = new HashMap();
        f85471j = map;
        map.put(de.class, new C1062b());
        map.put(df.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.IDENTITY, new ch("identity", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.TS, new ch("ts", (byte) 1, new ci((byte) 10)));
        enumMap.put(e.VERSION, new ch("version", (byte) 1, new ci((byte) 8)));
        Map<e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f85465d = mapUnmodifiableMap;
        ch.a(b.class, mapUnmodifiableMap);
    }

    public b() {
        this.f85477m = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b deepCopy() {
        return new b(this);
    }

    public String b() {
        return this.f85474a;
    }

    public void c() {
        this.f85474a = null;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f85474a = null;
        b(false);
        this.f85475b = 0L;
        c(false);
        this.f85476c = 0;
    }

    public boolean d() {
        return this.f85474a != null;
    }

    public long e() {
        return this.f85475b;
    }

    public void f() {
        this.f85477m = bs.b(this.f85477m, 0);
    }

    public boolean g() {
        return bs.a(this.f85477m, 0);
    }

    public int h() {
        return this.f85476c;
    }

    public void i() {
        this.f85477m = bs.b(this.f85477m, 1);
    }

    public boolean j() {
        return bs.a(this.f85477m, 1);
    }

    public void k() throws cb {
        if (this.f85474a != null) {
            return;
        }
        throw new cv("Required field 'identity' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f85471j.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("IdSnapshot(");
        sb2.append("identity:");
        String str = this.f85474a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(", ");
        sb2.append("ts:");
        sb2.append(this.f85475b);
        sb2.append(", ");
        sb2.append("version:");
        sb2.append(this.f85476c);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f85471j.get(cuVar.D()).b().a(cuVar, this);
    }

    public enum e implements cc {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, "version");


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f85481d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final short f85483e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f85484f;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                f85481d.put(eVar.b(), eVar);
            }
        }

        e(short s10, String str) {
            this.f85483e = s10;
            this.f85484f = str;
        }

        public static e a(int i10) {
            if (i10 == 1) {
                return IDENTITY;
            }
            if (i10 == 2) {
                return TS;
            }
            if (i10 != 3) {
                return null;
            }
            return VERSION;
        }

        public static e b(int i10) {
            e eVarA = a(i10);
            if (eVarA != null) {
                return eVarA;
            }
            throw new IllegalArgumentException("Field " + i10 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.cc
        public String b() {
            return this.f85484f;
        }

        public static e a(String str) {
            return f85481d.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f85483e;
        }
    }

    public b a(String str) {
        this.f85474a = str;
        return this;
    }

    public void b(boolean z10) {
        this.f85477m = bs.a(this.f85477m, 0, z10);
    }

    public void c(boolean z10) {
        this.f85477m = bs.a(this.f85477m, 1, z10);
    }

    public b(String str, long j10, int i10) {
        this();
        this.f85474a = str;
        this.f85475b = j10;
        b(true);
        this.f85476c = i10;
        c(true);
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f85474a = null;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i10) {
        return e.a(i10);
    }

    public b a(long j10) {
        this.f85475b = j10;
        b(true);
        return this;
    }

    public b a(int i10) {
        this.f85476c = i10;
        c(true);
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new co(new dg(objectOutputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public b(b bVar) {
        this.f85477m = (byte) 0;
        this.f85477m = bVar.f85477m;
        if (bVar.d()) {
            this.f85474a = bVar.f85474a;
        }
        this.f85475b = bVar.f85475b;
        this.f85476c = bVar.f85476c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f85477m = (byte) 0;
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }
}
