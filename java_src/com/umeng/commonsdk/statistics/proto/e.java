package com.umeng.commonsdk.statistics.proto;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.umeng.analytics.pro.bs;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.ch;
import com.umeng.analytics.pro.ci;
import com.umeng.analytics.pro.co;
import com.umeng.analytics.pro.cp;
import com.umeng.analytics.pro.cu;
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
public class e implements bv<e, EnumC1065e>, Serializable, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<EnumC1065e, ch> f85522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f85523e = 7501688097813630241L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final cz f85524f = new cz("ImprintValue");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cp f85525g = new cp(HmInputMappingContent.FIELD_VALUE, (byte) 11, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cp f85526h = new cp("ts", (byte) 10, 2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final cp f85527i = new cp("guid", (byte) 11, 3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f85528j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f85529k = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f85530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f85531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f85532c;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte f85533l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private EnumC1065e[] f85534m;

    private static class a extends de<e> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, e eVar) throws cb {
            cuVar.j();
            while (true) {
                cp cpVarL = cuVar.l();
                byte b10 = cpVarL.f84586b;
                if (b10 == 0) {
                    cuVar.k();
                    eVar.k();
                    return;
                }
                short s10 = cpVarL.f84587c;
                if (s10 != 1) {
                    if (s10 != 2) {
                        if (s10 != 3) {
                            cx.a(cuVar, b10);
                        } else if (b10 == 11) {
                            eVar.f85532c = cuVar.z();
                            eVar.c(true);
                        } else {
                            cx.a(cuVar, b10);
                        }
                    } else if (b10 == 10) {
                        eVar.f85531b = cuVar.x();
                        eVar.b(true);
                    } else {
                        cx.a(cuVar, b10);
                    }
                } else if (b10 == 11) {
                    eVar.f85530a = cuVar.z();
                    eVar.a(true);
                } else {
                    cx.a(cuVar, b10);
                }
                cuVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, e eVar) throws cb {
            eVar.k();
            cuVar.a(e.f85524f);
            if (eVar.f85530a != null && eVar.d()) {
                cuVar.a(e.f85525g);
                cuVar.a(eVar.f85530a);
                cuVar.c();
            }
            if (eVar.g()) {
                cuVar.a(e.f85526h);
                cuVar.a(eVar.f85531b);
                cuVar.c();
            }
            if (eVar.f85532c != null && eVar.j()) {
                cuVar.a(e.f85527i);
                cuVar.a(eVar.f85532c);
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

    private static class c extends df<e> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, e eVar) throws cb {
            da daVar = (da) cuVar;
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            if (eVar.g()) {
                bitSet.set(1);
            }
            if (eVar.j()) {
                bitSet.set(2);
            }
            daVar.a(bitSet, 3);
            if (eVar.d()) {
                daVar.a(eVar.f85530a);
            }
            if (eVar.g()) {
                daVar.a(eVar.f85531b);
            }
            if (eVar.j()) {
                daVar.a(eVar.f85532c);
            }
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, e eVar) throws cb {
            da daVar = (da) cuVar;
            BitSet bitSetB = daVar.b(3);
            if (bitSetB.get(0)) {
                eVar.f85530a = daVar.z();
                eVar.a(true);
            }
            if (bitSetB.get(1)) {
                eVar.f85531b = daVar.x();
                eVar.b(true);
            }
            if (bitSetB.get(2)) {
                eVar.f85532c = daVar.z();
                eVar.c(true);
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
        f85528j = map;
        map.put(de.class, new b());
        map.put(df.class, new d());
        EnumMap enumMap = new EnumMap(EnumC1065e.class);
        enumMap.put(EnumC1065e.VALUE, new ch(HmInputMappingContent.FIELD_VALUE, (byte) 2, new ci((byte) 11)));
        enumMap.put(EnumC1065e.TS, new ch("ts", (byte) 2, new ci((byte) 10)));
        enumMap.put(EnumC1065e.GUID, new ch("guid", (byte) 2, new ci((byte) 11)));
        Map<EnumC1065e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f85522d = mapUnmodifiableMap;
        ch.a(e.class, mapUnmodifiableMap);
    }

    public e() {
        this.f85533l = (byte) 0;
        this.f85534m = new EnumC1065e[]{EnumC1065e.VALUE, EnumC1065e.TS, EnumC1065e.GUID};
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e deepCopy() {
        return new e(this);
    }

    public String b() {
        return this.f85530a;
    }

    public void c() {
        this.f85530a = null;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f85530a = null;
        b(false);
        this.f85531b = 0L;
        this.f85532c = null;
    }

    public boolean d() {
        return this.f85530a != null;
    }

    public long e() {
        return this.f85531b;
    }

    public void f() {
        this.f85533l = bs.b(this.f85533l, 0);
    }

    public boolean g() {
        return bs.a(this.f85533l, 0);
    }

    public String h() {
        return this.f85532c;
    }

    public void i() {
        this.f85532c = null;
    }

    public boolean j() {
        return this.f85532c != null;
    }

    public void k() throws cb {
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f85528j.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("ImprintValue(");
        if (d()) {
            sb2.append("value:");
            String str = this.f85530a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            sb2.append(", ");
        }
        sb2.append("ts:");
        sb2.append(this.f85531b);
        sb2.append(", ");
        sb2.append("guid:");
        String str2 = this.f85532c;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f85528j.get(cuVar.D()).b().a(cuVar, this);
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.e$e, reason: collision with other inner class name */
    public enum EnumC1065e implements cc {
        VALUE(1, HmInputMappingContent.FIELD_VALUE),
        TS(2, "ts"),
        GUID(3, "guid");


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Map<String, EnumC1065e> f85538d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final short f85540e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f85541f;

        static {
            for (EnumC1065e enumC1065e : EnumSet.allOf(EnumC1065e.class)) {
                f85538d.put(enumC1065e.b(), enumC1065e);
            }
        }

        EnumC1065e(short s10, String str) {
            this.f85540e = s10;
            this.f85541f = str;
        }

        public static EnumC1065e a(int i10) {
            if (i10 == 1) {
                return VALUE;
            }
            if (i10 == 2) {
                return TS;
            }
            if (i10 != 3) {
                return null;
            }
            return GUID;
        }

        public static EnumC1065e b(int i10) {
            EnumC1065e enumC1065eA = a(i10);
            if (enumC1065eA != null) {
                return enumC1065eA;
            }
            throw new IllegalArgumentException("Field " + i10 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.cc
        public String b() {
            return this.f85541f;
        }

        public static EnumC1065e a(String str) {
            return f85538d.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f85540e;
        }
    }

    public e a(String str) {
        this.f85530a = str;
        return this;
    }

    public void b(boolean z10) {
        this.f85533l = bs.a(this.f85533l, 0, z10);
    }

    public void c(boolean z10) {
        if (z10) {
            return;
        }
        this.f85532c = null;
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f85530a = null;
    }

    public e b(String str) {
        this.f85532c = str;
        return this;
    }

    public e(long j10, String str) {
        this();
        this.f85531b = j10;
        b(true);
        this.f85532c = str;
    }

    public e a(long j10) {
        this.f85531b = j10;
        b(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public EnumC1065e fieldForId(int i10) {
        return EnumC1065e.a(i10);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new co(new dg(objectOutputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public e(e eVar) {
        this.f85533l = (byte) 0;
        this.f85534m = new EnumC1065e[]{EnumC1065e.VALUE, EnumC1065e.TS, EnumC1065e.GUID};
        this.f85533l = eVar.f85533l;
        if (eVar.d()) {
            this.f85530a = eVar.f85530a;
        }
        this.f85531b = eVar.f85531b;
        if (eVar.j()) {
            this.f85532c = eVar.f85532c;
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f85533l = (byte) 0;
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }
}
