package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
class e extends d {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @Nullable
    private StateListAnimator f30758c0;

    static class a extends MaterialShapeDrawable {
        a(n nVar) {
            super(nVar);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    e(FloatingActionButton floatingActionButton, com.google.android.material.shadow.c cVar) {
        super(floatingActionButton, cVar);
    }

    @NonNull
    private StateListAnimator n0(float f10, float f11, float f12) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(d.W, o0(f10, f12));
        stateListAnimator.addState(d.X, o0(f10, f11));
        stateListAnimator.addState(d.Y, o0(f10, f11));
        stateListAnimator.addState(d.Z, o0(f10, f11));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f30726w, "elevation", f10).setDuration(0L));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 22 && i10 <= 24) {
            FloatingActionButton floatingActionButton = this.f30726w;
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
        }
        arrayList.add(ObjectAnimator.ofFloat(this.f30726w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(d.D);
        stateListAnimator.addState(d.f30702a0, animatorSet);
        stateListAnimator.addState(d.f30703b0, o0(0.0f, 0.0f));
        return stateListAnimator;
    }

    @NonNull
    private Animator o0(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f30726w, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f30726w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(d.D);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void B() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void D() {
        j0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void F(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f30726w.isEnabled()) {
                this.f30726w.setElevation(0.0f);
                this.f30726w.setTranslationZ(0.0f);
                return;
            }
            this.f30726w.setElevation(this.f30711h);
            if (this.f30726w.isPressed()) {
                this.f30726w.setTranslationZ(this.f30713j);
            } else if (this.f30726w.isFocused() || this.f30726w.isHovered()) {
                this.f30726w.setTranslationZ(this.f30712i);
            } else {
                this.f30726w.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void G(float f10, float f11, float f12) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f30726w.refreshDrawableState();
        } else if (this.f30726w.getStateListAnimator() == this.f30758c0) {
            StateListAnimator stateListAnimatorN0 = n0(f10, f11, f12);
            this.f30758c0 = stateListAnimatorN0;
            this.f30726w.setStateListAnimator(stateListAnimatorN0);
        }
        if (d0()) {
            j0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean O() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void Z(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f30706c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(com.google.android.material.ripple.b.e(colorStateList));
        } else {
            super.Z(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean d0() {
        return this.f30727x.a() || !f0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void h0() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    @NonNull
    MaterialShapeDrawable l() {
        return new a((n) Preconditions.checkNotNull(this.f30704a));
    }

    @NonNull
    c m0(int i10, ColorStateList colorStateList) {
        Context context = this.f30726w.getContext();
        c cVar = new c((n) Preconditions.checkNotNull(this.f30704a));
        cVar.f(ContextCompat.getColor(context, R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_outer_color));
        cVar.e(i10);
        cVar.d(colorStateList);
        return cVar;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float n() {
        return this.f30726w.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void s(@NonNull Rect rect) {
        if (this.f30727x.a()) {
            super.s(rect);
        } else if (f0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f30714k - this.f30726w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void y(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable layerDrawable;
        MaterialShapeDrawable materialShapeDrawableL = l();
        this.f30705b = materialShapeDrawableL;
        materialShapeDrawableL.setTintList(colorStateList);
        if (mode != null) {
            this.f30705b.setTintMode(mode);
        }
        this.f30705b.a0(this.f30726w.getContext());
        if (i10 > 0) {
            this.f30707d = m0(i10, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f30707d), (Drawable) Preconditions.checkNotNull(this.f30705b)});
        } else {
            this.f30707d = null;
            layerDrawable = this.f30705b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.e(colorStateList2), layerDrawable, null);
        this.f30706c = rippleDrawable;
        this.f30708e = rippleDrawable;
    }
}
