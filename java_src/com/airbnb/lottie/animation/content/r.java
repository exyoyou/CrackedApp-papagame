package com.airbnb.lottie.animation.content;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class r implements t, com.airbnb.lottie.animation.keyframe.a.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f5484e = 0.5519f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LottieDrawable f5485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.model.content.j f5488d;

    public r(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.i iVar) {
        this.f5485a = lottieDrawable;
        this.f5486b = iVar.c();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = iVar.b().a();
        this.f5487c = aVarA;
        bVar.i(aVarA);
        aVarA.a(this);
    }

    private static int b(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int g(int i10, int i11) {
        return i10 - (b(i10, i11) * i11);
    }

    @NonNull
    private com.airbnb.lottie.model.content.j i(com.airbnb.lottie.model.content.j jVar) {
        List<com.airbnb.lottie.model.a> listA = jVar.a();
        boolean zD = jVar.d();
        int size = listA.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            com.airbnb.lottie.model.a aVar = listA.get(size);
            com.airbnb.lottie.model.a aVar2 = listA.get(g(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? aVar2.c() : jVar.b();
            i10 = (((size != 0 || zD) ? aVar2.b() : pointFC).equals(pointFC) && aVar.a().equals(pointFC) && !(!jVar.d() && (size == 0 || size == listA.size() - 1))) ? i10 + 2 : i10 + 1;
            size--;
        }
        com.airbnb.lottie.model.content.j jVar2 = this.f5488d;
        if (jVar2 == null || jVar2.a().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new com.airbnb.lottie.model.a());
            }
            this.f5488d = new com.airbnb.lottie.model.content.j(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f5488d.e(zD);
        return this.f5488d;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5485a.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
    }

    @Override // com.airbnb.lottie.animation.content.t
    public com.airbnb.lottie.model.content.j f(com.airbnb.lottie.model.content.j jVar) {
        List<com.airbnb.lottie.model.a> listA = jVar.a();
        if (listA.size() <= 2) {
            return jVar;
        }
        float fFloatValue = this.f5487c.h().floatValue();
        if (fFloatValue == 0.0f) {
            return jVar;
        }
        com.airbnb.lottie.model.content.j jVarI = i(jVar);
        jVarI.f(jVar.b().x, jVar.b().y);
        List<com.airbnb.lottie.model.a> listA2 = jVarI.a();
        boolean zD = jVar.d();
        int i10 = 0;
        int i11 = 0;
        while (i10 < listA.size()) {
            com.airbnb.lottie.model.a aVar = listA.get(i10);
            com.airbnb.lottie.model.a aVar2 = listA.get(g(i10 - 1, listA.size()));
            com.airbnb.lottie.model.a aVar3 = listA.get(g(i10 - 2, listA.size()));
            PointF pointFC = (i10 != 0 || zD) ? aVar2.c() : jVar.b();
            PointF pointFB = (i10 != 0 || zD) ? aVar2.b() : pointFC;
            PointF pointFA = aVar.a();
            PointF pointFC2 = aVar3.c();
            PointF pointFC3 = aVar.c();
            boolean z10 = !jVar.d() && (i10 == 0 || i10 == listA.size() + (-1));
            if (pointFB.equals(pointFC) && pointFA.equals(pointFC) && !z10) {
                float f10 = pointFC.x;
                float f11 = f10 - pointFC2.x;
                float f12 = pointFC.y;
                float f13 = f12 - pointFC2.y;
                float f14 = pointFC3.x - f10;
                float f15 = pointFC3.y - f12;
                float fHypot = (float) Math.hypot(f11, f13);
                float fHypot2 = (float) Math.hypot(f14, f15);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f16 = pointFC.x;
                float f17 = ((pointFC2.x - f16) * fMin) + f16;
                float f18 = pointFC.y;
                float f19 = ((pointFC2.y - f18) * fMin) + f18;
                float f20 = ((pointFC3.x - f16) * fMin2) + f16;
                float f21 = ((pointFC3.y - f18) * fMin2) + f18;
                float f22 = f17 - ((f17 - f16) * f5484e);
                float f23 = f19 - ((f19 - f18) * f5484e);
                float f24 = f20 - ((f20 - f16) * f5484e);
                float f25 = f21 - ((f21 - f18) * f5484e);
                com.airbnb.lottie.model.a aVar4 = listA2.get(g(i11 - 1, listA2.size()));
                com.airbnb.lottie.model.a aVar5 = listA2.get(i11);
                aVar4.e(f17, f19);
                aVar4.g(f17, f19);
                if (i10 == 0) {
                    jVarI.f(f17, f19);
                }
                aVar5.d(f22, f23);
                i11++;
                com.airbnb.lottie.model.a aVar6 = listA2.get(i11);
                aVar5.e(f24, f25);
                aVar5.g(f20, f21);
                aVar6.d(f20, f21);
            } else {
                com.airbnb.lottie.model.a aVar7 = listA2.get(g(i11 - 1, listA2.size()));
                com.airbnb.lottie.model.a aVar8 = listA2.get(i11);
                aVar7.e(aVar2.b().x, aVar2.b().y);
                aVar7.g(aVar2.c().x, aVar2.c().y);
                aVar8.d(aVar.a().x, aVar.a().y);
            }
            i11++;
            i10++;
            listA = listA;
        }
        return jVarI;
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5486b;
    }

    public com.airbnb.lottie.animation.keyframe.a<Float, Float> h() {
        return this.f5487c;
    }
}
