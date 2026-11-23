package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class i extends k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f76235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f76236h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f76237i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f76238j;

    public i(j.b... bVarArr) {
        super(bVarArr);
        this.f76238j = true;
    }

    @Override // com.nineoldandroids.animation.k
    public Object b(float f10) {
        return Integer.valueOf(i(f10));
    }

    @Override // com.nineoldandroids.animation.k
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public i clone() {
        ArrayList<j> arrayList = this.f76250e;
        int size = arrayList.size();
        j.b[] bVarArr = new j.b[size];
        for (int i10 = 0; i10 < size; i10++) {
            bVarArr[i10] = (j.b) arrayList.get(i10).clone();
        }
        return new i(bVarArr);
    }

    public int i(float f10) {
        int i10 = this.f76246a;
        if (i10 == 2) {
            if (this.f76238j) {
                this.f76238j = false;
                this.f76235g = ((j.b) this.f76250e.get(0)).q();
                int iQ = ((j.b) this.f76250e.get(1)).q();
                this.f76236h = iQ;
                this.f76237i = iQ - this.f76235g;
            }
            Interpolator interpolator = this.f76249d;
            if (interpolator != null) {
                f10 = interpolator.getInterpolation(f10);
            }
            p pVar = this.f76251f;
            return pVar == null ? this.f76235g + ((int) (f10 * this.f76237i)) : ((Number) pVar.evaluate(f10, Integer.valueOf(this.f76235g), Integer.valueOf(this.f76236h))).intValue();
        }
        if (f10 <= 0.0f) {
            j.b bVar = (j.b) this.f76250e.get(0);
            j.b bVar2 = (j.b) this.f76250e.get(1);
            int iQ2 = bVar.q();
            int iQ3 = bVar2.q();
            float fB = bVar.b();
            float fB2 = bVar2.b();
            Interpolator interpolatorD = bVar2.d();
            if (interpolatorD != null) {
                f10 = interpolatorD.getInterpolation(f10);
            }
            float f11 = (f10 - fB) / (fB2 - fB);
            p pVar2 = this.f76251f;
            return pVar2 == null ? iQ2 + ((int) (f11 * (iQ3 - iQ2))) : ((Number) pVar2.evaluate(f11, Integer.valueOf(iQ2), Integer.valueOf(iQ3))).intValue();
        }
        if (f10 >= 1.0f) {
            j.b bVar3 = (j.b) this.f76250e.get(i10 - 2);
            j.b bVar4 = (j.b) this.f76250e.get(this.f76246a - 1);
            int iQ4 = bVar3.q();
            int iQ5 = bVar4.q();
            float fB3 = bVar3.b();
            float fB4 = bVar4.b();
            Interpolator interpolatorD2 = bVar4.d();
            if (interpolatorD2 != null) {
                f10 = interpolatorD2.getInterpolation(f10);
            }
            float f12 = (f10 - fB3) / (fB4 - fB3);
            p pVar3 = this.f76251f;
            return pVar3 == null ? iQ4 + ((int) (f12 * (iQ5 - iQ4))) : ((Number) pVar3.evaluate(f12, Integer.valueOf(iQ4), Integer.valueOf(iQ5))).intValue();
        }
        j.b bVar5 = (j.b) this.f76250e.get(0);
        int i11 = 1;
        while (true) {
            int i12 = this.f76246a;
            if (i11 >= i12) {
                return ((Number) this.f76250e.get(i12 - 1).e()).intValue();
            }
            j.b bVar6 = (j.b) this.f76250e.get(i11);
            if (f10 < bVar6.b()) {
                Interpolator interpolatorD3 = bVar6.d();
                if (interpolatorD3 != null) {
                    f10 = interpolatorD3.getInterpolation(f10);
                }
                float fB5 = (f10 - bVar5.b()) / (bVar6.b() - bVar5.b());
                int iQ6 = bVar5.q();
                int iQ7 = bVar6.q();
                p pVar4 = this.f76251f;
                return pVar4 == null ? iQ6 + ((int) (fB5 * (iQ7 - iQ6))) : ((Number) pVar4.evaluate(fB5, Integer.valueOf(iQ6), Integer.valueOf(iQ7))).intValue();
            }
            i11++;
            bVar5 = bVar6;
        }
    }
}
