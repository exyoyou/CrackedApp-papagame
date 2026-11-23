package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
class f extends t {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f32165n = 100;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f32166o = 150;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final float f32167p = 0.8f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32170g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private EditText f32172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnClickListener f32173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View.OnFocusChangeListener f32174k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AnimatorSet f32175l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f32176m;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f.this.f32237b.f0(true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f32237b.f0(false);
        }
    }

    f(@NonNull s sVar) {
        super(sVar);
        this.f32173j = new View.OnClickListener() { // from class: com.google.android.material.textfield.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f32163b.G(view);
            }
        };
        this.f32174k = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.e
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f32164b.H(view, z10);
            }
        };
        Context context = sVar.getContext();
        int i10 = R.attr.motionDurationShort3;
        this.f32168e = com.google.android.material.motion.j.f(context, i10, 100);
        this.f32169f = com.google.android.material.motion.j.f(sVar.getContext(), i10, 150);
        this.f32170g = com.google.android.material.motion.j.g(sVar.getContext(), R.attr.motionEasingLinearInterpolator, com.google.android.material.animation.b.f29367a);
        this.f32171h = com.google.android.material.motion.j.g(sVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29370d);
    }

    private void A(boolean z10) {
        boolean z11 = this.f32237b.I() == z10;
        if (z10 && !this.f32175l.isRunning()) {
            this.f32176m.cancel();
            this.f32175l.start();
            if (z11) {
                this.f32175l.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f32175l.cancel();
        this.f32176m.start();
        if (z11) {
            this.f32176m.end();
        }
    }

    private ValueAnimator B(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f32170g);
        valueAnimatorOfFloat.setDuration(this.f32168e);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f32162b.E(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private ValueAnimator C() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f32167p, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f32171h);
        valueAnimatorOfFloat.setDuration(this.f32169f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f32161b.F(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void D() {
        ValueAnimator valueAnimatorC = C();
        ValueAnimator valueAnimatorB = B(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f32175l = animatorSet;
        animatorSet.playTogether(valueAnimatorC, valueAnimatorB);
        this.f32175l.addListener(new a());
        ValueAnimator valueAnimatorB2 = B(1.0f, 0.0f);
        this.f32176m = valueAnimatorB2;
        valueAnimatorB2.addListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(ValueAnimator valueAnimator) {
        this.f32239d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f32239d.setScaleX(fFloatValue);
        this.f32239d.setScaleY(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(View view) {
        EditText editText = this.f32172i;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(View view, boolean z10) {
        A(J());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        A(true);
    }

    private boolean J() {
        EditText editText = this.f32172i;
        return editText != null && (editText.hasFocus() || this.f32239d.hasFocus()) && this.f32172i.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.t
    void a(@NonNull Editable editable) {
        if (this.f32237b.y() != null) {
            return;
        }
        A(J());
    }

    @Override // com.google.android.material.textfield.t
    int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // com.google.android.material.textfield.t
    int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // com.google.android.material.textfield.t
    View.OnFocusChangeListener e() {
        return this.f32174k;
    }

    @Override // com.google.android.material.textfield.t
    View.OnClickListener f() {
        return this.f32173j;
    }

    @Override // com.google.android.material.textfield.t
    View.OnFocusChangeListener g() {
        return this.f32174k;
    }

    @Override // com.google.android.material.textfield.t
    public void n(@Nullable EditText editText) {
        this.f32172i = editText;
        this.f32236a.setEndIconVisible(J());
    }

    @Override // com.google.android.material.textfield.t
    void q(boolean z10) {
        if (this.f32237b.y() == null) {
            return;
        }
        A(z10);
    }

    @Override // com.google.android.material.textfield.t
    void s() {
        D();
    }

    @Override // com.google.android.material.textfield.t
    void u() {
        EditText editText = this.f32172i;
        if (editText != null) {
            editText.post(new Runnable() { // from class: com.google.android.material.textfield.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32160b.I();
                }
            });
        }
    }
}
