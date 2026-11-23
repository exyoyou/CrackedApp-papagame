package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.cf;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public abstract class cf<T extends cf<?, ?>, F extends cc> implements bv<T, F> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<Class<? extends dc>, dd> f84520c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object f84521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected F f84522b;

    private static class a extends de<cf> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, cf cfVar) throws cb {
            cfVar.f84522b = null;
            cfVar.f84521a = null;
            cuVar.j();
            cp cpVarL = cuVar.l();
            Object objA = cfVar.a(cuVar, cpVarL);
            cfVar.f84521a = objA;
            if (objA != null) {
                cfVar.f84522b = (F) cfVar.a(cpVarL.f84587c);
            }
            cuVar.m();
            cuVar.l();
            cuVar.k();
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, cf cfVar) throws cb {
            if (cfVar.a() == null || cfVar.b() == null) {
                throw new cv("Cannot write a TUnion with no set value!");
            }
            cuVar.a(cfVar.d());
            cuVar.a(cfVar.c(cfVar.f84522b));
            cfVar.a(cuVar);
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
        public a b() {
            return new a();
        }
    }

    private static class c extends df<cf> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(cu cuVar, cf cfVar) throws cb {
            cfVar.f84522b = null;
            cfVar.f84521a = null;
            short sV = cuVar.v();
            Object objA = cfVar.a(cuVar, sV);
            cfVar.f84521a = objA;
            if (objA != null) {
                cfVar.f84522b = (F) cfVar.a(sV);
            }
        }

        @Override // com.umeng.analytics.pro.dc
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(cu cuVar, cf cfVar) throws cb {
            if (cfVar.a() == null || cfVar.b() == null) {
                throw new cv("Cannot write a TUnion with no set value!");
            }
            cuVar.a(cfVar.f84522b.a());
            cfVar.b(cuVar);
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
        f84520c = map;
        map.put(de.class, new b());
        map.put(df.class, new d());
    }

    protected cf() {
        this.f84522b = null;
        this.f84521a = null;
    }

    private static Object a(Object obj) {
        if (obj instanceof bv) {
            return ((bv) obj).deepCopy();
        }
        if (obj instanceof ByteBuffer) {
            return bw.d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return a((List) obj);
        }
        if (obj instanceof Set) {
            return a((Set) obj);
        }
        return obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    protected abstract F a(short s10);

    protected abstract Object a(cu cuVar, cp cpVar) throws cb;

    protected abstract Object a(cu cuVar, short s10) throws cb;

    protected abstract void a(cu cuVar) throws cb;

    public Object b() {
        return this.f84521a;
    }

    protected abstract void b(F f10, Object obj) throws ClassCastException;

    protected abstract void b(cu cuVar) throws cb;

    protected abstract cp c(F f10);

    public boolean c() {
        return this.f84522b != null;
    }

    @Override // com.umeng.analytics.pro.bv
    public final void clear() {
        this.f84522b = null;
        this.f84521a = null;
    }

    protected abstract cz d();

    @Override // com.umeng.analytics.pro.bv
    public void read(cu cuVar) throws cb {
        f84520c.get(cuVar.D()).b().b(cuVar, this);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SimpleComparison.LESS_THAN_OPERATION);
        sb2.append(getClass().getSimpleName());
        sb2.append(" ");
        if (a() != null) {
            Object objB = b();
            sb2.append(c(a()).f84585a);
            sb2.append(":");
            if (objB instanceof ByteBuffer) {
                bw.a((ByteBuffer) objB, sb2);
            } else {
                sb2.append(objB.toString());
            }
        }
        sb2.append(SimpleComparison.GREATER_THAN_OPERATION);
        return sb2.toString();
    }

    @Override // com.umeng.analytics.pro.bv
    public void write(cu cuVar) throws cb {
        f84520c.get(cuVar.D()).b().a(cuVar, this);
    }

    public boolean b(F f10) {
        return this.f84522b == f10;
    }

    public boolean b(int i10) {
        return b(a((short) i10));
    }

    protected cf(F f10, Object obj) {
        a(f10, obj);
    }

    protected cf(cf<T, F> cfVar) {
        if (cfVar.getClass().equals(getClass())) {
            this.f84522b = cfVar.f84522b;
            this.f84521a = a(cfVar.f84521a);
            return;
        }
        throw new ClassCastException();
    }

    private static Map a(Map<Object, Object> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            map2.put(a(entry.getKey()), a(entry.getValue()));
        }
        return map2;
    }

    private static Set a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            hashSet.add(a(it2.next()));
        }
        return hashSet;
    }

    private static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(a(it2.next()));
        }
        return arrayList;
    }

    public F a() {
        return this.f84522b;
    }

    public Object a(F f10) {
        if (f10 == this.f84522b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f10 + " because union's set field is " + this.f84522b);
    }

    public Object a(int i10) {
        return a(a((short) i10));
    }

    public void a(F f10, Object obj) {
        b(f10, obj);
        this.f84522b = f10;
        this.f84521a = obj;
    }

    public void a(int i10, Object obj) {
        a(a((short) i10), obj);
    }
}
