package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.ch;
import com.umeng.analytics.pro.ci;
import com.umeng.analytics.pro.cj;
import com.umeng.analytics.pro.ck;
import com.umeng.analytics.pro.cm;
import com.umeng.analytics.pro.co;
import com.umeng.analytics.pro.cp;
import com.umeng.analytics.pro.cq;
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
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class c implements bv<c, e>, Serializable, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<e, ch> f85485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f85486e = -5764118265293965743L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final cz f85487f = new cz("IdTracking");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cp f85488g = new cp("snapshots", (byte) 13, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cp f85489h = new cp("journals", (byte) 15, 2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final cp f85490i = new cp("checksum", (byte) 11, 3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f85491j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.b> f85492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<com.umeng.commonsdk.statistics.proto.a> f85493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f85494c;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e[] f85495k;

    private static class a extends de<c> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, c cVar) throws cb {
            cuVar.j();
            while (true) {
                cp cpVarL = cuVar.l();
                byte b10 = cpVarL.f84586b;
                if (b10 == 0) {
                    cuVar.k();
                    cVar.n();
                    return;
                }
                short s10 = cpVarL.f84587c;
                int i10 = 0;
                if (s10 != 1) {
                    if (s10 != 2) {
                        if (s10 != 3) {
                            cx.a(cuVar, b10);
                        } else if (b10 == 11) {
                            cVar.f85494c = cuVar.z();
                            cVar.c(true);
                        } else {
                            cx.a(cuVar, b10);
                        }
                    } else if (b10 == 15) {
                        cq cqVarP = cuVar.p();
                        cVar.f85493b = new ArrayList(cqVarP.f84589b);
                        while (i10 < cqVarP.f84589b) {
                            com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                            aVar.read(cuVar);
                            cVar.f85493b.add(aVar);
                            i10++;
                        }
                        cuVar.q();
                        cVar.b(true);
                    } else {
                        cx.a(cuVar, b10);
                    }
                } else if (b10 == 13) {
                    cr crVarN = cuVar.n();
                    cVar.f85492a = new HashMap(crVarN.f84592c * 2);
                    while (i10 < crVarN.f84592c) {
                        String strZ = cuVar.z();
                        com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                        bVar.read(cuVar);
                        cVar.f85492a.put(strZ, bVar);
                        i10++;
                    }
                    cuVar.o();
                    cVar.a(true);
                } else {
                    cx.a(cuVar, b10);
                }
                cuVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, c cVar) throws cb {
            cVar.n();
            cuVar.a(c.f85487f);
            if (cVar.f85492a != null) {
                cuVar.a(c.f85488g);
                cuVar.a(new cr((byte) 11, (byte) 12, cVar.f85492a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f85492a.entrySet()) {
                    cuVar.a(entry.getKey());
                    entry.getValue().write(cuVar);
                }
                cuVar.e();
                cuVar.c();
            }
            if (cVar.f85493b != null && cVar.j()) {
                cuVar.a(c.f85489h);
                cuVar.a(new cq((byte) 12, cVar.f85493b.size()));
                Iterator<com.umeng.commonsdk.statistics.proto.a> it2 = cVar.f85493b.iterator();
                while (it2.hasNext()) {
                    it2.next().write(cuVar);
                }
                cuVar.f();
                cuVar.c();
            }
            if (cVar.f85494c != null && cVar.m()) {
                cuVar.a(c.f85490i);
                cuVar.a(cVar.f85494c);
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

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.c$c, reason: collision with other inner class name */
    private static class C1063c extends df<c> {
        private C1063c() {
        }

        @Override // com.umeng.analytics.pro.dc
        public void a(cu cuVar, c cVar) throws cb {
            da daVar = (da) cuVar;
            daVar.a(cVar.f85492a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f85492a.entrySet()) {
                daVar.a(entry.getKey());
                entry.getValue().write(daVar);
            }
            BitSet bitSet = new BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            daVar.a(bitSet, 2);
            if (cVar.j()) {
                daVar.a(cVar.f85493b.size());
                Iterator<com.umeng.commonsdk.statistics.proto.a> it2 = cVar.f85493b.iterator();
                while (it2.hasNext()) {
                    it2.next().write(daVar);
                }
            }
            if (cVar.m()) {
                daVar.a(cVar.f85494c);
            }
        }

        @Override // com.umeng.analytics.pro.dc
        public void b(cu cuVar, c cVar) throws cb {
            da daVar = (da) cuVar;
            cr crVar = new cr((byte) 11, (byte) 12, daVar.w());
            cVar.f85492a = new HashMap(crVar.f84592c * 2);
            for (int i10 = 0; i10 < crVar.f84592c; i10++) {
                String strZ = daVar.z();
                com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                bVar.read(daVar);
                cVar.f85492a.put(strZ, bVar);
            }
            cVar.a(true);
            BitSet bitSetB = daVar.b(2);
            if (bitSetB.get(0)) {
                cq cqVar = new cq((byte) 12, daVar.w());
                cVar.f85493b = new ArrayList(cqVar.f84589b);
                for (int i11 = 0; i11 < cqVar.f84589b; i11++) {
                    com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                    aVar.read(daVar);
                    cVar.f85493b.add(aVar);
                }
                cVar.b(true);
            }
            if (bitSetB.get(1)) {
                cVar.f85494c = daVar.z();
                cVar.c(true);
            }
        }
    }

    private static class d implements dd {
        private d() {
        }

        @Override // com.umeng.analytics.pro.dd
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1063c b() {
            return new C1063c();
        }
    }

    static {
        HashMap map = new HashMap();
        f85491j = map;
        map.put(de.class, new b());
        map.put(df.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.SNAPSHOTS, new ch("snapshots", (byte) 1, new ck((byte) 13, new ci((byte) 11), new cm((byte) 12, com.umeng.commonsdk.statistics.proto.b.class))));
        enumMap.put(e.JOURNALS, new ch("journals", (byte) 2, new cj((byte) 15, new cm((byte) 12, com.umeng.commonsdk.statistics.proto.a.class))));
        enumMap.put(e.CHECKSUM, new ch("checksum", (byte) 2, new ci((byte) 11)));
        Map<e, ch> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f85485d = mapUnmodifiableMap;
        ch.a(c.class, mapUnmodifiableMap);
    }

    public c() {
        this.f85495k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    @Override // com.umeng.analytics.pro.bv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c deepCopy() {
        return new c(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f85492a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.b> c() {
        return this.f85492a;
    }

    @Override // com.umeng.analytics.pro.bv
    public void clear() {
        this.f85492a = null;
        this.f85493b = null;
        this.f85494c = null;
    }

    public void d() {
        this.f85492a = null;
    }

    public boolean e() {
        return this.f85492a != null;
    }

    public int f() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f85493b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Iterator<com.umeng.commonsdk.statistics.proto.a> g() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f85493b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public List<com.umeng.commonsdk.statistics.proto.a> h() {
        return this.f85493b;
    }

    public void i() {
        this.f85493b = null;
    }

    public boolean j() {
        return this.f85493b != null;
    }

    public String k() {
        return this.f85494c;
    }

    public void l() {
        this.f85494c = null;
    }

    public boolean m() {
        return this.f85494c != null;
    }

    public void n() throws cb {
        if (this.f85492a != null) {
            return;
        }
        throw new cv("Required field 'snapshots' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f85491j.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("IdTracking(");
        sb2.append("snapshots:");
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f85492a;
        if (map == null) {
            sb2.append("null");
        } else {
            sb2.append(map);
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("journals:");
            List<com.umeng.commonsdk.statistics.proto.a> list = this.f85493b;
            if (list == null) {
                sb2.append("null");
            } else {
                sb2.append(list);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("checksum:");
            String str = this.f85494c;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f85491j.get(cuVar.D()).b().a(cuVar, this);
    }

    public enum e implements cc {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f85499d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final short f85501e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f85502f;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                f85499d.put(eVar.b(), eVar);
            }
        }

        e(short s10, String str) {
            this.f85501e = s10;
            this.f85502f = str;
        }

        public static e a(int i10) {
            if (i10 == 1) {
                return SNAPSHOTS;
            }
            if (i10 == 2) {
                return JOURNALS;
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
            return this.f85502f;
        }

        public static e a(String str) {
            return f85499d.get(str);
        }

        @Override // com.umeng.analytics.pro.cc
        public short a() {
            return this.f85501e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.b bVar) {
        if (this.f85492a == null) {
            this.f85492a = new HashMap();
        }
        this.f85492a.put(str, bVar);
    }

    public void b(boolean z10) {
        if (z10) {
            return;
        }
        this.f85493b = null;
    }

    public void c(boolean z10) {
        if (z10) {
            return;
        }
        this.f85494c = null;
    }

    public c(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this();
        this.f85492a = map;
    }

    public c(c cVar) {
        this.f85495k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (cVar.e()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f85492a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.b(entry.getValue()));
            }
            this.f85492a = map;
        }
        if (cVar.j()) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.umeng.commonsdk.statistics.proto.a> it2 = cVar.f85493b.iterator();
            while (it2.hasNext()) {
                arrayList.add(new com.umeng.commonsdk.statistics.proto.a(it2.next()));
            }
            this.f85493b = arrayList;
        }
        if (cVar.m()) {
            this.f85494c = cVar.f85494c;
        }
    }

    public c a(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this.f85492a = map;
        return this;
    }

    public void a(boolean z10) {
        if (z10) {
            return;
        }
        this.f85492a = null;
    }

    public void a(com.umeng.commonsdk.statistics.proto.a aVar) {
        if (this.f85493b == null) {
            this.f85493b = new ArrayList();
        }
        this.f85493b.add(aVar);
    }

    public c a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f85493b = list;
        return this;
    }

    public c a(String str) {
        this.f85494c = str;
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

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new co(new dg(objectInputStream)));
        } catch (cb e10) {
            throw new IOException(e10.getMessage());
        }
    }
}
