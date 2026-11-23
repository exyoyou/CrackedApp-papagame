package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class v {
    private static final int C = 217;
    private static final int D = 167;
    static final int E = 0;
    static final int F = 1;
    static final int G = 2;
    private static final int H = 0;
    private static final int I = 1;
    private static final int J = 2;

    @Nullable
    private ColorStateList A;
    private Typeface B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32245f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f32246g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextInputLayout f32247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f32248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f32249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout f32250k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private Animator f32251l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f32252m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f32253n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private CharSequence f32255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f32256q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private TextView f32257r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private CharSequence f32258s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f32259t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f32260u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private ColorStateList f32261v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f32262w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f32263x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private TextView f32264y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f32265z;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f32266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TextView f32267c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f32268d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f32269e;

        a(int i10, TextView textView, int i11, TextView textView2) {
            this.f32266b = i10;
            this.f32267c = textView;
            this.f32268d = i11;
            this.f32269e = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v.this.f32253n = this.f32266b;
            v.this.f32251l = null;
            TextView textView = this.f32267c;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f32268d == 1 && v.this.f32257r != null) {
                    v.this.f32257r.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f32269e;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f32269e.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f32269e;
            if (textView != null) {
                textView.setVisibility(0);
                this.f32269e.setAlpha(0.0f);
            }
        }
    }

    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = v.this.f32247h.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public v(@NonNull TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f32246g = context;
        this.f32247h = textInputLayout;
        this.f32252m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        int i10 = R.attr.motionDurationShort4;
        this.f32240a = com.google.android.material.motion.j.f(context, i10, 217);
        this.f32241b = com.google.android.material.motion.j.f(context, R.attr.motionDurationMedium4, 167);
        this.f32242c = com.google.android.material.motion.j.f(context, i10, 167);
        int i11 = R.attr.motionEasingEmphasizedDecelerateInterpolator;
        this.f32243d = com.google.android.material.motion.j.g(context, i11, com.google.android.material.animation.b.f29370d);
        TimeInterpolator timeInterpolator = com.google.android.material.animation.b.f29367a;
        this.f32244e = com.google.android.material.motion.j.g(context, i11, timeInterpolator);
        this.f32245f = com.google.android.material.motion.j.g(context, R.attr.motionEasingLinearInterpolator, timeInterpolator);
    }

    private boolean C(int i10) {
        return (i10 != 1 || this.f32257r == null || TextUtils.isEmpty(this.f32255p)) ? false : true;
    }

    private boolean D(int i10) {
        return (i10 != 2 || this.f32264y == null || TextUtils.isEmpty(this.f32262w)) ? false : true;
    }

    private void I(int i10, int i11) {
        TextView textViewN;
        TextView textViewN2;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (textViewN2 = n(i11)) != null) {
            textViewN2.setVisibility(0);
            textViewN2.setAlpha(1.0f);
        }
        if (i10 != 0 && (textViewN = n(i10)) != null) {
            textViewN.setVisibility(4);
            if (i10 == 1) {
                textViewN.setText((CharSequence) null);
            }
        }
        this.f32253n = i11;
    }

    private void R(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void T(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean U(@Nullable TextView textView, @NonNull CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f32247h) && this.f32247h.isEnabled() && !(this.f32254o == this.f32253n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void X(int i10, int i11, boolean z10) {
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f32251l = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.f32263x, this.f32264y, 2, i10, i11);
            i(arrayList, this.f32256q, this.f32257r, 1, i10, i11);
            com.google.android.material.animation.c.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, n(i10), i10, n(i11)));
            animatorSet.start();
        } else {
            I(i10, i11);
        }
        this.f32247h.H0();
        this.f32247h.M0(z10);
        this.f32247h.S0();
    }

    private boolean g() {
        return (this.f32248i == null || this.f32247h.getEditText() == null) ? false : true;
    }

    private void i(@NonNull List<Animator> list, boolean z10, @Nullable TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        boolean z11 = false;
        if (i10 == i12 || i10 == i11) {
            ObjectAnimator objectAnimatorJ = j(textView, i12 == i10);
            if (i10 == i12 && i11 != 0) {
                z11 = true;
            }
            if (z11) {
                objectAnimatorJ.setStartDelay(this.f32242c);
            }
            list.add(objectAnimatorJ);
            if (i12 != i10 || i11 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorK = k(textView);
            objectAnimatorK.setStartDelay(this.f32242c);
            list.add(objectAnimatorK);
        }
    }

    private ObjectAnimator j(TextView textView, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(z10 ? this.f32241b : this.f32242c);
        objectAnimatorOfFloat.setInterpolator(z10 ? this.f32244e : this.f32245f);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f32252m, 0.0f);
        objectAnimatorOfFloat.setDuration(this.f32240a);
        objectAnimatorOfFloat.setInterpolator(this.f32243d);
        return objectAnimatorOfFloat;
    }

    @Nullable
    private TextView n(int i10) {
        if (i10 == 1) {
            return this.f32257r;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f32264y;
    }

    private int x(boolean z10, @DimenRes int i10, int i11) {
        return z10 ? this.f32246g.getResources().getDimensionPixelSize(i10) : i11;
    }

    void A() {
        this.f32255p = null;
        h();
        if (this.f32253n == 1) {
            if (!this.f32263x || TextUtils.isEmpty(this.f32262w)) {
                this.f32254o = 0;
            } else {
                this.f32254o = 2;
            }
        }
        X(this.f32253n, this.f32254o, U(this.f32257r, ""));
    }

    void B() {
        h();
        int i10 = this.f32253n;
        if (i10 == 2) {
            this.f32254o = 0;
        }
        X(i10, this.f32254o, U(this.f32264y, ""));
    }

    boolean E(int i10) {
        return i10 == 0 || i10 == 1;
    }

    boolean F() {
        return this.f32256q;
    }

    boolean G() {
        return this.f32263x;
    }

    void H(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.f32248i == null) {
            return;
        }
        if (!E(i10) || (frameLayout = this.f32250k) == null) {
            this.f32248i.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f32249j - 1;
        this.f32249j = i11;
        T(this.f32248i, i11);
    }

    void J(int i10) {
        this.f32259t = i10;
        TextView textView = this.f32257r;
        if (textView != null) {
            ViewCompat.setAccessibilityLiveRegion(textView, i10);
        }
    }

    void K(@Nullable CharSequence charSequence) {
        this.f32258s = charSequence;
        TextView textView = this.f32257r;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void L(boolean z10) {
        if (this.f32256q == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f32246g);
            this.f32257r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            this.f32257r.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f32257r.setTypeface(typeface);
            }
            M(this.f32260u);
            N(this.f32261v);
            K(this.f32258s);
            J(this.f32259t);
            this.f32257r.setVisibility(4);
            e(this.f32257r, 0);
        } else {
            A();
            H(this.f32257r, 0);
            this.f32257r = null;
            this.f32247h.H0();
            this.f32247h.S0();
        }
        this.f32256q = z10;
    }

    void M(@StyleRes int i10) {
        this.f32260u = i10;
        TextView textView = this.f32257r;
        if (textView != null) {
            this.f32247h.u0(textView, i10);
        }
    }

    void N(@Nullable ColorStateList colorStateList) {
        this.f32261v = colorStateList;
        TextView textView = this.f32257r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void O(@StyleRes int i10) {
        this.f32265z = i10;
        TextView textView = this.f32264y;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i10);
        }
    }

    void P(boolean z10) {
        if (this.f32263x == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f32246g);
            this.f32264y = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            this.f32264y.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f32264y.setTypeface(typeface);
            }
            this.f32264y.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f32264y, 1);
            O(this.f32265z);
            Q(this.A);
            e(this.f32264y, 1);
            this.f32264y.setAccessibilityDelegate(new b());
        } else {
            B();
            H(this.f32264y, 1);
            this.f32264y = null;
            this.f32247h.H0();
            this.f32247h.S0();
        }
        this.f32263x = z10;
    }

    void Q(@Nullable ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f32264y;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void S(Typeface typeface) {
        if (typeface != this.B) {
            this.B = typeface;
            R(this.f32257r, typeface);
            R(this.f32264y, typeface);
        }
    }

    void V(CharSequence charSequence) {
        h();
        this.f32255p = charSequence;
        this.f32257r.setText(charSequence);
        int i10 = this.f32253n;
        if (i10 != 1) {
            this.f32254o = 1;
        }
        X(i10, this.f32254o, U(this.f32257r, charSequence));
    }

    void W(CharSequence charSequence) {
        h();
        this.f32262w = charSequence;
        this.f32264y.setText(charSequence);
        int i10 = this.f32253n;
        if (i10 != 2) {
            this.f32254o = 2;
        }
        X(i10, this.f32254o, U(this.f32264y, charSequence));
    }

    void e(TextView textView, int i10) {
        if (this.f32248i == null && this.f32250k == null) {
            LinearLayout linearLayout = new LinearLayout(this.f32246g);
            this.f32248i = linearLayout;
            linearLayout.setOrientation(0);
            this.f32247h.addView(this.f32248i, -1, -2);
            this.f32250k = new FrameLayout(this.f32246g);
            this.f32248i.addView(this.f32250k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f32247h.getEditText() != null) {
                f();
            }
        }
        if (E(i10)) {
            this.f32250k.setVisibility(0);
            this.f32250k.addView(textView);
        } else {
            this.f32248i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f32248i.setVisibility(0);
        this.f32249j++;
    }

    void f() {
        if (g()) {
            EditText editText = this.f32247h.getEditText();
            boolean zJ = com.google.android.material.resources.d.j(this.f32246g);
            LinearLayout linearLayout = this.f32248i;
            int i10 = R.dimen.material_helper_text_font_1_3_padding_horizontal;
            ViewCompat.setPaddingRelative(linearLayout, x(zJ, i10, ViewCompat.getPaddingStart(editText)), x(zJ, R.dimen.material_helper_text_font_1_3_padding_top, this.f32246g.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top)), x(zJ, i10, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f32251l;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return C(this.f32253n);
    }

    boolean m() {
        return C(this.f32254o);
    }

    int o() {
        return this.f32259t;
    }

    @Nullable
    CharSequence p() {
        return this.f32258s;
    }

    @Nullable
    CharSequence q() {
        return this.f32255p;
    }

    @ColorInt
    int r() {
        TextView textView = this.f32257r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    ColorStateList s() {
        TextView textView = this.f32257r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence t() {
        return this.f32262w;
    }

    @Nullable
    View u() {
        return this.f32264y;
    }

    @Nullable
    ColorStateList v() {
        TextView textView = this.f32264y;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    @ColorInt
    int w() {
        TextView textView = this.f32264y;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    boolean y() {
        return D(this.f32253n);
    }

    boolean z() {
        return D(this.f32254o);
    }
}
