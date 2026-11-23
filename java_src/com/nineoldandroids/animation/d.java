package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends com.nineoldandroids.animation.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<com.nineoldandroids.animation.a> f76200c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, f> f76201d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<f> f76202e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<f> f76203f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76204g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f76205h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f76206i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f76207j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f76208k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private q f76209l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f76210m = -1;

    class a extends com.nineoldandroids.animation.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f76211a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f76212b;

        a(ArrayList arrayList) {
            this.f76212b = arrayList;
        }

        @Override // com.nineoldandroids.animation.c, com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            this.f76211a = true;
        }

        @Override // com.nineoldandroids.animation.c, com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            if (this.f76211a) {
                return;
            }
            int size = this.f76212b.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = (f) this.f76212b.get(i10);
                fVar.f76225b.r();
                d.this.f76200c.add(fVar.f76225b);
            }
        }
    }

    private class b implements com.nineoldandroids.animation.a.InterfaceC0985a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f76214a;

        b(d dVar) {
            this.f76214a = dVar;
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList;
            d dVar = d.this;
            if (dVar.f76206i || dVar.f76200c.size() != 0 || (arrayList = d.this.f76184b) == null) {
                return;
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                d.this.f76184b.get(i10).onAnimationCancel(this.f76214a);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            aVar.k(this);
            d.this.f76200c.remove(aVar);
            boolean z10 = true;
            ((f) this.f76214a.f76201d.get(aVar)).f76230g = true;
            if (d.this.f76206i) {
                return;
            }
            ArrayList arrayList = this.f76214a.f76203f;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (!((f) arrayList.get(i10)).f76230g) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList2 = d.this.f76184b;
                if (arrayList2 != null) {
                    ArrayList arrayList3 = (ArrayList) arrayList2.clone();
                    int size2 = arrayList3.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList3.get(i11)).onAnimationEnd(this.f76214a);
                    }
                }
                this.f76214a.f76207j = false;
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f f76216a;

        c(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f76201d.get(aVar);
            this.f76216a = fVar;
            if (fVar == null) {
                this.f76216a = new f(aVar);
                d.this.f76201d.put(aVar, this.f76216a);
                d.this.f76202e.add(this.f76216a);
            }
        }

        public c a(long j10) {
            q qVarV = q.V(0.0f, 1.0f);
            qVarV.l(j10);
            b(qVarV);
            return this;
        }

        public c b(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f76201d.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f76201d.put(aVar, fVar);
                d.this.f76202e.add(fVar);
            }
            this.f76216a.a(new C0986d(fVar, 1));
            return this;
        }

        public c c(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f76201d.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f76201d.put(aVar, fVar);
                d.this.f76202e.add(fVar);
            }
            fVar.a(new C0986d(this.f76216a, 1));
            return this;
        }

        public c d(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f76201d.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f76201d.put(aVar, fVar);
                d.this.f76202e.add(fVar);
            }
            fVar.a(new C0986d(this.f76216a, 0));
            return this;
        }
    }

    /* JADX INFO: renamed from: com.nineoldandroids.animation.d$d, reason: collision with other inner class name */
    private static class C0986d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f76218c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final int f76219d = 1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public f f76220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f76221b;

        public C0986d(f fVar, int i10) {
            this.f76220a = fVar;
            this.f76221b = i10;
        }
    }

    private static class e implements com.nineoldandroids.animation.a.InterfaceC0985a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f76222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f76223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f76224c;

        public e(d dVar, f fVar, int i10) {
            this.f76222a = dVar;
            this.f76223b = fVar;
            this.f76224c = i10;
        }

        private void a(com.nineoldandroids.animation.a aVar) {
            C0986d c0986d;
            if (this.f76222a.f76206i) {
                return;
            }
            int size = this.f76223b.f76227d.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    c0986d = null;
                    break;
                }
                c0986d = this.f76223b.f76227d.get(i10);
                if (c0986d.f76221b == this.f76224c && c0986d.f76220a.f76225b == aVar) {
                    aVar.k(this);
                    break;
                }
                i10++;
            }
            this.f76223b.f76227d.remove(c0986d);
            if (this.f76223b.f76227d.size() == 0) {
                this.f76223b.f76225b.r();
                this.f76222a.f76200c.add(this.f76223b.f76225b);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            if (this.f76224c == 1) {
                a(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
            if (this.f76224c == 0) {
                a(aVar);
            }
        }
    }

    private static class f implements Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.nineoldandroids.animation.a f76225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList<C0986d> f76226c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ArrayList<C0986d> f76227d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ArrayList<f> f76228e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList<f> f76229f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f76230g = false;

        public f(com.nineoldandroids.animation.a aVar) {
            this.f76225b = aVar;
        }

        public void a(C0986d c0986d) {
            if (this.f76226c == null) {
                this.f76226c = new ArrayList<>();
                this.f76228e = new ArrayList<>();
            }
            this.f76226c.add(c0986d);
            if (!this.f76228e.contains(c0986d.f76220a)) {
                this.f76228e.add(c0986d.f76220a);
            }
            f fVar = c0986d.f76220a;
            if (fVar.f76229f == null) {
                fVar.f76229f = new ArrayList<>();
            }
            fVar.f76229f.add(this);
        }

        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f clone() {
            try {
                f fVar = (f) super.clone();
                fVar.f76225b = this.f76225b.clone();
                return fVar;
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }
    }

    private void F() {
        if (!this.f76204g) {
            int size = this.f76202e.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = this.f76202e.get(i10);
                ArrayList<C0986d> arrayList = fVar.f76226c;
                if (arrayList != null && arrayList.size() > 0) {
                    int size2 = fVar.f76226c.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        C0986d c0986d = fVar.f76226c.get(i11);
                        if (fVar.f76228e == null) {
                            fVar.f76228e = new ArrayList<>();
                        }
                        if (!fVar.f76228e.contains(c0986d.f76220a)) {
                            fVar.f76228e.add(c0986d.f76220a);
                        }
                    }
                }
                fVar.f76230g = false;
            }
            return;
        }
        this.f76203f.clear();
        ArrayList arrayList2 = new ArrayList();
        int size3 = this.f76202e.size();
        for (int i12 = 0; i12 < size3; i12++) {
            f fVar2 = this.f76202e.get(i12);
            ArrayList<C0986d> arrayList3 = fVar2.f76226c;
            if (arrayList3 == null || arrayList3.size() == 0) {
                arrayList2.add(fVar2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        while (arrayList2.size() > 0) {
            int size4 = arrayList2.size();
            for (int i13 = 0; i13 < size4; i13++) {
                f fVar3 = (f) arrayList2.get(i13);
                this.f76203f.add(fVar3);
                ArrayList<f> arrayList5 = fVar3.f76229f;
                if (arrayList5 != null) {
                    int size5 = arrayList5.size();
                    for (int i14 = 0; i14 < size5; i14++) {
                        f fVar4 = fVar3.f76229f.get(i14);
                        fVar4.f76228e.remove(fVar3);
                        if (fVar4.f76228e.size() == 0) {
                            arrayList4.add(fVar4);
                        }
                    }
                }
            }
            arrayList2.clear();
            arrayList2.addAll(arrayList4);
            arrayList4.clear();
        }
        this.f76204g = false;
        if (this.f76203f.size() != this.f76202e.size()) {
            throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
        }
    }

    public void A(List<com.nineoldandroids.animation.a> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f76204g = true;
        int i10 = 0;
        if (list.size() == 1) {
            z(list.get(0));
            return;
        }
        while (i10 < list.size() - 1) {
            c cVarZ = z(list.get(i10));
            i10++;
            cVarZ.c(list.get(i10));
        }
    }

    public void B(com.nineoldandroids.animation.a... aVarArr) {
        if (aVarArr != null) {
            this.f76204g = true;
            int i10 = 0;
            if (aVarArr.length == 1) {
                z(aVarArr[0]);
                return;
            }
            while (i10 < aVarArr.length - 1) {
                c cVarZ = z(aVarArr[i10]);
                i10++;
                cVarZ.c(aVarArr[i10]);
            }
        }
    }

    public void C(Collection<com.nineoldandroids.animation.a> collection) {
        if (collection == null || collection.size() <= 0) {
            return;
        }
        this.f76204g = true;
        c cVarZ = null;
        for (com.nineoldandroids.animation.a aVar : collection) {
            if (cVarZ == null) {
                cVarZ = z(aVar);
            } else {
                cVarZ.d(aVar);
            }
        }
    }

    public void D(com.nineoldandroids.animation.a... aVarArr) {
        if (aVarArr != null) {
            this.f76204g = true;
            c cVarZ = z(aVarArr[0]);
            for (int i10 = 1; i10 < aVarArr.length; i10++) {
                cVarZ.d(aVarArr[i10]);
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public d l(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException("duration must be a value of zero or greater");
        }
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            it2.next().f76225b.l(j10);
        }
        this.f76210m = j10;
        return this;
    }

    @Override // com.nineoldandroids.animation.a
    public void cancel() {
        ArrayList arrayList;
        this.f76206i = true;
        if (i()) {
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList2 = this.f76184b;
            if (arrayList2 != null) {
                arrayList = (ArrayList) arrayList2.clone();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) it2.next()).onAnimationCancel(this);
                }
            } else {
                arrayList = null;
            }
            q qVar = this.f76209l;
            if (qVar != null && qVar.h()) {
                this.f76209l.cancel();
            } else if (this.f76203f.size() > 0) {
                Iterator<f> it3 = this.f76203f.iterator();
                while (it3.hasNext()) {
                    it3.next().f76225b.cancel();
                }
            }
            if (arrayList != null) {
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) it4.next()).onAnimationEnd(this);
                }
            }
            this.f76207j = false;
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void d() {
        this.f76206i = true;
        if (i()) {
            if (this.f76203f.size() != this.f76202e.size()) {
                F();
                for (f fVar : this.f76203f) {
                    if (this.f76205h == null) {
                        this.f76205h = new b(this);
                    }
                    fVar.f76225b.a(this.f76205h);
                }
            }
            q qVar = this.f76209l;
            if (qVar != null) {
                qVar.cancel();
            }
            if (this.f76203f.size() > 0) {
                Iterator<f> it2 = this.f76203f.iterator();
                while (it2.hasNext()) {
                    it2.next().f76225b.d();
                }
            }
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList = this.f76184b;
            if (arrayList != null) {
                Iterator it3 = ((ArrayList) arrayList.clone()).iterator();
                while (it3.hasNext()) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) it3.next()).onAnimationEnd(this);
                }
            }
            this.f76207j = false;
        }
    }

    @Override // com.nineoldandroids.animation.a
    public long e() {
        return this.f76210m;
    }

    @Override // com.nineoldandroids.animation.a
    public long g() {
        return this.f76208k;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean h() {
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f76225b.h()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean i() {
        return this.f76207j;
    }

    @Override // com.nineoldandroids.animation.a
    public void m(Interpolator interpolator) {
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            it2.next().f76225b.m(interpolator);
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void n(long j10) {
        this.f76208k = j10;
    }

    @Override // com.nineoldandroids.animation.a
    public void o(Object obj) {
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            com.nineoldandroids.animation.a aVar = it2.next().f76225b;
            if (aVar instanceof d) {
                ((d) aVar).o(obj);
            } else if (aVar instanceof l) {
                ((l) aVar).o(obj);
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void p() {
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            it2.next().f76225b.p();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void q() {
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            it2.next().f76225b.q();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void r() {
        this.f76206i = false;
        this.f76207j = true;
        F();
        int size = this.f76203f.size();
        for (int i10 = 0; i10 < size; i10++) {
            f fVar = this.f76203f.get(i10);
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayListF = fVar.f76225b.f();
            if (arrayListF != null && arrayListF.size() > 0) {
                for (com.nineoldandroids.animation.a.InterfaceC0985a interfaceC0985a : new ArrayList(arrayListF)) {
                    if ((interfaceC0985a instanceof e) || (interfaceC0985a instanceof b)) {
                        fVar.f76225b.k(interfaceC0985a);
                    }
                }
            }
        }
        ArrayList<f> arrayList = new ArrayList();
        for (int i11 = 0; i11 < size; i11++) {
            f fVar2 = this.f76203f.get(i11);
            if (this.f76205h == null) {
                this.f76205h = new b(this);
            }
            ArrayList<C0986d> arrayList2 = fVar2.f76226c;
            if (arrayList2 == null || arrayList2.size() == 0) {
                arrayList.add(fVar2);
            } else {
                int size2 = fVar2.f76226c.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    C0986d c0986d = fVar2.f76226c.get(i12);
                    c0986d.f76220a.f76225b.a(new e(this, fVar2, c0986d.f76221b));
                }
                fVar2.f76227d = (ArrayList) fVar2.f76226c.clone();
            }
            fVar2.f76225b.a(this.f76205h);
        }
        if (this.f76208k <= 0) {
            for (f fVar3 : arrayList) {
                fVar3.f76225b.r();
                this.f76200c.add(fVar3.f76225b);
            }
        } else {
            q qVarV = q.V(0.0f, 1.0f);
            this.f76209l = qVarV;
            qVarV.l(this.f76208k);
            this.f76209l.a(new a(arrayList));
            this.f76209l.r();
        }
        ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList3 = this.f76184b;
        if (arrayList3 != null) {
            ArrayList arrayList4 = (ArrayList) arrayList3.clone();
            int size3 = arrayList4.size();
            for (int i13 = 0; i13 < size3; i13++) {
                ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList4.get(i13)).onAnimationStart(this);
            }
        }
        if (this.f76202e.size() == 0 && this.f76208k == 0) {
            this.f76207j = false;
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList5 = this.f76184b;
            if (arrayList5 != null) {
                ArrayList arrayList6 = (ArrayList) arrayList5.clone();
                int size4 = arrayList6.size();
                for (int i14 = 0; i14 < size4; i14++) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList6.get(i14)).onAnimationEnd(this);
                }
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public d clone() {
        d dVar = (d) super.clone();
        dVar.f76204g = true;
        dVar.f76206i = false;
        dVar.f76207j = false;
        dVar.f76200c = new ArrayList<>();
        dVar.f76201d = new HashMap<>();
        dVar.f76202e = new ArrayList<>();
        dVar.f76203f = new ArrayList<>();
        HashMap map = new HashMap();
        for (f fVar : this.f76202e) {
            f fVarClone = fVar.clone();
            map.put(fVar, fVarClone);
            dVar.f76202e.add(fVarClone);
            dVar.f76201d.put(fVarClone.f76225b, fVarClone);
            ArrayList arrayList = null;
            fVarClone.f76226c = null;
            fVarClone.f76227d = null;
            fVarClone.f76229f = null;
            fVarClone.f76228e = null;
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayListF = fVarClone.f76225b.f();
            if (arrayListF != null) {
                for (com.nineoldandroids.animation.a.InterfaceC0985a interfaceC0985a : arrayListF) {
                    if (interfaceC0985a instanceof b) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(interfaceC0985a);
                    }
                }
                if (arrayList != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        arrayListF.remove((com.nineoldandroids.animation.a.InterfaceC0985a) it2.next());
                    }
                }
            }
        }
        for (f fVar2 : this.f76202e) {
            f fVar3 = (f) map.get(fVar2);
            ArrayList<C0986d> arrayList2 = fVar2.f76226c;
            if (arrayList2 != null) {
                for (C0986d c0986d : arrayList2) {
                    fVar3.a(new C0986d((f) map.get(c0986d.f76220a), c0986d.f76221b));
                }
            }
        }
        return dVar;
    }

    public ArrayList<com.nineoldandroids.animation.a> y() {
        ArrayList<com.nineoldandroids.animation.a> arrayList = new ArrayList<>();
        Iterator<f> it2 = this.f76202e.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f76225b);
        }
        return arrayList;
    }

    public c z(com.nineoldandroids.animation.a aVar) {
        if (aVar == null) {
            return null;
        }
        this.f76204g = true;
        return new c(aVar);
    }
}
