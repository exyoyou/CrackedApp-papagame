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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class a implements bv<a, e>, Serializable, Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Map<e, ch> f85442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f85443f = 9132678615281394583L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cz f85444g = new cz("IdJournal");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cp f85445h = new cp("domain", (byte) 11, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final cp f85446i = new cp("old_id", (byte) 11, 2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final cp f85447j = new cp("new_id", (byte) 11, 3);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final cp f85448k = new cp("ts", (byte) 10, 4);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f85449l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f85450m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f85451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f85452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f85453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f85454d;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte f85455n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private e[] f85456o;

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.a$a, reason: collision with other inner class name */
    private static class C1061a extends de<a> {
        private C1061a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, a aVar) throws cb {
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
                            if (s10 != 4) {
                                cx.a(cuVar, b10);
                            } else if (b10 == 10) {
                                aVar.f85454d = cuVar.x();
                                aVar.d(true);
                            } else {
                                cx.a(cuVar, b10);
                            }
                        } else if (b10 == 11) {
                            aVar.f85453c = cuVar.z();
                            aVar.c(true);
                        } else {
                            cx.a(cuVar, b10);
                        }
                    } else if (b10 == 11) {
                        aVar.f85452b = cuVar.z();
                        aVar.b(true);
                    } else {
                        cx.a(cuVar, b10);
                    }
                } else if (b10 == 11) {
                    aVar.f85451a = cuVar.z();
                    aVar.a(true);
                } else {
                    cx.a(cuVar, b10);
                }
                cuVar.m();
            }
            cuVar.k();
            if (aVar.m()) {
                aVar.n();
                return;
            }
            throw new cv("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, a aVar) throws cb {
            aVar.n();
            cuVar.a(a.f85444g);
            if (aVar.f85451a != null) {
                cuVar.a(a.f85445h);
                cuVar.a(aVar.f85451a);
                cuVar.c();
            }
            if (aVar.f85452b != null && aVar.g()) {
                cuVar.a(a.f85446i);
                cuVar.a(aVar.f85452b);
                cuVar.c();
            }
            if (aVar.f85453c != null) {
                cuVar.a(a.f85447j);
                cuVar.a(aVar.f85453c);
                cuVar.c();
            }
            cuVar.a(a.f85448k);
            cuVar.a(aVar.f85454d);
            cuVar.c();
            cuVar.d();
            cuVar.b();
        }
    }

    private static class b implements dd {
        private b() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1061a b() {
            return new C1061a();
        }
    }

    private static class c extends df<a> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, a aVar) throws cb {
            da daVar = (da) cuVar;
            daVar.a(aVar.f85451a);
            daVar.a(aVar.f85453c);
            daVar.a(aVar.f85454d);
            BitSet bitSet = new BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            daVar.a(bitSet, 1);
            if (aVar.g()) {
                daVar.a(aVar.f85452b);
            }
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, a aVar) throws cb {
            da daVar = (da) cuVar;
            aVar.f85451a = daVar.z();
            aVar.a(true);
            aVar.f85453c = daVar.z();
            aVar.c(true);
            aVar.f85454d = daVar.x();
            aVar.d(true);
            if (daVar.b(1).get(0)) {
                aVar.f85452b = daVar.z();
                aVar.b(true);
            }
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
        f85449l = map;
        map.put(de.class, new b());
        map.put(df.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.DOMAIN, new ch("domain", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.OLD_ID, new ch("old_id", (byte) 2, new ci((byte) 11)));
        enumMap.put(e.NEW_ID, new ch("new_id", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.TS, new ch("ts", (byte) 1, new ci((byte) 10)));
        Map<e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f85442e = mapUnmodifiableMap;
        ch.a(a.class, mapUnmodifiableMap);
    }

    public a() {
        this.f85455n = (byte) 0;
        this.f85456o = new e[]{e.OLD_ID};
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a deepCopy() {
        return new a(this);
    }

    public String b() {
        return this.f85451a;
    }

    public void c() {
        this.f85451a = null;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f85451a = null;
        this.f85452b = null;
        this.f85453c = null;
        d(false);
        this.f85454d = 0L;
    }

    public boolean d() {
        return this.f85451a != null;
    }

    public String e() {
        return this.f85452b;
    }

    public void f() {
        this.f85452b = null;
    }

    public boolean g() {
        return this.f85452b != null;
    }

    public String h() {
        return this.f85453c;
    }

    public void i() {
        this.f85453c = null;
    }

    public boolean j() {
        return this.f85453c != null;
    }

    public long k() {
        return this.f85454d;
    }

    public void l() {
        this.f85455n = bs.b(this.f85455n, 0);
    }

    public boolean m() {
        return bs.a(this.f85455n, 0);
    }

    public void n() throws cb {
        if (this.f85451a == null) {
            throw new cv("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.f85453c != null) {
            return;
        }
        throw new cv("Required field 'new_id' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f85449l.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("IdJournal(");
        sb2.append("domain:");
        String str = this.f85451a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("old_id:");
            String str2 = this.f85452b;
            if (str2 == null) {
                sb2.append("null");
            } else {
                sb2.append(str2);
            }
        }
        sb2.append(", ");
        sb2.append("new_id:");
        String str3 = this.f85453c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("ts:");
        sb2.append(this.f85454d);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f85449l.get(cuVar.D()).b().a(cuVar, this);
    }

    public enum e implements cc {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Map<String, e> f85461e = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final short f85463f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f85464g;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                f85461e.put(eVar.b(), eVar);
            }
        }

        e(short s10, String str) {
            this.f85463f = s10;
            this.f85464g = str;
        }

        public static e a(int i10) {
            if (i10 == 1) {
                return DOMAIN;
            }
            if (i10 == 2) {
                return OLD_ID;
            }
            if (i10 == 3) {
                return NEW_ID;
            }
            if (i10 != 4) {
                return null;
            }
            return TS;
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
            return this.f85464g;
        }

        public static e a(String str) {
            return f85461e.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f85463f;
        }
    }

    public a a(String str) {
        this.f85451a = str;
        return this;
    }

    public a b(String str) {
        this.f85452b = str;
        return this;
    }

    public a c(String str) {
        this.f85453c = str;
        return this;
    }

    public void d(boolean z10) {
        this.f85455n = bs.a(this.f85455n, 0, z10);
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f85451a = null;
    }

    public void b(boolean z10) {
        if (z10) {
            return;
        }
        this.f85452b = null;
    }

    public void c(boolean z10) {
        if (z10) {
            return;
        }
        this.f85453c = null;
    }

    public a(String str, String str2, long j10) {
        this();
        this.f85451a = str;
        this.f85453c = str2;
        this.f85454d = j10;
        d(true);
    }

    public a a(long j10) {
        this.f85454d = j10;
        d(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i10) {
        return e.a(i10);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new co(new dg(objectOutputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public a(a aVar) {
        this.f85455n = (byte) 0;
        this.f85456o = new e[]{e.OLD_ID};
        this.f85455n = aVar.f85455n;
        if (aVar.d()) {
            this.f85451a = aVar.f85451a;
        }
        if (aVar.g()) {
            this.f85452b = aVar.f85452b;
        }
        if (aVar.j()) {
            this.f85453c = aVar.f85453c;
        }
        this.f85454d = aVar.f85454d;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f85455n = (byte) 0;
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }
}
