package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.j;
import com.airbnb.lottie.model.content.l;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f extends b {
    private final com.airbnb.lottie.animation.content.d H;
    private final c I;

    f(LottieDrawable lottieDrawable, Layer layer, c cVar, j jVar) {
        super(lottieDrawable, layer);
        this.I = cVar;
        com.airbnb.lottie.animation.content.d dVar = new com.airbnb.lottie.animation.content.d(lottieDrawable, this, new l("__container", layer.o(), false), jVar);
        this.H = dVar;
        dVar.e(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.b
    protected void I(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        this.H.h(dVar, i10, list, dVar2);
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        this.H.a(rectF, this.f5901o, z10);
    }

    @Override // com.airbnb.lottie.model.layer.b
    void t(@NonNull Canvas canvas, Matrix matrix, int i10) {
        this.H.c(canvas, matrix, i10);
    }

    @Override // com.airbnb.lottie.model.layer.b
    @Nullable
    public com.airbnb.lottie.model.content.a w() {
        com.airbnb.lottie.model.content.a aVarW = super.w();
        return aVarW != null ? aVarW : this.I.w();
    }

    @Override // com.airbnb.lottie.model.layer.b
    @Nullable
    public com.airbnb.lottie.parser.j y() {
        com.airbnb.lottie.parser.j jVarY = super.y();
        return jVarY != null ? jVarY : this.I.y();
    }
}
