package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<InterfaceC0985a> f76184b = null;

    /* JADX INFO: renamed from: com.nineoldandroids.animation.a$a, reason: collision with other inner class name */
    public interface InterfaceC0985a {
        void onAnimationCancel(a aVar);

        void onAnimationEnd(a aVar);

        void onAnimationRepeat(a aVar);

        void onAnimationStart(a aVar);
    }

    public void a(InterfaceC0985a interfaceC0985a) {
        if (this.f76184b == null) {
            this.f76184b = new ArrayList<>();
        }
        this.f76184b.add(interfaceC0985a);
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            ArrayList<InterfaceC0985a> arrayList = this.f76184b;
            if (arrayList != null) {
                aVar.f76184b = new ArrayList<>();
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    aVar.f76184b.add(arrayList.get(i10));
                }
            }
            return aVar;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void cancel() {
    }

    public void d() {
    }

    public abstract long e();

    public ArrayList<InterfaceC0985a> f() {
        return this.f76184b;
    }

    public abstract long g();

    public abstract boolean h();

    public boolean i() {
        return h();
    }

    public void j() {
        ArrayList<InterfaceC0985a> arrayList = this.f76184b;
        if (arrayList != null) {
            arrayList.clear();
            this.f76184b = null;
        }
    }

    public void k(InterfaceC0985a interfaceC0985a) {
        ArrayList<InterfaceC0985a> arrayList = this.f76184b;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(interfaceC0985a);
        if (this.f76184b.size() == 0) {
            this.f76184b = null;
        }
    }

    public abstract a l(long j10);

    public abstract void m(Interpolator interpolator);

    public abstract void n(long j10);

    public void o(Object obj) {
    }

    public void p() {
    }

    public void q() {
    }

    public void r() {
    }
}
