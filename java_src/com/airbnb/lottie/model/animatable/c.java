package com.airbnb.lottie.model.animatable;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends n<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> {
    public c(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d>> list) {
        super((List) e(list));
    }

    private static com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d> d(com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d> aVar) {
        com.airbnb.lottie.model.content.d dVar = aVar.f6133b;
        com.airbnb.lottie.model.content.d dVar2 = aVar.f6134c;
        if (dVar == null || dVar2 == null || dVar.d().length == dVar2.d().length) {
            return aVar;
        }
        float[] fArrF = f(dVar.d(), dVar2.d());
        return aVar.b(dVar.a(fArrF), dVar2.a(fArrF));
    }

    private static List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d>> e(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d>> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, d(list.get(i10)));
        }
        return list;
    }

    static float[] f(float[] fArr, float[] fArr2) {
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

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> a() {
        return new com.airbnb.lottie.animation.keyframe.e(this.f5742a);
    }

    @Override // com.airbnb.lottie.model.animatable.n, com.airbnb.lottie.model.animatable.m
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // com.airbnb.lottie.model.animatable.n, com.airbnb.lottie.model.animatable.m
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // com.airbnb.lottie.model.animatable.n
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
