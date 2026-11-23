package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
class q extends t {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ChecksSdkIntAtLeast(api = 21)
    private static final boolean f32188s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f32189t = 50;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f32190u = 67;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32192f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f32193g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private AutoCompleteTextView f32194h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View.OnClickListener f32195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnFocusChangeListener f32196j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f32197k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f32198l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f32199m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f32200n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f32201o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private AccessibilityManager f32202p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f32203q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f32204r;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            q.this.r();
            q.this.f32204r.start();
        }
    }

    q(@NonNull s sVar) {
        super(sVar);
        this.f32195i = new View.OnClickListener() { // from class: com.google.android.material.textfield.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f32180b.J(view);
            }
        };
        this.f32196j = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.k
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f32181b.K(view, z10);
            }
        };
        this.f32197k = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.google.android.material.textfield.l
            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f32183a.L(z10);
            }
        };
        this.f32201o = Long.MAX_VALUE;
        Context context = sVar.getContext();
        int i10 = R.attr.motionDurationShort3;
        this.f32192f = com.google.android.material.motion.j.f(context, i10, 67);
        this.f32191e = com.google.android.material.motion.j.f(sVar.getContext(), i10, 50);
        this.f32193g = com.google.android.material.motion.j.g(sVar.getContext(), R.attr.motionEasingLinearInterpolator, com.google.android.material.animation.b.f29367a);
    }

    @NonNull
    private static AutoCompleteTextView D(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator E(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f32193g);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f32184b.I(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void F() {
        this.f32204r = E(this.f32192f, 0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(this.f32191e, 1.0f, 0.0f);
        this.f32203q = valueAnimatorE;
        valueAnimatorE.addListener(new a());
    }

    private boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f32201o;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        boolean zIsPopupShowing = this.f32194h.isPopupShowing();
        O(zIsPopupShowing);
        this.f32199m = zIsPopupShowing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        this.f32239d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(View view) {
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(View view, boolean z10) {
        this.f32198l = z10;
        r();
        if (z10) {
            return;
        }
        O(false);
        this.f32199m = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(boolean z10) {
        AutoCompleteTextView autoCompleteTextView = this.f32194h;
        if (autoCompleteTextView == null || r.a(autoCompleteTextView)) {
            return;
        }
        ViewCompat.setImportantForAccessibility(this.f32239d, z10 ? 2 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean M(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (G()) {
                this.f32199m = false;
            }
            Q();
            R();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        R();
        O(false);
    }

    private void O(boolean z10) {
        if (this.f32200n != z10) {
            this.f32200n = z10;
            this.f32204r.cancel();
            this.f32203q.start();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void P() {
        this.f32194h.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.o
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f32186b.M(view, motionEvent);
            }
        });
        if (f32188s) {
            this.f32194h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.p
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    this.f32187a.N();
                }
            });
        }
        this.f32194h.setThreshold(0);
    }

    private void Q() {
        if (this.f32194h == null) {
            return;
        }
        if (G()) {
            this.f32199m = false;
        }
        if (this.f32199m) {
            this.f32199m = false;
            return;
        }
        if (f32188s) {
            O(!this.f32200n);
        } else {
            this.f32200n = !this.f32200n;
            r();
        }
        if (!this.f32200n) {
            this.f32194h.dismissDropDown();
        } else {
            this.f32194h.requestFocus();
            this.f32194h.showDropDown();
        }
    }

    private void R() {
        this.f32199m = true;
        this.f32201o = System.currentTimeMillis();
    }

    @Override // com.google.android.material.textfield.t
    public void a(Editable editable) {
        if (this.f32202p.isTouchExplorationEnabled() && r.a(this.f32194h) && !this.f32239d.hasFocus()) {
            this.f32194h.dismissDropDown();
        }
        this.f32194h.post(new Runnable() { // from class: com.google.android.material.textfield.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f32185b.H();
            }
        });
    }

    @Override // com.google.android.material.textfield.t
    int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.t
    int d() {
        return f32188s ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down;
    }

    @Override // com.google.android.material.textfield.t
    View.OnFocusChangeListener e() {
        return this.f32196j;
    }

    @Override // com.google.android.material.textfield.t
    View.OnClickListener f() {
        return this.f32195i;
    }

    @Override // com.google.android.material.textfield.t
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return this.f32197k;
    }

    @Override // com.google.android.material.textfield.t
    boolean i(int i10) {
        return i10 != 0;
    }

    @Override // com.google.android.material.textfield.t
    boolean j() {
        return true;
    }

    @Override // com.google.android.material.textfield.t
    boolean k() {
        return this.f32198l;
    }

    @Override // com.google.android.material.textfield.t
    boolean l() {
        return true;
    }

    @Override // com.google.android.material.textfield.t
    boolean m() {
        return this.f32200n;
    }

    @Override // com.google.android.material.textfield.t
    public void n(@Nullable EditText editText) {
        this.f32194h = D(editText);
        P();
        this.f32236a.setErrorIconDrawable((Drawable) null);
        if (!r.a(editText) && this.f32202p.isTouchExplorationEnabled()) {
            ViewCompat.setImportantForAccessibility(this.f32239d, 2);
        }
        this.f32236a.setEndIconVisible(true);
    }

    @Override // com.google.android.material.textfield.t
    public void o(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (!r.a(this.f32194h)) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // com.google.android.material.textfield.t
    @SuppressLint({"WrongConstant"})
    public void p(View view, @NonNull AccessibilityEvent accessibilityEvent) {
        if (!this.f32202p.isEnabled() || r.a(this.f32194h)) {
            return;
        }
        boolean z10 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f32200n && !this.f32194h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z10) {
            Q();
            R();
        }
    }

    @Override // com.google.android.material.textfield.t
    void s() {
        F();
        this.f32202p = (AccessibilityManager) this.f32238c.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.t
    boolean t() {
        return true;
    }

    @Override // com.google.android.material.textfield.t
    @SuppressLint({"ClickableViewAccessibility"})
    void u() {
        AutoCompleteTextView autoCompleteTextView = this.f32194h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f32188s) {
                this.f32194h.setOnDismissListener(null);
            }
        }
    }
}
