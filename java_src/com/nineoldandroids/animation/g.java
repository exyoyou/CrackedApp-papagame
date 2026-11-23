package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class g extends k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f76231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f76232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f76233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f76234j;

    public g(j.a... aVarArr) {
        super(aVarArr);
        this.f76234j = true;
    }

    @Override // com.nineoldandroids.animation.k
    public Object b(float f10) {
        return Float.valueOf(i(f10));
    }

    @Override // com.nineoldandroids.animation.k
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g clone() {
        ArrayList<j> arrayList = this.f76250e;
        int size = arrayList.size();
        j.a[] aVarArr = new j.a[size];
        for (int i10 = 0; i10 < size; i10++) {
            aVarArr[i10] = (j.a) arrayList.get(i10).clone();
        }
        return new g(aVarArr);
    }

    public float i(float f10) {
        int i10 = this.f76246a;
        if (i10 == 2) {
            if (this.f76234j) {
                this.f76234j = false;
                this.f76231g = ((j.a) this.f76250e.get(0)).q();
                float fQ = ((j.a) this.f76250e.get(1)).q();
                this.f76232h = fQ;
                this.f76233i = fQ - this.f76231g;
            }
            Interpolator interpolator = this.f76249d;
            if (interpolator != null) {
                f10 = interpolator.getInterpolation(f10);
            }
            p pVar = this.f76251f;
            return pVar == null ? this.f76231g + (f10 * this.f76233i) : ((Number) pVar.evaluate(f10, Float.valueOf(this.f76231g), Float.valueOf(this.f76232h))).floatValue();
        }
        if (f10 <= 0.0f) {
            j.a aVar = (j.a) this.f76250e.get(0);
            j.a aVar2 = (j.a) this.f76250e.get(1);
            float fQ2 = aVar.q();
            float fQ3 = aVar2.q();
            float fB = aVar.b();
            float fB2 = aVar2.b();
            Interpolator interpolatorD = aVar2.d();
            if (interpolatorD != null) {
                f10 = interpolatorD.getInterpolation(f10);
            }
            float f11 = (f10 - fB) / (fB2 - fB);
            p pVar2 = this.f76251f;
            return pVar2 == null ? fQ2 + (f11 * (fQ3 - fQ2)) : ((Number) pVar2.evaluate(f11, Float.valueOf(fQ2), Float.valueOf(fQ3))).floatValue();
        }
        if (f10 >= 1.0f) {
            j.a aVar3 = (j.a) this.f76250e.get(i10 - 2);
            j.a aVar4 = (j.a) this.f76250e.get(this.f76246a - 1);
            float fQ4 = aVar3.q();
            float fQ5 = aVar4.q();
            float fB3 = aVar3.b();
            float fB4 = aVar4.b();
            Interpolator interpolatorD2 = aVar4.d();
            if (interpolatorD2 != null) {
                f10 = interpolatorD2.getInterpolation(f10);
            }
            float f12 = (f10 - fB3) / (fB4 - fB3);
            p pVar3 = this.f76251f;
            return pVar3 == null ? fQ4 + (f12 * (fQ5 - fQ4)) : ((Number) pVar3.evaluate(f12, Float.valueOf(fQ4), Float.valueOf(fQ5))).floatValue();
        }
        j.a aVar5 = (j.a) this.f76250e.get(0);
        int i11 = 1;
        while (true) {
            int i12 = this.f76246a;
            if (i11 >= i12) {
                return ((Number) this.f76250e.get(i12 - 1).e()).floatValue();
            }
            j.a aVar6 = (j.a) this.f76250e.get(i11);
            if (f10 < aVar6.b()) {
                Interpolator interpolatorD3 = aVar6.d();
                if (interpolatorD3 != null) {
                    f10 = interpolatorD3.getInterpolation(f10);
                }
                float fB5 = (f10 - aVar5.b()) / (aVar6.b() - aVar5.b());
                float fQ6 = aVar5.q();
                float fQ7 = aVar6.q();
                p pVar4 = this.f76251f;
                return pVar4 == null ? fQ6 + (fB5 * (fQ7 - fQ6)) : ((Number) pVar4.evaluate(fB5, Float.valueOf(fQ6), Float.valueOf(fQ7))).floatValue();
            }
            i11++;
            aVar5 = aVar6;
        }
    }
}
