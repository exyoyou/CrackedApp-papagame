package com.nineoldandroids.animation;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends q {
    private static final boolean R = false;
    private static final Map<String, com.nineoldandroids.util.c> S;
    private Object O;
    private String P;
    private com.nineoldandroids.util.c Q;

    static {
        HashMap map = new HashMap();
        S = map;
        map.put("alpha", m.f76252a);
        map.put("pivotX", m.f76253b);
        map.put("pivotY", m.f76254c);
        map.put("translationX", m.f76255d);
        map.put("translationY", m.f76256e);
        map.put("rotation", m.f76257f);
        map.put("rotationX", m.f76258g);
        map.put("rotationY", m.f76259h);
        map.put("scaleX", m.f76260i);
        map.put("scaleY", m.f76261j);
        map.put("scrollX", m.f76262k);
        map.put("scrollY", m.f76263l);
        map.put("x", m.f76264m);
        map.put("y", m.f76265n);
    }

    public l() {
    }

    public static <T> l r0(T t10, com.nineoldandroids.util.c<T, Float> cVar, float... fArr) {
        l lVar = new l(t10, cVar);
        lVar.f0(fArr);
        return lVar;
    }

    public static l s0(Object obj, String str, float... fArr) {
        l lVar = new l(obj, str);
        lVar.f0(fArr);
        return lVar;
    }

    public static <T> l t0(T t10, com.nineoldandroids.util.c<T, Integer> cVar, int... iArr) {
        l lVar = new l(t10, cVar);
        lVar.h0(iArr);
        return lVar;
    }

    public static l u0(Object obj, String str, int... iArr) {
        l lVar = new l(obj, str);
        lVar.h0(iArr);
        return lVar;
    }

    public static <T, V> l v0(T t10, com.nineoldandroids.util.c<T, V> cVar, p<V> pVar, V... vArr) {
        l lVar = new l(t10, cVar);
        lVar.i0(vArr);
        lVar.e0(pVar);
        return lVar;
    }

    public static l w0(Object obj, String str, p pVar, Object... objArr) {
        l lVar = new l(obj, str);
        lVar.i0(objArr);
        lVar.e0(pVar);
        return lVar;
    }

    public static l x0(Object obj, n... nVarArr) {
        l lVar = new l();
        lVar.O = obj;
        lVar.l0(nVarArr);
        return lVar;
    }

    public void A0(String str) {
        n[] nVarArr = this.f76311t;
        if (nVarArr != null) {
            n nVar = nVarArr[0];
            String strG = nVar.g();
            nVar.x(str);
            this.f76312u.remove(strG);
            this.f76312u.put(str, nVar);
        }
        this.P = str;
        this.f76304m = false;
    }

    @Override // com.nineoldandroids.animation.q
    void E(float f10) {
        super.E(f10);
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].q(this.O);
        }
    }

    @Override // com.nineoldandroids.animation.q
    void U() {
        if (this.f76304m) {
            return;
        }
        if (this.Q == null && com.nineoldandroids.view.animation.a.f76321r && (this.O instanceof View)) {
            Map<String, com.nineoldandroids.util.c> map = S;
            if (map.containsKey(this.P)) {
                z0(map.get(this.P));
            }
        }
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].B(this.O);
        }
        super.U();
    }

    @Override // com.nineoldandroids.animation.q
    public void f0(float... fArr) {
        n[] nVarArr = this.f76311t;
        if (nVarArr != null && nVarArr.length != 0) {
            super.f0(fArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.Q;
        if (cVar != null) {
            l0(n.i(cVar, fArr));
        } else {
            l0(n.j(this.P, fArr));
        }
    }

    @Override // com.nineoldandroids.animation.q
    public void h0(int... iArr) {
        n[] nVarArr = this.f76311t;
        if (nVarArr != null && nVarArr.length != 0) {
            super.h0(iArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.Q;
        if (cVar != null) {
            l0(n.k(cVar, iArr));
        } else {
            l0(n.l(this.P, iArr));
        }
    }

    @Override // com.nineoldandroids.animation.q
    public void i0(Object... objArr) {
        n[] nVarArr = this.f76311t;
        if (nVarArr != null && nVarArr.length != 0) {
            super.i0(objArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.Q;
        if (cVar != null) {
            l0(n.o(cVar, null, objArr));
        } else {
            l0(n.p(this.P, null, objArr));
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void o(Object obj) {
        Object obj2 = this.O;
        if (obj2 != obj) {
            this.O = obj;
            if (obj2 == null || obj == null || obj2.getClass() != obj.getClass()) {
                this.f76304m = false;
            }
        }
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public l clone() {
        return (l) super.clone();
    }

    @Override // com.nineoldandroids.animation.a
    public void p() {
        U();
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].y(this.O);
        }
    }

    public String p0() {
        return this.P;
    }

    @Override // com.nineoldandroids.animation.a
    public void q() {
        U();
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].D(this.O);
        }
    }

    public Object q0() {
        return this.O;
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    public void r() {
        super.r();
    }

    @Override // com.nineoldandroids.animation.q
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.O;
        if (this.f76311t != null) {
            for (int i10 = 0; i10 < this.f76311t.length; i10++) {
                str = str + "\n    " + this.f76311t[i10].toString();
            }
        }
        return str;
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public l l(long j10) {
        super.l(j10);
        return this;
    }

    public void z0(com.nineoldandroids.util.c cVar) {
        n[] nVarArr = this.f76311t;
        if (nVarArr != null) {
            n nVar = nVarArr[0];
            String strG = nVar.g();
            nVar.w(cVar);
            this.f76312u.remove(strG);
            this.f76312u.put(this.P, nVar);
        }
        if (this.Q != null) {
            this.P = cVar.b();
        }
        this.Q = cVar;
        this.f76304m = false;
    }

    private l(Object obj, String str) {
        this.O = obj;
        A0(str);
    }

    private <T> l(T t10, com.nineoldandroids.util.c<T, ?> cVar) {
        this.O = t10;
        z0(cVar);
    }
}
