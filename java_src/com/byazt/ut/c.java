package com.byazt.ut;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.byazt.dna.gu;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 834, 20})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.lk.uj f20966a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f20967c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.lk.ve f20970n;
    public final com.byazt.gh.c sp;
    public final com.byazt.lk.c uj;
    public final com.byazt.lk.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.rj.c f20972x;
    public String tt = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map<String, Object> f20969i = new HashMap();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Set<Function> f20968da = new HashSet();
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, com.byazt.dna.c> f20971t = new HashMap();

    public c() {
        com.byazt.lk.tt ttVar = new com.byazt.lk.tt();
        this.ve = ttVar;
        this.f20970n = new com.byazt.lk.ve(this);
        this.uj = new com.byazt.lk.c();
        this.sp = new com.byazt.gh.c(this);
        this.f20966a = new com.byazt.lk.uj();
        this.f20972x = new com.byazt.rj.c(ttVar, this);
    }

    public i a() {
        return this.f20967c;
    }

    public void c(i iVar) {
        this.f20967c = iVar;
        this.uj.c(iVar);
        this.f20970n.c(iVar);
        this.sp.c(iVar);
        this.f20966a.c(iVar);
    }

    public com.byazt.lk.uj n() {
        return this.f20966a;
    }

    public com.byazt.lk.tt sp() {
        return this.ve;
    }

    public boolean tt() {
        return this.sl;
    }

    public com.byazt.lk.ve uj() {
        return this.f20970n;
    }

    public com.byazt.lk.c ve() {
        return this.uj;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T> T c(String str, com.byazt.dna.c cVar, boolean z10) {
        Pair<Function, Object> pairC;
        Object obj;
        Object obj2;
        if (TextUtils.isEmpty(str)) {
            i iVar = this.f20967c;
            if (iVar != null) {
                iVar.c(str, new RuntimeException("null key"));
            }
            return null;
        }
        sl slVarC = this.ve.c(str);
        if (slVarC == null) {
            return null;
        }
        T t10 = (T) slVarC.c(cVar);
        if (t10 != null) {
            return t10;
        }
        if (slVarC.ve < 0) {
            return null;
        }
        boolean z11 = "m_d_s".equals(str) || "m_s".equals(str);
        if (z11 && (t10 = (T) this.f20969i.get(str)) != null) {
            return t10;
        }
        synchronized (slVarC) {
            if (!z11) {
                if (slVarC.f20979n && (pairC = this.f20966a.c(slVarC, cVar)) != null && (obj = pairC.second) != null && (t10 = (T) this.f20970n.c(slVarC, cVar, obj, n0.c.a(pairC.first), true)) != null) {
                    return t10;
                }
            }
            Pair<Function, Object> pairC2 = this.uj.c(slVarC, cVar, z10);
            T t11 = (pairC2 == null || (obj2 = pairC2.second) == null) ? t10 : (T) obj2;
            if (t11 != null) {
                if (z11) {
                    this.f20969i.put(str, t11);
                } else if (slVarC.f20979n) {
                    this.f20966a.c(slVarC, cVar, t11, n0.c.a(pairC2.first));
                }
                Object objC = this.f20970n.c(slVarC, cVar, t11, null, true);
                if (z10 && objC != null) {
                    t11 = (T) objC;
                }
            }
            return t11;
        }
    }

    public Object c(String str, com.byazt.dna.c cVar, Object obj, Function function) {
        return this.f20970n.c(this.ve.c(str), cVar, obj, function, true);
    }

    @Deprecated
    public void c(List<String> list) {
        this.sp.c(list);
    }

    public void c(uj ujVar, Function function) {
        if (function == ujVar) {
            i iVar = this.f20967c;
            if (iVar != null) {
                iVar.c(4, "regSelf", new RuntimeException());
                return;
            }
            return;
        }
        if (ujVar.getClass().getClassLoader() == function.getClass().getClassLoader()) {
            i iVar2 = this.f20967c;
            if (iVar2 != null) {
                iVar2.c(3, "two main service bridge registered", new RuntimeException());
                return;
            }
            return;
        }
        if (this.f20968da.contains(function)) {
            return;
        }
        boolean zBooleanValue = com.byazt.rj.c.c(function).booleanValue();
        if (zBooleanValue && this.sl) {
            i iVar3 = this.f20967c;
            if (iVar3 != null) {
                iVar3.c(1, "two main service bridge registered", (Throwable) null);
                return;
            }
            return;
        }
        this.sp.c(function, zBooleanValue);
        sl[] slVarArrC = this.ve.c();
        if (slVarArrC == null || slVarArrC.length == 0) {
            return;
        }
        com.byazt.hsa.c cVar = new com.byazt.hsa.c(this.f20967c);
        for (sl slVar : slVarArrC) {
            if (slVar.f20979n) {
                if (cVar.c(slVar, function) && !zBooleanValue) {
                    cVar.c(slVar, this, function);
                }
                if (zBooleanValue) {
                    synchronized (slVar) {
                        this.f20966a.c(slVar, this);
                    }
                } else {
                    continue;
                }
            }
        }
        if (this.sl) {
            Iterator<Function> it2 = this.f20968da.iterator();
            while (it2.hasNext()) {
                Function functionA = n0.c.a(it2.next());
                functionA.apply(function);
                function.apply(functionA);
            }
            this.f20968da.size();
        } else if (zBooleanValue) {
            function.apply(ujVar);
        }
        synchronized (this.f20968da) {
            this.f20968da.add(function);
        }
    }

    public Map<String, Object> c() {
        if (this.sl) {
            return this.f20969i;
        }
        return Collections.emptyMap();
    }

    public Object c(Object obj) {
        if (obj instanceof SparseArray) {
            return this.f20972x.c((SparseArray) obj);
        }
        return null;
    }

    public Object c(String str, com.byazt.dna.c cVar) {
        Function functionTt;
        synchronized (this.f20968da) {
            Iterator<Function> it2 = this.f20968da.iterator();
            Object obj = null;
            while (it2.hasNext()) {
                Function functionA = n0.c.a(it2.next());
                Object objC = com.byazt.rj.c.c(functionA, str, cVar);
                if (objC != null) {
                    if (b.a(objC) && (functionTt = com.byazt.rj.c.tt(n0.c.a(objC))) != null) {
                        objC = functionTt;
                    }
                    return c(str, cVar, objC, functionA);
                }
                obj = objC;
            }
            return obj;
        }
    }

    public static int c(Function function) {
        Object objApply = function.apply(0);
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    public void c(boolean z10) {
        this.sl = z10;
        if (z10) {
            uj.getService("m_d_s");
            uj.getService("m_s");
        }
    }

    public com.byazt.dna.c c(String str) {
        SparseArray sparseArray;
        com.byazt.dna.c cVarC;
        if (TextUtils.isEmpty(str)) {
            str = this.tt;
        } else if (TextUtils.isEmpty(this.tt)) {
            this.tt = str;
        }
        com.byazt.dna.c cVar = this.f20971t.get(str);
        if (cVar != null) {
            return cVar;
        }
        this.ve.c("context");
        gu guVar = (gu) uj.getService("m_d_s");
        Object data = guVar.getData(-2);
        if (data instanceof SparseArray) {
            sparseArray = (SparseArray) data;
        } else {
            sparseArray = new SparseArray();
            guVar.setData(-2, sparseArray);
        }
        Object obj = sparseArray.get(str.hashCode());
        if (obj instanceof com.byazt.dna.c) {
            cVarC = (com.byazt.dna.c) obj;
        } else {
            cVarC = this.uj.c(str);
        }
        this.f20971t.put(str, cVarC);
        return cVarC;
    }
}
