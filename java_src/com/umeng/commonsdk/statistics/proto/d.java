package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.bs;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.ch;
import com.umeng.analytics.pro.ci;
import com.umeng.analytics.pro.ck;
import com.umeng.analytics.pro.cm;
import com.umeng.analytics.pro.co;
import com.umeng.analytics.pro.cp;
import com.umeng.analytics.pro.cr;
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
public class d implements bv<d, e>, Serializable, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<e, ch> f85503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f85504e = 2846460275012375038L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final cz f85505f = new cz("Imprint");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cp f85506g = new cp("property", (byte) 13, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cp f85507h = new cp("version", (byte) 8, 2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final cp f85508i = new cp("checksum", (byte) 11, 3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f85509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f85510k = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.e> f85511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f85512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f85513c;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte f85514l;

    private static class a extends de<d> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, d dVar) throws cb {
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
                        } else if (b10 == 11) {
                            dVar.f85513c = cuVar.z();
                            dVar.c(true);
                        } else {
                            cx.a(cuVar, b10);
                        }
                    } else if (b10 == 8) {
                        dVar.f85512b = cuVar.w();
                        dVar.b(true);
                    } else {
                        cx.a(cuVar, b10);
                    }
                } else if (b10 == 13) {
                    cr crVarN = cuVar.n();
                    dVar.f85511a = new HashMap(crVarN.f84592c * 2);
                    for (int i10 = 0; i10 < crVarN.f84592c; i10++) {
                        String strZ = cuVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(cuVar);
                        dVar.f85511a.put(strZ, eVar);
                    }
                    cuVar.o();
                    dVar.a(true);
                } else {
                    cx.a(cuVar, b10);
                }
                cuVar.m();
            }
            cuVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            throw new cv("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, d dVar) throws cb {
            dVar.l();
            cuVar.a(d.f85505f);
            if (dVar.f85511a != null) {
                cuVar.a(d.f85506g);
                cuVar.a(new cr((byte) 11, (byte) 12, dVar.f85511a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f85511a.entrySet()) {
                    cuVar.a(entry.getKey());
                    entry.getValue().write(cuVar);
                }
                cuVar.e();
                cuVar.c();
            }
            cuVar.a(d.f85507h);
            cuVar.a(dVar.f85512b);
            cuVar.c();
            if (dVar.f85513c != null) {
                cuVar.a(d.f85508i);
                cuVar.a(dVar.f85513c);
                cuVar.c();
            }
            cuVar.d();
            cuVar.b();
        }
    }

    private static class b implements dd {
        private b() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    private static class c extends df<d> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, d dVar) throws cb {
            da daVar = (da) cuVar;
            daVar.a(dVar.f85511a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f85511a.entrySet()) {
                daVar.a(entry.getKey());
                entry.getValue().write(daVar);
            }
            daVar.a(dVar.f85512b);
            daVar.a(dVar.f85513c);
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, d dVar) throws cb {
            da daVar = (da) cuVar;
            cr crVar = new cr((byte) 11, (byte) 12, daVar.w());
            dVar.f85511a = new HashMap(crVar.f84592c * 2);
            for (int i10 = 0; i10 < crVar.f84592c; i10++) {
                String strZ = daVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(daVar);
                dVar.f85511a.put(strZ, eVar);
            }
            dVar.a(true);
            dVar.f85512b = daVar.w();
            dVar.b(true);
            dVar.f85513c = daVar.z();
            dVar.c(true);
        }
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.d$d, reason: collision with other inner class name */
    private static class C1064d implements dd {
        private C1064d() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap map = new HashMap();
        f85509j = map;
        map.put(de.class, new b());
        map.put(df.class, new C1064d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.PROPERTY, new ch("property", (byte) 1, new ck((byte) 13, new ci((byte) 11), new cm((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put(e.VERSION, new ch("version", (byte) 1, new ci((byte) 8)));
        enumMap.put(e.CHECKSUM, new ch("checksum", (byte) 1, new ci((byte) 11)));
        Map<e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f85503d = mapUnmodifiableMap;
        ch.a(d.class, mapUnmodifiableMap);
    }

    public d() {
        this.f85514l = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d deepCopy() {
        return new d(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f85511a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.f85511a;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f85511a = null;
        b(false);
        this.f85512b = 0;
        this.f85513c = null;
    }

    public void d() {
        this.f85511a = null;
    }

    public boolean e() {
        return this.f85511a != null;
    }

    public int f() {
        return this.f85512b;
    }

    public void g() {
        this.f85514l = bs.b(this.f85514l, 0);
    }

    public boolean h() {
        return bs.a(this.f85514l, 0);
    }

    public String i() {
        return this.f85513c;
    }

    public void j() {
        this.f85513c = null;
    }

    public boolean k() {
        return this.f85513c != null;
    }

    public void l() throws cb {
        if (this.f85511a == null) {
            throw new cv("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.f85513c != null) {
            return;
        }
        throw new cv("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f85509j.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Imprint(");
        sb2.append("property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f85511a;
        if (map == null) {
            sb2.append("null");
        } else {
            sb2.append(map);
        }
        sb2.append(", ");
        sb2.append("version:");
        sb2.append(this.f85512b);
        sb2.append(", ");
        sb2.append("checksum:");
        String str = this.f85513c;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f85509j.get(cuVar.D()).b().a(cuVar, this);
    }

    public enum e implements cc {
        PROPERTY(1, "property"),
        VERSION(2, "version"),
        CHECKSUM(3, "checksum");


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f85518d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final short f85520e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f85521f;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                f85518d.put(eVar.b(), eVar);
            }
        }

        e(short s10, String str) {
            this.f85520e = s10;
            this.f85521f = str;
        }

        public static e a(int i10) {
            if (i10 == 1) {
                return PROPERTY;
            }
            if (i10 == 2) {
                return VERSION;
            }
            if (i10 != 3) {
                return null;
            }
            return CHECKSUM;
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
            return this.f85521f;
        }

        public static e a(String str) {
            return f85518d.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f85520e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.f85511a == null) {
            this.f85511a = new HashMap();
        }
        this.f85511a.put(str, eVar);
    }

    public void b(boolean z10) {
        this.f85514l = bs.a(this.f85514l, 0, z10);
    }

    public void c(boolean z10) {
        if (z10) {
            return;
        }
        this.f85513c = null;
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i10, String str) {
        this();
        this.f85511a = map;
        this.f85512b = i10;
        b(true);
        this.f85513c = str;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i10) {
        return e.a(i10);
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.f85511a = map;
        return this;
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f85511a = null;
    }

    public d a(int i10) {
        this.f85512b = i10;
        b(true);
        return this;
    }

    public d(d dVar) {
        this.f85514l = (byte) 0;
        this.f85514l = dVar.f85514l;
        if (dVar.e()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f85511a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.f85511a = map;
        }
        this.f85512b = dVar.f85512b;
        if (dVar.k()) {
            this.f85513c = dVar.f85513c;
        }
    }

    public d a(String str) {
        this.f85513c = str;
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new co(new dg(objectOutputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f85514l = (byte) 0;
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }
}
