package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.q;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.utils.l;
import com.airbnb.lottie.value.j;
import com.airbnb.lottie.x0;

/* JADX INFO: loaded from: classes7.dex */
public class d extends b {
    private final Paint H;
    private final Rect I;
    private final Rect J;

    @Nullable
    private final x0 K;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> L;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Bitmap, Bitmap> M;

    d(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.H = new com.airbnb.lottie.animation.a(3);
        this.I = new Rect();
        this.J = new Rect();
        this.K = lottieDrawable.W(layer.n());
    }

    @Nullable
    private Bitmap P() {
        Bitmap bitmapH;
        com.airbnb.lottie.animation.keyframe.a<Bitmap, Bitmap> aVar = this.M;
        if (aVar != null && (bitmapH = aVar.h()) != null) {
            return bitmapH;
        }
        Bitmap bitmapO = this.f5902p.O(this.f5903q.n());
        if (bitmapO != null) {
            return bitmapO;
        }
        x0 x0Var = this.K;
        if (x0Var != null) {
            return x0Var.a();
        }
        return null;
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        if (this.K != null) {
            float fE = l.e();
            rectF.set(0.0f, 0.0f, this.K.f() * fE, this.K.d() * fE);
            this.f5901o.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable j<T> jVar) {
        super.g(t10, jVar);
        if (t10 == b1.K) {
            if (jVar == null) {
                this.L = null;
                return;
            } else {
                this.L = new q(jVar);
                return;
            }
        }
        if (t10 == b1.N) {
            if (jVar == null) {
                this.M = null;
            } else {
                this.M = new q(jVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.b
    public void t(@NonNull Canvas canvas, Matrix matrix, int i10) {
        Bitmap bitmapP = P();
        if (bitmapP == null || bitmapP.isRecycled() || this.K == null) {
            return;
        }
        float fE = l.e();
        this.H.setAlpha(i10);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.L;
        if (aVar != null) {
            this.H.setColorFilter(aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.I.set(0, 0, bitmapP.getWidth(), bitmapP.getHeight());
        if (this.f5902p.X()) {
            this.J.set(0, 0, (int) (this.K.f() * fE), (int) (this.K.d() * fE));
        } else {
            this.J.set(0, 0, (int) (bitmapP.getWidth() * fE), (int) (bitmapP.getHeight() * fE));
        }
        canvas.drawBitmap(bitmapP, this.I, this.J, this.H);
        canvas.restore();
    }
}
