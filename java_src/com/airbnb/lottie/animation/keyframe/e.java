package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class e extends g<com.airbnb.lottie.model.content.d> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.airbnb.lottie.model.content.d f5533i;

    public e(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d>> list) {
        super(list);
        int iMax = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.airbnb.lottie.model.content.d dVar = list.get(i10).f6133b;
            if (dVar != null) {
                iMax = Math.max(iMax, dVar.e());
            }
        }
        this.f5533i = new com.airbnb.lottie.model.content.d(new float[iMax], new int[iMax]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.model.content.d i(com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.d> aVar, float f10) {
        this.f5533i.f(aVar.f6133b, aVar.f6134c, f10);
        return this.f5533i;
    }
}
