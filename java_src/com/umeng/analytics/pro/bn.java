package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class bn implements bv<bn, e>, Serializable, Cloneable {
    private static final int A = 2;
    private static final int B = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Map<e, ch> f84424k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f84425l = 420342210744516016L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final cz f84426m = new cz("UMEnvelope");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final cp f84427n = new cp("version", (byte) 11, 1);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final cp f84428o = new cp("address", (byte) 11, 2);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final cp f84429p = new cp("signature", (byte) 11, 3);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final cp f84430q = new cp("serial_num", (byte) 8, 4);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final cp f84431r = new cp("ts_secs", (byte) 8, 5);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final cp f84432s = new cp("length", (byte) 8, 6);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final cp f84433t = new cp("entity", (byte) 11, 7);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final cp f84434u = new cp("guid", (byte) 11, 8);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final cp f84435v = new cp("checksum", (byte) 11, 9);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final cp f84436w = new cp("codex", (byte) 8, 10);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f84437x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f84438y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f84439z = 1;
    private byte C;
    private e[] D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f84440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f84441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f84442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f84443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f84444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f84445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f84446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f84447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f84448i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f84449j;

    private static class a extends de<bn> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, bn bnVar) throws cb {
            cuVar.j();
            while (true) {
                cp cpVarL = cuVar.l();
                byte b10 = cpVarL.f84586b;
                if (b10 == 0) {
                    cuVar.k();
                    if (!bnVar.m()) {
                        throw new cv("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!bnVar.p()) {
                        throw new cv("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (bnVar.s()) {
                        bnVar.G();
                        return;
                    }
                    throw new cv("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
                switch (cpVarL.f84587c) {
                    case 1:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84440a = cuVar.z();
                            bnVar.a(true);
                        }
                        break;
                    case 2:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84441b = cuVar.z();
                            bnVar.b(true);
                        }
                        break;
                    case 3:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84442c = cuVar.z();
                            bnVar.c(true);
                        }
                        break;
                    case 4:
                        if (b10 != 8) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84443d = cuVar.w();
                            bnVar.d(true);
                        }
                        break;
                    case 5:
                        if (b10 != 8) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84444e = cuVar.w();
                            bnVar.e(true);
                        }
                        break;
                    case 6:
                        if (b10 != 8) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84445f = cuVar.w();
                            bnVar.f(true);
                        }
                        break;
                    case 7:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84446g = cuVar.A();
                            bnVar.g(true);
                        }
                        break;
                    case 8:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84447h = cuVar.z();
                            bnVar.h(true);
                        }
                        break;
                    case 9:
                        if (b10 != 11) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84448i = cuVar.z();
                            bnVar.i(true);
                        }
                        break;
                    case 10:
                        if (b10 != 8) {
                            cx.a(cuVar, b10);
                        } else {
                            bnVar.f84449j = cuVar.w();
                            bnVar.j(true);
                        }
                        break;
                    default:
                        cx.a(cuVar, b10);
                        break;
                }
                cuVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, bn bnVar) throws cb {
            bnVar.G();
            cuVar.a(bn.f84426m);
            if (bnVar.f84440a != null) {
                cuVar.a(bn.f84427n);
                cuVar.a(bnVar.f84440a);
                cuVar.c();
            }
            if (bnVar.f84441b != null) {
                cuVar.a(bn.f84428o);
                cuVar.a(bnVar.f84441b);
                cuVar.c();
            }
            if (bnVar.f84442c != null) {
                cuVar.a(bn.f84429p);
                cuVar.a(bnVar.f84442c);
                cuVar.c();
            }
            cuVar.a(bn.f84430q);
            cuVar.a(bnVar.f84443d);
            cuVar.c();
            cuVar.a(bn.f84431r);
            cuVar.a(bnVar.f84444e);
            cuVar.c();
            cuVar.a(bn.f84432s);
            cuVar.a(bnVar.f84445f);
            cuVar.c();
            if (bnVar.f84446g != null) {
                cuVar.a(bn.f84433t);
                cuVar.a(bnVar.f84446g);
                cuVar.c();
            }
            if (bnVar.f84447h != null) {
                cuVar.a(bn.f84434u);
                cuVar.a(bnVar.f84447h);
                cuVar.c();
            }
            if (bnVar.f84448i != null) {
                cuVar.a(bn.f84435v);
                cuVar.a(bnVar.f84448i);
                cuVar.c();
            }
            if (bnVar.F()) {
                cuVar.a(bn.f84436w);
                cuVar.a(bnVar.f84449j);
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

    private static class c extends df<bn> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, bn bnVar) throws cb {
            da daVar = (da) cuVar;
            daVar.a(bnVar.f84440a);
            daVar.a(bnVar.f84441b);
            daVar.a(bnVar.f84442c);
            daVar.a(bnVar.f84443d);
            daVar.a(bnVar.f84444e);
            daVar.a(bnVar.f84445f);
            daVar.a(bnVar.f84446g);
            daVar.a(bnVar.f84447h);
            daVar.a(bnVar.f84448i);
            BitSet bitSet = new BitSet();
            if (bnVar.F()) {
                bitSet.set(0);
            }
            daVar.a(bitSet, 1);
            if (bnVar.F()) {
                daVar.a(bnVar.f84449j);
            }
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, bn bnVar) throws cb {
            da daVar = (da) cuVar;
            bnVar.f84440a = daVar.z();
            bnVar.a(true);
            bnVar.f84441b = daVar.z();
            bnVar.b(true);
            bnVar.f84442c = daVar.z();
            bnVar.c(true);
            bnVar.f84443d = daVar.w();
            bnVar.d(true);
            bnVar.f84444e = daVar.w();
            bnVar.e(true);
            bnVar.f84445f = daVar.w();
            bnVar.f(true);
            bnVar.f84446g = daVar.A();
            bnVar.g(true);
            bnVar.f84447h = daVar.z();
            bnVar.h(true);
            bnVar.f84448i = daVar.z();
            bnVar.i(true);
            if (daVar.b(1).get(0)) {
                bnVar.f84449j = daVar.w();
                bnVar.j(true);
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
        f84437x = map;
        map.put(de.class, new b());
        map.put(df.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.VERSION, new ch("version", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.ADDRESS, new ch("address", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.SIGNATURE, new ch("signature", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.SERIAL_NUM, new ch("serial_num", (byte) 1, new ci((byte) 8)));
        enumMap.put(e.TS_SECS, new ch("ts_secs", (byte) 1, new ci((byte) 8)));
        enumMap.put(e.LENGTH, new ch("length", (byte) 1, new ci((byte) 8)));
        enumMap.put(e.ENTITY, new ch("entity", (byte) 1, new ci((byte) 11, true)));
        enumMap.put(e.GUID, new ch("guid", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.CHECKSUM, new ch("checksum", (byte) 1, new ci((byte) 11)));
        enumMap.put(e.CODEX, new ch("codex", (byte) 2, new ci((byte) 8)));
        Map<e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f84424k = mapUnmodifiableMap;
        ch.a(bn.class, mapUnmodifiableMap);
    }

    public bn() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public String A() {
        return this.f84448i;
    }

    public void B() {
        this.f84448i = null;
    }

    public boolean C() {
        return this.f84448i != null;
    }

    public int D() {
        return this.f84449j;
    }

    public void E() {
        this.C = bs.b(this.C, 3);
    }

    public boolean F() {
        return bs.a(this.C, 3);
    }

    public void G() throws cb {
        if (this.f84440a == null) {
            throw new cv("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f84441b == null) {
            throw new cv("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f84442c == null) {
            throw new cv("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f84446g == null) {
            throw new cv("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f84447h == null) {
            throw new cv("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f84448i != null) {
            return;
        }
        throw new cv("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public bn deepCopy() {
        return new bn(this);
    }

    public String b() {
        return this.f84440a;
    }

    public void c() {
        this.f84440a = null;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f84440a = null;
        this.f84441b = null;
        this.f84442c = null;
        d(false);
        this.f84443d = 0;
        e(false);
        this.f84444e = 0;
        f(false);
        this.f84445f = 0;
        this.f84446g = null;
        this.f84447h = null;
        this.f84448i = null;
        j(false);
        this.f84449j = 0;
    }

    public boolean d() {
        return this.f84440a != null;
    }

    public String e() {
        return this.f84441b;
    }

    public void f() {
        this.f84441b = null;
    }

    public boolean g() {
        return this.f84441b != null;
    }

    public String h() {
        return this.f84442c;
    }

    public void i() {
        this.f84442c = null;
    }

    public boolean j() {
        return this.f84442c != null;
    }

    public int k() {
        return this.f84443d;
    }

    public void l() {
        this.C = bs.b(this.C, 0);
    }

    public boolean m() {
        return bs.a(this.C, 0);
    }

    public int n() {
        return this.f84444e;
    }

    public void o() {
        this.C = bs.b(this.C, 1);
    }

    public boolean p() {
        return bs.a(this.C, 1);
    }

    public int q() {
        return this.f84445f;
    }

    public void r() {
        this.C = bs.b(this.C, 2);
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f84437x.get(cuVar.D()).b().b(cuVar, this);
    }

    public boolean s() {
        return bs.a(this.C, 2);
    }

    public byte[] t() {
        a(bw.c(this.f84446g));
        ByteBuffer byteBuffer = this.f84446g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("UMEnvelope(");
        sb2.append("version:");
        String str = this.f84440a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(", ");
        sb2.append("address:");
        String str2 = this.f84441b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("signature:");
        String str3 = this.f84442c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("serial_num:");
        sb2.append(this.f84443d);
        sb2.append(", ");
        sb2.append("ts_secs:");
        sb2.append(this.f84444e);
        sb2.append(", ");
        sb2.append("length:");
        sb2.append(this.f84445f);
        sb2.append(", ");
        sb2.append("entity:");
        ByteBuffer byteBuffer = this.f84446g;
        if (byteBuffer == null) {
            sb2.append("null");
        } else {
            bw.a(byteBuffer, sb2);
        }
        sb2.append(", ");
        sb2.append("guid:");
        String str4 = this.f84447h;
        if (str4 == null) {
            sb2.append("null");
        } else {
            sb2.append(str4);
        }
        sb2.append(", ");
        sb2.append("checksum:");
        String str5 = this.f84448i;
        if (str5 == null) {
            sb2.append("null");
        } else {
            sb2.append(str5);
        }
        if (F()) {
            sb2.append(", ");
            sb2.append("codex:");
            sb2.append(this.f84449j);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public ByteBuffer u() {
        return this.f84446g;
    }

    public void v() {
        this.f84446g = null;
    }

    public boolean w() {
        return this.f84446g != null;
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f84437x.get(cuVar.D()).b().a(cuVar, this);
    }

    public String x() {
        return this.f84447h;
    }

    public void y() {
        this.f84447h = null;
    }

    public boolean z() {
        return this.f84447h != null;
    }

    public enum e implements cc {
        VERSION(1, "version"),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");


        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final Map<String, e> f84460k = new HashMap();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final short f84462l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final String f84463m;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                f84460k.put(eVar.b(), eVar);
            }
        }

        e(short s10, String str) {
            this.f84462l = s10;
            this.f84463m = str;
        }

        public static e a(int i10) {
            switch (i10) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
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
            return this.f84463m;
        }

        public static e a(String str) {
            return f84460k.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f84462l;
        }
    }

    public bn a(String str) {
        this.f84440a = str;
        return this;
    }

    public bn b(String str) {
        this.f84441b = str;
        return this;
    }

    public bn c(String str) {
        this.f84442c = str;
        return this;
    }

    public void d(boolean z10) {
        this.C = bs.a(this.C, 0, z10);
    }

    public void e(boolean z10) {
        this.C = bs.a(this.C, 1, z10);
    }

    public void f(boolean z10) {
        this.C = bs.a(this.C, 2, z10);
    }

    public void g(boolean z10) {
        if (z10) {
            return;
        }
        this.f84446g = null;
    }

    public void h(boolean z10) {
        if (z10) {
            return;
        }
        this.f84447h = null;
    }

    public void i(boolean z10) {
        if (z10) {
            return;
        }
        this.f84448i = null;
    }

    public void j(boolean z10) {
        this.C = bs.a(this.C, 3, z10);
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f84440a = null;
    }

    public void b(boolean z10) {
        if (z10) {
            return;
        }
        this.f84441b = null;
    }

    public void c(boolean z10) {
        if (z10) {
            return;
        }
        this.f84442c = null;
    }

    public bn d(String str) {
        this.f84447h = str;
        return this;
    }

    public bn e(String str) {
        this.f84448i = str;
        return this;
    }

    public bn(String str, String str2, String str3, int i10, int i11, int i12, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f84440a = str;
        this.f84441b = str2;
        this.f84442c = str3;
        this.f84443d = i10;
        d(true);
        this.f84444e = i11;
        e(true);
        this.f84445f = i12;
        f(true);
        this.f84446g = byteBuffer;
        this.f84447h = str4;
        this.f84448i = str5;
    }

    public bn a(int i10) {
        this.f84443d = i10;
        d(true);
        return this;
    }

    public bn b(int i10) {
        this.f84444e = i10;
        e(true);
        return this;
    }

    public bn c(int i10) {
        this.f84445f = i10;
        f(true);
        return this;
    }

    public bn d(int i10) {
        this.f84449j = i10;
        j(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i10) {
        return e.a(i10);
    }

    public bn a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public bn a(ByteBuffer byteBuffer) {
        this.f84446g = byteBuffer;
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
            this.C = (byte) 0;
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public bn(bn bnVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = bnVar.C;
        if (bnVar.d()) {
            this.f84440a = bnVar.f84440a;
        }
        if (bnVar.g()) {
            this.f84441b = bnVar.f84441b;
        }
        if (bnVar.j()) {
            this.f84442c = bnVar.f84442c;
        }
        this.f84443d = bnVar.f84443d;
        this.f84444e = bnVar.f84444e;
        this.f84445f = bnVar.f84445f;
        if (bnVar.w()) {
            this.f84446g = bw.d(bnVar.f84446g);
        }
        if (bnVar.z()) {
            this.f84447h = bnVar.f84447h;
        }
        if (bnVar.C()) {
            this.f84448i = bnVar.f84448i;
        }
        this.f84449j = bnVar.f84449j;
    }
}
