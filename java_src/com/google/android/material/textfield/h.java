package com.google.android.material.textfield;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes5.dex */
class h extends MaterialShapeDrawable {

    @NonNull
    b F;

    private static class c extends h {
        private Paint G;
        private int H;

        c(@NonNull b bVar) {
            super(bVar);
        }

        private Paint X0() {
            if (this.G == null) {
                Paint paint = new Paint(1);
                this.G = paint;
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                this.G.setColor(-1);
                this.G.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            }
            return this.G;
        }

        private void Y0(@NonNull Canvas canvas) {
            if (b1(getCallback())) {
                return;
            }
            canvas.restoreToCount(this.H);
        }

        private void Z0(@NonNull Canvas canvas) {
            Drawable.Callback callback = getCallback();
            if (!b1(callback)) {
                a1(canvas);
                return;
            }
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        }

        private void a1(@NonNull Canvas canvas) {
            this.H = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }

        private boolean b1(Drawable.Callback callback) {
            return callback instanceof View;
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            Z0(canvas);
            super.draw(canvas);
            Y0(canvas);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable
        protected void t(@NonNull Canvas canvas) {
            super.t(canvas);
            canvas.drawRect(this.F.f32179w, X0());
        }
    }

    @TargetApi(18)
    private static class d extends h {
        d(@NonNull b bVar) {
            super(bVar);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable
        protected void t(@NonNull Canvas canvas) {
            if (this.F.f32179w.isEmpty()) {
                super.t(canvas);
                return;
            }
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutRect(this.F.f32179w);
            } else {
                canvas.clipRect(this.F.f32179w, Region.Op.DIFFERENCE);
            }
            super.t(canvas);
            canvas.restore();
        }
    }

    static h R0(@Nullable com.google.android.material.shape.n nVar) {
        if (nVar == null) {
            nVar = new com.google.android.material.shape.n();
        }
        return S0(new b(nVar, new RectF()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static h S0(@NonNull b bVar) {
        return new d(bVar);
    }

    boolean T0() {
        return !this.F.f32179w.isEmpty();
    }

    void U0() {
        V0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void V0(float f10, float f11, float f12, float f13) {
        if (f10 == this.F.f32179w.left && f11 == this.F.f32179w.top && f12 == this.F.f32179w.right && f13 == this.F.f32179w.bottom) {
            return;
        }
        this.F.f32179w.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    void W0(@NonNull RectF rectF) {
        V0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.F = new b(this.F);
        return this;
    }

    private static final class b extends MaterialShapeDrawable.c {

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        @NonNull
        private final RectF f32179w;

        @Override // com.google.android.material.shape.MaterialShapeDrawable.c, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            h hVarS0 = h.S0(this);
            hVarS0.invalidateSelf();
            return hVarS0;
        }

        private b(@NonNull com.google.android.material.shape.n nVar, @NonNull RectF rectF) {
            super(nVar, null);
            this.f32179w = rectF;
        }

        private b(@NonNull b bVar) {
            super(bVar);
            this.f32179w = bVar.f32179w;
        }
    }

    private h(@NonNull b bVar) {
        super(bVar);
        this.F = bVar;
    }
}
