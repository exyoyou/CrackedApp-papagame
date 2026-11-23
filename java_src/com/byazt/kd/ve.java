package com.byazt.kd;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1714, 54})
public class ve extends yp<com.byazt.jx.uj, com.byazt.jx.uj> {
    public ve(List<com.byazt.vc.c<com.byazt.jx.uj>> list) {
        super(c(list));
    }

    private static List<com.byazt.vc.c<com.byazt.jx.uj>> c(List<com.byazt.vc.c<com.byazt.jx.uj>> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, c(list.get(i10)));
        }
        return list;
    }

    @Override // com.byazt.kd.yp
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.byazt.kd.yp, com.byazt.kd.u
    public /* bridge */ /* synthetic */ boolean tt() {
        return super.tt();
    }

    @Override // com.byazt.kd.yp, com.byazt.kd.u
    public /* bridge */ /* synthetic */ List ve() {
        return super.ve();
    }

    private static com.byazt.vc.c<com.byazt.jx.uj> c(com.byazt.vc.c<com.byazt.jx.uj> cVar) {
        com.byazt.jx.uj ujVar = cVar.f21165c;
        com.byazt.jx.uj ujVar2 = cVar.tt;
        if (ujVar == null || ujVar2 == null || ujVar.c().length == ujVar2.c().length) {
            return cVar;
        }
        float[] fArrC = c(ujVar.c(), ujVar2.c());
        return cVar.c(ujVar.c(fArrC), ujVar2.c(fArrC));
    }

    public static float[] c(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override // com.byazt.kd.u
    public com.byazt.dg.c<com.byazt.jx.uj, com.byazt.jx.uj> c() {
        return new com.byazt.dg.n(this.f16177c);
    }
}
