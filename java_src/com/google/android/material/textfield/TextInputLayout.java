package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int A2 = 1;
    public static final int B2 = 2;
    public static final int C2 = -1;
    public static final int D2 = 0;
    public static final int E2 = 1;
    public static final int F2 = 2;
    public static final int G2 = 3;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private static final int f32093s2 = 167;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private static final int f32094t2 = 87;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private static final int f32095u2 = 67;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private static final int f32096v2 = -1;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private static final int f32097w2 = -1;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private static final String f32099y2 = "TextInputLayout";

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    public static final int f32100z2 = 0;

    @Nullable
    private ColorStateList A;

    @Nullable
    private ColorStateList B;

    @Nullable
    private ColorStateList C;
    private boolean D;
    private CharSequence E;
    private boolean F;

    @Nullable
    private MaterialShapeDrawable G;
    private MaterialShapeDrawable H;
    private StateListDrawable I;
    private boolean J;

    @Nullable
    private MaterialShapeDrawable K;

    @Nullable
    private MaterialShapeDrawable L;
    private ColorStateList L1;

    @NonNull
    private com.google.android.material.shape.n M;
    private boolean N;
    private final int O;
    private int P;
    private int Q;
    private int R;
    private ColorStateList R1;
    private int S;
    private int T;

    @ColorInt
    private int U;

    @ColorInt
    private int V;

    @ColorInt
    private int V1;
    private final Rect W;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    @ColorInt
    private int f32101a2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f32102b;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private final RectF f32103b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    @ColorInt
    private int f32104b2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final z f32105c;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private ColorStateList f32106c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final s f32107d;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    @ColorInt
    private int f32108d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    EditText f32109e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    @ColorInt
    private int f32110e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f32111f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private Typeface f32112f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    @ColorInt
    private int f32113f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32114g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    @ColorInt
    private int f32115g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f32116h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @ColorInt
    private int f32117h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f32118i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    @Nullable
    private Drawable f32119i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    int f32120i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f32121j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private boolean f32122j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final v f32123k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    final com.google.android.material.internal.b f32124k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f32125l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f32126l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private boolean f32127l2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f32128m;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private boolean f32129m2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f32130n;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private ValueAnimator f32131n2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private e f32132o;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private boolean f32133o2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private TextView f32134p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Rect f32135p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private final LinkedHashSet<f> f32136p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private boolean f32137p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f32138q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    @Nullable
    private Drawable f32139q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private boolean f32140q2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32141r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f32142r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f32143s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32144t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f32145u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private ColorStateList f32146v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private Drawable f32147v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f32148w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private Fade f32149x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private Fade f32150y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private ColorStateList f32151z;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private static final int f32092r2 = R.style.Widget_Design_TextInputLayout;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private static final int[][] f32098x2 = {new int[]{android.R.attr.state_pressed}, new int[0]};

    @Retention(RetentionPolicy.SOURCE)
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface EndIconMode {
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        CharSequence f32152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f32153c;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f32152b) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.f32152b, parcel, i10);
            parcel.writeInt(this.f32153c ? 1 : 0);
        }

        SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f32152b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f32153c = parcel.readInt() == 1;
        }
    }

    class a implements TextWatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f32154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ EditText f32155c;

        a(EditText editText) {
            this.f32155c = editText;
            this.f32154b = editText.getLineCount();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.M0(!textInputLayout.f32137p2);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f32125l) {
                textInputLayout2.C0(editable);
            }
            if (TextInputLayout.this.f32144t) {
                TextInputLayout.this.Q0(editable);
            }
            int lineCount = this.f32155c.getLineCount();
            int i10 = this.f32154b;
            if (lineCount != i10) {
                if (lineCount < i10) {
                    int minimumHeight = ViewCompat.getMinimumHeight(this.f32155c);
                    int i11 = TextInputLayout.this.f32120i2;
                    if (minimumHeight != i11) {
                        this.f32155c.setMinimumHeight(i11);
                    }
                }
                this.f32154b = lineCount;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f32107d.i();
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.f32124k2.A0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class d extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextInputLayout f32159a;

        public d(@NonNull TextInputLayout textInputLayout) {
            this.f32159a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f32159a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f32159a.getHint();
            CharSequence error = this.f32159a.getError();
            CharSequence placeholderText = this.f32159a.getPlaceholderText();
            int counterMaxLength = this.f32159a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f32159a.getCounterOverflowDescription();
            boolean z10 = !TextUtils.isEmpty(text);
            boolean z11 = !TextUtils.isEmpty(hint);
            boolean z12 = !this.f32159a.Z();
            boolean z13 = !TextUtils.isEmpty(error);
            boolean z14 = z13 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z11 ? hint.toString() : "";
            this.f32159a.f32105c.B(accessibilityNodeInfoCompat);
            if (z10) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (z12 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (z10) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(!z10);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z14) {
                if (!z13) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            View viewU = this.f32159a.f32123k.u();
            if (viewU != null) {
                accessibilityNodeInfoCompat.setLabelFor(viewU);
            }
            this.f32159a.f32107d.o().o(view, accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.f32159a.f32107d.o().p(view, accessibilityEvent);
        }
    }

    public interface e {
        int a(@Nullable Editable editable);
    }

    public interface f {
        void a(@NonNull TextInputLayout textInputLayout);
    }

    public interface g {
        void a(@NonNull TextInputLayout textInputLayout, int i10);
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    private void A0(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.K;
        if (materialShapeDrawable != null) {
            int i10 = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i10 - this.S, rect.right, i10);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.L;
        if (materialShapeDrawable2 != null) {
            int i11 = rect.bottom;
            materialShapeDrawable2.setBounds(rect.left, i11 - this.T, rect.right, i11);
        }
    }

    private void B() {
        if (E()) {
            ((h) this.G).U0();
        }
    }

    private void B0() {
        if (this.f32134p != null) {
            EditText editText = this.f32109e;
            C0(editText == null ? null : editText.getText());
        }
    }

    private void C(boolean z10) {
        ValueAnimator valueAnimator = this.f32131n2;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f32131n2.cancel();
        }
        if (z10 && this.f32129m2) {
            m(1.0f);
        } else {
            this.f32124k2.A0(1.0f);
        }
        this.f32122j2 = false;
        if (E()) {
            j0();
        }
        P0();
        this.f32105c.m(false);
        this.f32107d.L(false);
    }

    private Fade D() {
        Fade fade = new Fade();
        fade.setDuration(com.google.android.material.motion.j.f(getContext(), R.attr.motionDurationShort2, 87));
        fade.setInterpolator(com.google.android.material.motion.j.g(getContext(), R.attr.motionEasingLinearInterpolator, com.google.android.material.animation.b.f29367a));
        return fade;
    }

    private static void D0(@NonNull Context context, @NonNull TextView textView, int i10, int i11, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private boolean E() {
        return this.D && !TextUtils.isEmpty(this.E) && (this.G instanceof h);
    }

    private void E0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f32134p;
        if (textView != null) {
            u0(textView, this.f32130n ? this.f32138q : this.f32141r);
            if (!this.f32130n && (colorStateList2 = this.f32151z) != null) {
                this.f32134p.setTextColor(colorStateList2);
            }
            if (!this.f32130n || (colorStateList = this.A) == null) {
                return;
            }
            this.f32134p.setTextColor(colorStateList);
        }
    }

    @RequiresApi(29)
    private void F0() {
        ColorStateList colorStateList;
        ColorStateList colorStateListL = this.B;
        if (colorStateListL == null) {
            colorStateListL = com.google.android.material.color.s.l(getContext(), R.attr.colorControlActivated);
        }
        EditText editText = this.f32109e;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(this.f32109e.getTextCursorDrawable()).mutate();
        if (a0() && (colorStateList = this.C) != null) {
            colorStateListL = colorStateList;
        }
        DrawableCompat.setTintList(drawableMutate, colorStateListL);
    }

    private void G() {
        Iterator<f> it2 = this.f32136p1.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    private void H(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.L == null || (materialShapeDrawable = this.K) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.f32109e.isFocused()) {
            Rect bounds = this.L.getBounds();
            Rect bounds2 = this.K.getBounds();
            float fG = this.f32124k2.G();
            int iCenterX = bounds2.centerX();
            bounds.left = com.google.android.material.animation.b.c(iCenterX, bounds2.left, fG);
            bounds.right = com.google.android.material.animation.b.c(iCenterX, bounds2.right, fG);
            this.L.draw(canvas);
        }
    }

    private void I(@NonNull Canvas canvas) {
        if (this.D) {
            this.f32124k2.l(canvas);
        }
    }

    private void I0() {
        ViewCompat.setBackground(this.f32109e, getEditTextBoxBackground());
    }

    private void J(boolean z10) {
        ValueAnimator valueAnimator = this.f32131n2;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f32131n2.cancel();
        }
        if (z10 && this.f32129m2) {
            m(0.0f);
        } else {
            this.f32124k2.A0(0.0f);
        }
        if (E() && ((h) this.G).T0()) {
            B();
        }
        this.f32122j2 = true;
        P();
        this.f32105c.m(true);
        this.f32107d.L(true);
    }

    private MaterialShapeDrawable K(boolean z10) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float f10 = z10 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f32109e;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.a().K(f10).P(f10).x(dimensionPixelOffset).C(dimensionPixelOffset).m();
        EditText editText2 = this.f32109e;
        MaterialShapeDrawable materialShapeDrawableO = MaterialShapeDrawable.o(getContext(), popupElevation, editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null);
        materialShapeDrawableO.setShapeAppearanceModel(nVarM);
        materialShapeDrawableO.r0(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return materialShapeDrawableO;
    }

    private boolean K0() {
        int iMax;
        if (this.f32109e == null || this.f32109e.getMeasuredHeight() >= (iMax = Math.max(this.f32107d.getMeasuredHeight(), this.f32105c.getMeasuredHeight()))) {
            return false;
        }
        this.f32109e.setMinimumHeight(iMax);
        return true;
    }

    private static Drawable L(MaterialShapeDrawable materialShapeDrawable, int i10, int i11, int[][] iArr) {
        return new RippleDrawable(new ColorStateList(iArr, new int[]{com.google.android.material.color.s.t(i11, i10, 0.1f), i10}), materialShapeDrawable, materialShapeDrawable);
    }

    private void L0() {
        if (this.P != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f32102b.getLayoutParams();
            int iW = w();
            if (iW != layoutParams.topMargin) {
                layoutParams.topMargin = iW;
                this.f32102b.requestLayout();
            }
        }
    }

    private int M(int i10, boolean z10) {
        int compoundPaddingLeft;
        if (z10 || getPrefixText() == null) {
            compoundPaddingLeft = (!z10 || getSuffixText() == null) ? this.f32109e.getCompoundPaddingLeft() : this.f32107d.A();
        } else {
            compoundPaddingLeft = this.f32105c.c();
        }
        return i10 + compoundPaddingLeft;
    }

    private int N(int i10, boolean z10) {
        int compoundPaddingRight;
        if (z10 || getSuffixText() == null) {
            compoundPaddingRight = (!z10 || getPrefixText() == null) ? this.f32109e.getCompoundPaddingRight() : this.f32105c.c();
        } else {
            compoundPaddingRight = this.f32107d.A();
        }
        return i10 - compoundPaddingRight;
    }

    private void N0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f32109e;
        boolean z12 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f32109e;
        boolean z13 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.L1;
        if (colorStateList2 != null) {
            this.f32124k2.f0(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.L1;
            this.f32124k2.f0(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f32117h2) : this.f32117h2));
        } else if (v0()) {
            this.f32124k2.f0(this.f32123k.s());
        } else if (this.f32130n && (textView = this.f32134p) != null) {
            this.f32124k2.f0(textView.getTextColors());
        } else if (z13 && (colorStateList = this.R1) != null) {
            this.f32124k2.k0(colorStateList);
        }
        if (z12 || !this.f32127l2 || (isEnabled() && z13)) {
            if (z11 || this.f32122j2) {
                C(z10);
                return;
            }
            return;
        }
        if (z11 || !this.f32122j2) {
            J(z10);
        }
    }

    private static Drawable O(Context context, MaterialShapeDrawable materialShapeDrawable, int i10, int[][] iArr) {
        int iC = com.google.android.material.color.s.c(context, R.attr.colorSurface, f32099y2);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int iT = com.google.android.material.color.s.t(i10, iC, 0.1f);
        materialShapeDrawable2.p0(new ColorStateList(iArr, new int[]{iT, 0}));
        materialShapeDrawable2.setTint(iC);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iT, iC});
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable3.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
    }

    private void O0() {
        EditText editText;
        if (this.f32145u == null || (editText = this.f32109e) == null) {
            return;
        }
        this.f32145u.setGravity(editText.getGravity());
        this.f32145u.setPadding(this.f32109e.getCompoundPaddingLeft(), this.f32109e.getCompoundPaddingTop(), this.f32109e.getCompoundPaddingRight(), this.f32109e.getCompoundPaddingBottom());
    }

    private void P() {
        TextView textView = this.f32145u;
        if (textView == null || !this.f32144t) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(this.f32102b, this.f32150y);
        this.f32145u.setVisibility(4);
    }

    private void P0() {
        EditText editText = this.f32109e;
        Q0(editText == null ? null : editText.getText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0(@Nullable Editable editable) {
        if (this.f32132o.a(editable) != 0 || this.f32122j2) {
            P();
        } else {
            y0();
        }
    }

    private void R0(boolean z10, boolean z11) {
        int defaultColor = this.f32106c2.getDefaultColor();
        int colorForState = this.f32106c2.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f32106c2.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.U = colorForState2;
        } else if (z11) {
            this.U = colorForState;
        } else {
            this.U = defaultColor;
        }
    }

    private boolean a0() {
        return v0() || (this.f32134p != null && this.f32130n);
    }

    private boolean d0() {
        return this.P == 1 && this.f32109e.getMinLines() <= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g0(Editable editable) {
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f32109e;
        if (!(editText instanceof AutoCompleteTextView) || r.a(editText)) {
            return this.G;
        }
        int iD = com.google.android.material.color.s.d(this.f32109e, R.attr.colorControlHighlight);
        int i10 = this.P;
        if (i10 == 2) {
            return O(getContext(), this.G, iD, f32098x2);
        }
        if (i10 == 1) {
            return L(this.G, this.V, iD, f32098x2);
        }
        return null;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.I == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.I = stateListDrawable;
            stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.I.addState(new int[0], K(false));
        }
        return this.I;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.H == null) {
            this.H = K(true);
        }
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() {
        this.f32109e.requestLayout();
    }

    private void i0() {
        q();
        J0();
        S0();
        z0();
        l();
        if (this.P != 0) {
            L0();
        }
        t0();
    }

    private void j0() {
        if (E()) {
            RectF rectF = this.f32103b1;
            this.f32124k2.o(rectF, this.f32109e.getWidth(), this.f32109e.getGravity());
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            p(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.R);
            ((h) this.G).W0(rectF);
        }
    }

    private void k() {
        TextView textView = this.f32145u;
        if (textView != null) {
            this.f32102b.addView(textView);
            this.f32145u.setVisibility(0);
        }
    }

    private void l() {
        if (this.f32109e == null || this.P != 1) {
            return;
        }
        if (com.google.android.material.resources.d.k(getContext())) {
            EditText editText = this.f32109e;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f32109e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (com.google.android.material.resources.d.j(getContext())) {
            EditText editText2 = this.f32109e;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f32109e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private void l0() {
        if (!E() || this.f32122j2) {
            return;
        }
        B();
        j0();
    }

    private static void m0(@NonNull ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                m0((ViewGroup) childAt, z10);
            }
        }
    }

    private void n() {
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable == null) {
            return;
        }
        com.google.android.material.shape.n shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
        com.google.android.material.shape.n nVar = this.M;
        if (shapeAppearanceModel != nVar) {
            this.G.setShapeAppearanceModel(nVar);
        }
        if (x()) {
            this.G.E0(this.R, this.U);
        }
        int iR = r();
        this.V = iR;
        this.G.p0(ColorStateList.valueOf(iR));
        o();
        J0();
    }

    private void o() {
        if (this.K == null || this.L == null) {
            return;
        }
        if (y()) {
            this.K.p0(this.f32109e.isFocused() ? ColorStateList.valueOf(this.V1) : ColorStateList.valueOf(this.U));
            this.L.p0(ColorStateList.valueOf(this.U));
        }
        invalidate();
    }

    private void p(@NonNull RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.O;
        rectF.left = f10 - i10;
        rectF.right += i10;
    }

    private void q() {
        int i10 = this.P;
        if (i10 == 0) {
            this.G = null;
            this.K = null;
            this.L = null;
            return;
        }
        if (i10 == 1) {
            this.G = new MaterialShapeDrawable(this.M);
            this.K = new MaterialShapeDrawable();
            this.L = new MaterialShapeDrawable();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.P + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.D || (this.G instanceof h)) {
                this.G = new MaterialShapeDrawable(this.M);
            } else {
                this.G = h.R0(this.M);
            }
            this.K = null;
            this.L = null;
        }
    }

    private int r() {
        return this.P == 1 ? com.google.android.material.color.s.s(com.google.android.material.color.s.e(this, R.attr.colorSurface, 0), this.V) : this.V;
    }

    @NonNull
    private Rect s(@NonNull Rect rect) {
        if (this.f32109e == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f32135p0;
        boolean zS = p0.s(this);
        rect2.bottom = rect.bottom;
        int i10 = this.P;
        if (i10 == 1) {
            rect2.left = M(rect.left, zS);
            rect2.top = rect.top + this.Q;
            rect2.right = N(rect.right, zS);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = M(rect.left, zS);
            rect2.top = getPaddingTop();
            rect2.right = N(rect.right, zS);
            return rect2;
        }
        rect2.left = rect.left + this.f32109e.getPaddingLeft();
        rect2.top = rect.top - w();
        rect2.right = rect.right - this.f32109e.getPaddingRight();
        return rect2;
    }

    private void s0() {
        TextView textView = this.f32145u;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void setEditText(EditText editText) {
        if (this.f32109e != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3) {
            boolean z10 = editText instanceof TextInputEditText;
        }
        this.f32109e = editText;
        int i10 = this.f32114g;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f32118i);
        }
        int i11 = this.f32116h;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f32121j);
        }
        this.J = false;
        i0();
        setTextInputAccessibilityDelegate(new d(this));
        this.f32124k2.P0(this.f32109e.getTypeface());
        this.f32124k2.x0(this.f32109e.getTextSize());
        int i12 = Build.VERSION.SDK_INT;
        this.f32124k2.s0(this.f32109e.getLetterSpacing());
        int gravity = this.f32109e.getGravity();
        this.f32124k2.l0((gravity & (-113)) | 48);
        this.f32124k2.w0(gravity);
        this.f32120i2 = ViewCompat.getMinimumHeight(editText);
        this.f32109e.addTextChangedListener(new a(editText));
        if (this.L1 == null) {
            this.L1 = this.f32109e.getHintTextColors();
        }
        if (this.D) {
            if (TextUtils.isEmpty(this.E)) {
                CharSequence hint = this.f32109e.getHint();
                this.f32111f = hint;
                setHint(hint);
                this.f32109e.setHint((CharSequence) null);
            }
            this.F = true;
        }
        if (i12 >= 29) {
            F0();
        }
        if (this.f32134p != null) {
            C0(this.f32109e.getText());
        }
        H0();
        this.f32123k.f();
        this.f32105c.bringToFront();
        this.f32107d.bringToFront();
        G();
        this.f32107d.D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        N0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.E)) {
            return;
        }
        this.E = charSequence;
        this.f32124k2.M0(charSequence);
        if (this.f32122j2) {
            return;
        }
        j0();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f32144t == z10) {
            return;
        }
        if (z10) {
            k();
        } else {
            s0();
            this.f32145u = null;
        }
        this.f32144t = z10;
    }

    private int t(@NonNull Rect rect, @NonNull Rect rect2, float f10) {
        return d0() ? (int) (rect2.top + f10) : rect.bottom - this.f32109e.getCompoundPaddingBottom();
    }

    private void t0() {
        EditText editText = this.f32109e;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i10 = this.P;
                if (i10 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i10 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    private int u(@NonNull Rect rect, float f10) {
        return d0() ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f32109e.getCompoundPaddingTop();
    }

    @NonNull
    private Rect v(@NonNull Rect rect) {
        if (this.f32109e == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f32135p0;
        float fD = this.f32124k2.D();
        rect2.left = rect.left + this.f32109e.getCompoundPaddingLeft();
        rect2.top = u(rect, fD);
        rect2.right = rect.right - this.f32109e.getCompoundPaddingRight();
        rect2.bottom = t(rect, rect2, fD);
        return rect2;
    }

    private int w() {
        float fR;
        if (!this.D) {
            return 0;
        }
        int i10 = this.P;
        if (i10 == 0) {
            fR = this.f32124k2.r();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fR = this.f32124k2.r() / 2.0f;
        }
        return (int) fR;
    }

    private boolean w0() {
        return (this.f32107d.J() || ((this.f32107d.C() && S()) || this.f32107d.y() != null)) && this.f32107d.getMeasuredWidth() > 0;
    }

    private boolean x() {
        return this.P == 2 && y();
    }

    private boolean x0() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f32105c.getMeasuredWidth() > 0;
    }

    private boolean y() {
        return this.R > -1 && this.U != 0;
    }

    private void y0() {
        if (this.f32145u == null || !this.f32144t || TextUtils.isEmpty(this.f32143s)) {
            return;
        }
        this.f32145u.setText(this.f32143s);
        TransitionManager.beginDelayedTransition(this.f32102b, this.f32149x);
        this.f32145u.setVisibility(0);
        this.f32145u.bringToFront();
        announceForAccessibility(this.f32143s);
    }

    private void z0() {
        if (this.P == 1) {
            if (com.google.android.material.resources.d.k(getContext())) {
                this.Q = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (com.google.android.material.resources.d.j(getContext())) {
                this.Q = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    public void A() {
        this.f32107d.j();
    }

    void C0(@Nullable Editable editable) {
        int iA = this.f32132o.a(editable);
        boolean z10 = this.f32130n;
        int i10 = this.f32128m;
        if (i10 == -1) {
            this.f32134p.setText(String.valueOf(iA));
            this.f32134p.setContentDescription(null);
            this.f32130n = false;
        } else {
            this.f32130n = iA > i10;
            D0(getContext(), this.f32134p, iA, this.f32128m, this.f32130n);
            if (z10 != this.f32130n) {
                E0();
            }
            this.f32134p.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(iA), Integer.valueOf(this.f32128m))));
        }
        if (this.f32109e == null || z10 == this.f32130n) {
            return;
        }
        M0(false);
        S0();
        H0();
    }

    @VisibleForTesting
    boolean F() {
        return E() && ((h) this.G).T0();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    boolean G0() {
        boolean z10;
        if (this.f32109e == null) {
            return false;
        }
        boolean z11 = true;
        if (x0()) {
            int measuredWidth = this.f32105c.getMeasuredWidth() - this.f32109e.getPaddingLeft();
            if (this.f32119i1 == null || this.f32126l1 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f32119i1 = colorDrawable;
                this.f32126l1 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f32109e);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f32119i1;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f32109e, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z10 = true;
            } else {
                z10 = false;
            }
        } else if (this.f32119i1 != null) {
            Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f32109e);
            TextViewCompat.setCompoundDrawablesRelative(this.f32109e, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
            this.f32119i1 = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (w0()) {
            int measuredWidth2 = this.f32107d.B().getMeasuredWidth() - this.f32109e.getPaddingRight();
            CheckableImageButton checkableImageButtonM = this.f32107d.m();
            if (checkableImageButtonM != null) {
                measuredWidth2 = measuredWidth2 + checkableImageButtonM.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButtonM.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f32109e);
            Drawable drawable3 = this.f32139q1;
            if (drawable3 == null || this.f32142r1 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f32139q1 = colorDrawable2;
                    this.f32142r1 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.f32139q1;
                if (drawable4 != drawable5) {
                    this.f32147v1 = drawable4;
                    TextViewCompat.setCompoundDrawablesRelative(this.f32109e, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f32142r1 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f32109e, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f32139q1, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.f32139q1 == null) {
                return z10;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f32109e);
            if (compoundDrawablesRelative4[2] == this.f32139q1) {
                TextViewCompat.setCompoundDrawablesRelative(this.f32109e, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f32147v1, compoundDrawablesRelative4[3]);
            } else {
                z11 = z10;
            }
            this.f32139q1 = null;
        }
        return z11;
    }

    void H0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f32109e;
        if (editText == null || this.P != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (v0()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f32130n && (textView = this.f32134p) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f32109e.refreshDrawableState();
        }
    }

    void J0() {
        EditText editText = this.f32109e;
        if (editText == null || this.G == null) {
            return;
        }
        if ((this.J || editText.getBackground() == null) && this.P != 0) {
            I0();
            this.J = true;
        }
    }

    void M0(boolean z10) {
        N0(z10, false);
    }

    public boolean Q() {
        return this.f32125l;
    }

    public boolean R() {
        return this.f32107d.G();
    }

    public boolean S() {
        return this.f32107d.I();
    }

    void S0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.G == null || this.P == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f32109e) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f32109e) != null && editText.isHovered())) {
            z10 = true;
        }
        if (!isEnabled()) {
            this.U = this.f32117h2;
        } else if (v0()) {
            if (this.f32106c2 != null) {
                R0(z11, z10);
            } else {
                this.U = getErrorCurrentTextColors();
            }
        } else if (!this.f32130n || (textView = this.f32134p) == null) {
            if (z11) {
                this.U = this.f32104b2;
            } else if (z10) {
                this.U = this.f32101a2;
            } else {
                this.U = this.V1;
            }
        } else if (this.f32106c2 != null) {
            R0(z11, z10);
        } else {
            this.U = textView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            F0();
        }
        this.f32107d.M();
        p0();
        if (this.P == 2) {
            int i10 = this.R;
            if (z11 && isEnabled()) {
                this.R = this.T;
            } else {
                this.R = this.S;
            }
            if (this.R != i10) {
                l0();
            }
        }
        if (this.P == 1) {
            if (!isEnabled()) {
                this.V = this.f32110e2;
            } else if (z10 && !z11) {
                this.V = this.f32115g2;
            } else if (z11) {
                this.V = this.f32113f2;
            } else {
                this.V = this.f32108d2;
            }
        }
        n();
    }

    public boolean T() {
        return this.f32123k.F();
    }

    public boolean U() {
        return this.f32127l2;
    }

    @VisibleForTesting
    final boolean V() {
        return this.f32123k.y();
    }

    public boolean W() {
        return this.f32123k.G();
    }

    public boolean X() {
        return this.f32129m2;
    }

    public boolean Y() {
        return this.D;
    }

    final boolean Z() {
        return this.f32122j2;
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i10, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f32102b.addView(view, layoutParams2);
        this.f32102b.setLayoutParams(layoutParams);
        L0();
        setEditText((EditText) view);
    }

    @Deprecated
    public boolean b0() {
        return this.f32107d.K();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean c0() {
        return this.F;
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i10) {
        EditText editText = this.f32109e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f32111f != null) {
            boolean z10 = this.F;
            this.F = false;
            CharSequence hint = editText.getHint();
            this.f32109e.setHint(this.f32111f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f32109e.setHint(hint);
                this.F = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f32102b.getChildCount());
        for (int i11 = 0; i11 < this.f32102b.getChildCount(); i11++) {
            View childAt = this.f32102b.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f32109e) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.f32137p2 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f32137p2 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        I(canvas);
        H(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f32133o2) {
            return;
        }
        this.f32133o2 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.f32124k2;
        boolean zK0 = bVar != null ? bVar.K0(drawableState) | false : false;
        if (this.f32109e != null) {
            M0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        H0();
        S0();
        if (zK0) {
            invalidate();
        }
        this.f32133o2 = false;
    }

    public boolean e0() {
        return this.f32105c.k();
    }

    public boolean f0() {
        return this.f32105c.l();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f32109e;
        return editText != null ? editText.getBaseline() + getPaddingTop() + w() : super.getBaseline();
    }

    @NonNull
    MaterialShapeDrawable getBoxBackground() {
        int i10 = this.P;
        if (i10 == 1 || i10 == 2) {
            return this.G;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.V;
    }

    public int getBoxBackgroundMode() {
        return this.P;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.Q;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return p0.s(this) ? this.M.j().a(this.f32103b1) : this.M.l().a(this.f32103b1);
    }

    public float getBoxCornerRadiusBottomStart() {
        return p0.s(this) ? this.M.l().a(this.f32103b1) : this.M.j().a(this.f32103b1);
    }

    public float getBoxCornerRadiusTopEnd() {
        return p0.s(this) ? this.M.r().a(this.f32103b1) : this.M.t().a(this.f32103b1);
    }

    public float getBoxCornerRadiusTopStart() {
        return p0.s(this) ? this.M.t().a(this.f32103b1) : this.M.r().a(this.f32103b1);
    }

    public int getBoxStrokeColor() {
        return this.f32104b2;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f32106c2;
    }

    public int getBoxStrokeWidth() {
        return this.S;
    }

    public int getBoxStrokeWidthFocused() {
        return this.T;
    }

    public int getCounterMaxLength() {
        return this.f32128m;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f32125l && this.f32130n && (textView = this.f32134p) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.A;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f32151z;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorColor() {
        return this.B;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorErrorColor() {
        return this.C;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.L1;
    }

    @Nullable
    public EditText getEditText() {
        return this.f32109e;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f32107d.n();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f32107d.p();
    }

    public int getEndIconMinSize() {
        return this.f32107d.q();
    }

    public int getEndIconMode() {
        return this.f32107d.r();
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.f32107d.s();
    }

    @NonNull
    CheckableImageButton getEndIconView() {
        return this.f32107d.t();
    }

    @Nullable
    public CharSequence getError() {
        if (this.f32123k.F()) {
            return this.f32123k.q();
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f32123k.o();
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f32123k.p();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f32123k.r();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f32107d.u();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f32123k.G()) {
            return this.f32123k.t();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f32123k.w();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.D) {
            return this.E;
        }
        return null;
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.f32124k2.r();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.f32124k2.w();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.R1;
    }

    @NonNull
    public e getLengthCounter() {
        return this.f32132o;
    }

    public int getMaxEms() {
        return this.f32116h;
    }

    @Px
    public int getMaxWidth() {
        return this.f32121j;
    }

    public int getMinEms() {
        return this.f32114g;
    }

    @Px
    public int getMinWidth() {
        return this.f32118i;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f32107d.w();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f32107d.x();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f32144t) {
            return this.f32143s;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f32148w;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f32146v;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f32105c.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f32105c.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f32105c.d();
    }

    @NonNull
    public com.google.android.material.shape.n getShapeAppearanceModel() {
        return this.M;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f32105c.e();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f32105c.f();
    }

    public int getStartIconMinSize() {
        return this.f32105c.g();
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f32105c.h();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f32107d.y();
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f32107d.z();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f32107d.B();
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f32112f1;
    }

    public void i(@NonNull f fVar) {
        this.f32136p1.add(fVar);
        if (this.f32109e != null) {
            fVar.a(this);
        }
    }

    public void j(@NonNull g gVar) {
        this.f32107d.g(gVar);
    }

    @Deprecated
    public void k0(boolean z10) {
        this.f32107d.A0(z10);
    }

    @VisibleForTesting
    void m(float f10) {
        if (this.f32124k2.G() == f10) {
            return;
        }
        if (this.f32131n2 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f32131n2 = valueAnimator;
            valueAnimator.setInterpolator(com.google.android.material.motion.j.g(getContext(), R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b));
            this.f32131n2.setDuration(com.google.android.material.motion.j.f(getContext(), R.attr.motionDurationMedium4, 167));
            this.f32131n2.addUpdateListener(new c());
        }
        this.f32131n2.setFloatValues(this.f32124k2.G(), f10);
        this.f32131n2.start();
    }

    public void n0() {
        this.f32107d.N();
    }

    public void o0() {
        this.f32107d.O();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f32124k2.a0(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f32107d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.f32140q2 = false;
        boolean zK0 = K0();
        boolean zG0 = G0();
        if (zK0 || zG0) {
            this.f32109e.post(new Runnable() { // from class: com.google.android.material.textfield.k0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32182b.h0();
                }
            });
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f32109e;
        if (editText != null) {
            Rect rect = this.W;
            com.google.android.material.internal.d.a(this, editText, rect);
            A0(rect);
            if (this.D) {
                this.f32124k2.x0(this.f32109e.getTextSize());
                int gravity = this.f32109e.getGravity();
                this.f32124k2.l0((gravity & (-113)) | 48);
                this.f32124k2.w0(gravity);
                this.f32124k2.h0(s(rect));
                this.f32124k2.r0(v(rect));
                this.f32124k2.c0();
                if (!E() || this.f32122j2) {
                    return;
                }
                j0();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.f32140q2) {
            this.f32107d.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f32140q2 = true;
        }
        O0();
        this.f32107d.D0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f32152b);
        if (savedState.f32153c) {
            post(new b());
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z10 = i10 == 1;
        if (z10 != this.N) {
            float fA = this.M.r().a(this.f32103b1);
            float fA2 = this.M.t().a(this.f32103b1);
            com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.a().J(this.M.s()).O(this.M.q()).w(this.M.k()).B(this.M.i()).K(fA2).P(fA).x(this.M.l().a(this.f32103b1)).C(this.M.j().a(this.f32103b1)).m();
            this.N = z10;
            setShapeAppearanceModel(nVarM);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (v0()) {
            savedState.f32152b = getError();
        }
        savedState.f32153c = this.f32107d.H();
        return savedState;
    }

    public void p0() {
        this.f32105c.n();
    }

    public void q0(@NonNull f fVar) {
        this.f32136p1.remove(fVar);
    }

    public void r0(@NonNull g gVar) {
        this.f32107d.Q(gVar);
    }

    public void setBoxBackgroundColor(@ColorInt int i10) {
        if (this.V != i10) {
            this.V = i10;
            this.f32108d2 = i10;
            this.f32113f2 = i10;
            this.f32115g2 = i10;
            n();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i10) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f32108d2 = defaultColor;
        this.V = defaultColor;
        this.f32110e2 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f32113f2 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.f32115g2 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        n();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.P) {
            return;
        }
        this.P = i10;
        if (this.f32109e != null) {
            i0();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.Q = i10;
    }

    public void setBoxCornerFamily(int i10) {
        this.M = this.M.v().I(i10, this.M.r()).N(i10, this.M.t()).v(i10, this.M.j()).A(i10, this.M.l()).m();
        n();
    }

    public void setBoxCornerRadii(float f10, float f11, float f12, float f13) {
        boolean zS = p0.s(this);
        this.N = zS;
        float f14 = zS ? f11 : f10;
        if (!zS) {
            f10 = f11;
        }
        float f15 = zS ? f13 : f12;
        if (!zS) {
            f12 = f13;
        }
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable != null && materialShapeDrawable.T() == f14 && this.G.U() == f10 && this.G.u() == f15 && this.G.v() == f12) {
            return;
        }
        this.M = this.M.v().K(f14).P(f10).x(f15).C(f12).m();
        n();
    }

    public void setBoxCornerRadiiResources(@DimenRes int i10, @DimenRes int i11, @DimenRes int i12, @DimenRes int i13) {
        setBoxCornerRadii(getContext().getResources().getDimension(i10), getContext().getResources().getDimension(i11), getContext().getResources().getDimension(i13), getContext().getResources().getDimension(i12));
    }

    public void setBoxStrokeColor(@ColorInt int i10) {
        if (this.f32104b2 != i10) {
            this.f32104b2 = i10;
            S0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.V1 = colorStateList.getDefaultColor();
            this.f32117h2 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f32101a2 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.f32104b2 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.f32104b2 != colorStateList.getDefaultColor()) {
            this.f32104b2 = colorStateList.getDefaultColor();
        }
        S0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f32106c2 != colorStateList) {
            this.f32106c2 = colorStateList;
            S0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.S = i10;
        S0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.T = i10;
        S0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f32125l != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f32134p = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.f32112f1;
                if (typeface != null) {
                    this.f32134p.setTypeface(typeface);
                }
                this.f32134p.setMaxLines(1);
                this.f32123k.e(this.f32134p, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f32134p.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                E0();
                B0();
            } else {
                this.f32123k.H(this.f32134p, 2);
                this.f32134p = null;
            }
            this.f32125l = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f32128m != i10) {
            if (i10 > 0) {
                this.f32128m = i10;
            } else {
                this.f32128m = -1;
            }
            if (this.f32125l) {
                B0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f32138q != i10) {
            this.f32138q = i10;
            E0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            E0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f32141r != i10) {
            this.f32141r = i10;
            E0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32151z != colorStateList) {
            this.f32151z = colorStateList;
            E0();
        }
    }

    @RequiresApi(29)
    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            F0();
        }
    }

    @RequiresApi(29)
    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            if (a0()) {
                F0();
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.L1 = colorStateList;
        this.R1 = colorStateList;
        if (this.f32109e != null) {
            M0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        m0(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f32107d.S(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f32107d.T(z10);
    }

    public void setEndIconContentDescription(@StringRes int i10) {
        this.f32107d.U(i10);
    }

    public void setEndIconDrawable(@DrawableRes int i10) {
        this.f32107d.W(i10);
    }

    public void setEndIconMinSize(@IntRange(from = 0) int i10) {
        this.f32107d.Y(i10);
    }

    public void setEndIconMode(int i10) {
        this.f32107d.Z(i10);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32107d.a0(onClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32107d.b0(onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f32107d.c0(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32107d.d0(colorStateList);
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32107d.e0(mode);
    }

    public void setEndIconVisible(boolean z10) {
        this.f32107d.f0(z10);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f32123k.F()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f32123k.A();
        } else {
            this.f32123k.V(charSequence);
        }
    }

    public void setErrorAccessibilityLiveRegion(int i10) {
        this.f32123k.J(i10);
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f32123k.K(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f32123k.L(z10);
    }

    public void setErrorIconDrawable(@DrawableRes int i10) {
        this.f32107d.g0(i10);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32107d.i0(onClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32107d.j0(onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32107d.k0(colorStateList);
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32107d.l0(mode);
    }

    public void setErrorTextAppearance(@StyleRes int i10) {
        this.f32123k.M(i10);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f32123k.N(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.f32127l2 != z10) {
            this.f32127l2 = z10;
            M0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (W()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!W()) {
                setHelperTextEnabled(true);
            }
            this.f32123k.W(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f32123k.Q(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f32123k.P(z10);
    }

    public void setHelperTextTextAppearance(@StyleRes int i10) {
        this.f32123k.O(i10);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.D) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.f32129m2 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.D) {
            this.D = z10;
            if (z10) {
                CharSequence hint = this.f32109e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.E)) {
                        setHint(hint);
                    }
                    this.f32109e.setHint((CharSequence) null);
                }
                this.F = true;
            } else {
                this.F = false;
                if (!TextUtils.isEmpty(this.E) && TextUtils.isEmpty(this.f32109e.getHint())) {
                    this.f32109e.setHint(this.E);
                }
                setHintInternal(null);
            }
            if (this.f32109e != null) {
                L0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i10) {
        this.f32124k2.i0(i10);
        this.R1 = this.f32124k2.p();
        if (this.f32109e != null) {
            M0(false);
            L0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.R1 != colorStateList) {
            if (this.L1 == null) {
                this.f32124k2.k0(colorStateList);
            }
            this.R1 = colorStateList;
            if (this.f32109e != null) {
                M0(false);
            }
        }
    }

    public void setLengthCounter(@NonNull e eVar) {
        this.f32132o = eVar;
    }

    public void setMaxEms(int i10) {
        this.f32116h = i10;
        EditText editText = this.f32109e;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(@Px int i10) {
        this.f32121j = i10;
        EditText editText = this.f32109e;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(@DimenRes int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f32114g = i10;
        EditText editText = this.f32109e;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(@Px int i10) {
        this.f32118i = i10;
        EditText editText = this.f32109e;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(@DimenRes int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i10) {
        this.f32107d.n0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i10) {
        this.f32107d.p0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        this.f32107d.r0(z10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f32107d.s0(colorStateList);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32107d.t0(mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f32145u == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f32145u = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f32145u, 2);
            Fade fadeD = D();
            this.f32149x = fadeD;
            fadeD.setStartDelay(67L);
            this.f32150y = D();
            setPlaceholderTextAppearance(this.f32148w);
            setPlaceholderTextColor(this.f32146v);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f32144t) {
                setPlaceholderTextEnabled(true);
            }
            this.f32143s = charSequence;
        }
        P0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i10) {
        this.f32148w = i10;
        TextView textView = this.f32145u;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i10);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32146v != colorStateList) {
            this.f32146v = colorStateList;
            TextView textView = this.f32145u;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f32105c.o(charSequence);
    }

    public void setPrefixTextAppearance(@StyleRes int i10) {
        this.f32105c.p(i10);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f32105c.q(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull com.google.android.material.shape.n nVar) {
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable == null || materialShapeDrawable.getShapeAppearanceModel() == nVar) {
            return;
        }
        this.M = nVar;
        n();
    }

    public void setStartIconCheckable(boolean z10) {
        this.f32105c.r(z10);
    }

    public void setStartIconContentDescription(@StringRes int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i10) {
        setStartIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setStartIconMinSize(@IntRange(from = 0) int i10) {
        this.f32105c.u(i10);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32105c.v(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32105c.w(onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f32105c.x(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32105c.y(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32105c.z(mode);
    }

    public void setStartIconVisible(boolean z10) {
        this.f32105c.A(z10);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f32107d.u0(charSequence);
    }

    public void setSuffixTextAppearance(@StyleRes int i10) {
        this.f32107d.v0(i10);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f32107d.w0(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable d dVar) {
        EditText editText = this.f32109e;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, dVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f32112f1) {
            this.f32112f1 = typeface;
            this.f32124k2.P0(typeface);
            this.f32123k.S(typeface);
            TextView textView = this.f32134p;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void u0(@NonNull TextView textView, @StyleRes int i10) {
        boolean z10 = true;
        try {
            TextViewCompat.setTextAppearance(textView, i10);
            if (Build.VERSION.SDK_INT < 23 || textView.getTextColors().getDefaultColor() != -65281) {
                z10 = false;
            }
        } catch (Exception unused) {
        }
        if (z10) {
            TextViewCompat.setTextAppearance(textView, R.style.TextAppearance_AppCompat_Caption);
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_error));
        }
    }

    boolean v0() {
        return this.f32123k.m();
    }

    public void z() {
        this.f32136p1.clear();
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        this.f32107d.V(charSequence);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f32107d.X(drawable);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f32107d.h0(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f32107d.o0(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f32107d.q0(drawable);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.f32105c.s(charSequence);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f32105c.t(drawable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f32092r2;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f32114g = -1;
        this.f32116h = -1;
        this.f32118i = -1;
        this.f32121j = -1;
        this.f32123k = new v(this);
        this.f32132o = new e() { // from class: com.google.android.material.textfield.j0
            @Override // com.google.android.material.textfield.TextInputLayout.e
            public final int a(Editable editable) {
                return TextInputLayout.g0(editable);
            }
        };
        this.W = new Rect();
        this.f32135p0 = new Rect();
        this.f32103b1 = new RectF();
        this.f32136p1 = new LinkedHashSet<>();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.f32124k2 = bVar;
        this.f32140q2 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f32102b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = com.google.android.material.animation.b.f29367a;
        bVar.N0(timeInterpolator);
        bVar.I0(timeInterpolator);
        bVar.l0(8388659);
        int[] iArr = R.styleable.TextInputLayout;
        int i12 = R.styleable.TextInputLayout_counterTextAppearance;
        int i13 = R.styleable.TextInputLayout_counterOverflowTextAppearance;
        int i14 = R.styleable.TextInputLayout_errorTextAppearance;
        int i15 = R.styleable.TextInputLayout_helperTextTextAppearance;
        int i16 = R.styleable.TextInputLayout_hintTextAppearance;
        TintTypedArray tintTypedArrayL = com.google.android.material.internal.g0.l(context2, attributeSet, iArr, i10, i11, i12, i13, i14, i15, i16);
        z zVar = new z(this, tintTypedArrayL);
        this.f32105c = zVar;
        this.D = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayL.getText(R.styleable.TextInputLayout_android_hint));
        this.f32129m2 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f32127l2 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_expandedHintEnabled, true);
        int i17 = R.styleable.TextInputLayout_android_minEms;
        if (tintTypedArrayL.hasValue(i17)) {
            setMinEms(tintTypedArrayL.getInt(i17, -1));
        } else {
            int i18 = R.styleable.TextInputLayout_android_minWidth;
            if (tintTypedArrayL.hasValue(i18)) {
                setMinWidth(tintTypedArrayL.getDimensionPixelSize(i18, -1));
            }
        }
        int i19 = R.styleable.TextInputLayout_android_maxEms;
        if (tintTypedArrayL.hasValue(i19)) {
            setMaxEms(tintTypedArrayL.getInt(i19, -1));
        } else {
            int i20 = R.styleable.TextInputLayout_android_maxWidth;
            if (tintTypedArrayL.hasValue(i20)) {
                setMaxWidth(tintTypedArrayL.getDimensionPixelSize(i20, -1));
            }
        }
        this.M = com.google.android.material.shape.n.e(context2, attributeSet, i10, i11).m();
        this.O = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.Q = tintTypedArrayL.getDimensionPixelOffset(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.S = tintTypedArrayL.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.T = tintTypedArrayL.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.R = this.S;
        float dimension = tintTypedArrayL.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float dimension2 = tintTypedArrayL.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float dimension3 = tintTypedArrayL.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float dimension4 = tintTypedArrayL.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        com.google.android.material.shape.n.b bVarV = this.M.v();
        if (dimension >= 0.0f) {
            bVarV.K(dimension);
        }
        if (dimension2 >= 0.0f) {
            bVarV.P(dimension2);
        }
        if (dimension3 >= 0.0f) {
            bVarV.C(dimension3);
        }
        if (dimension4 >= 0.0f) {
            bVarV.x(dimension4);
        }
        this.M = bVarV.m();
        ColorStateList colorStateListB = com.google.android.material.resources.d.b(context2, tintTypedArrayL, R.styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.f32108d2 = defaultColor;
            this.V = defaultColor;
            if (colorStateListB.isStateful()) {
                this.f32110e2 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.f32113f2 = colorStateListB.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.f32115g2 = colorStateListB.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.f32113f2 = this.f32108d2;
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context2, R.color.mtrl_filled_background_color);
                this.f32110e2 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f32115g2 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.V = 0;
            this.f32108d2 = 0;
            this.f32110e2 = 0;
            this.f32113f2 = 0;
            this.f32115g2 = 0;
        }
        int i21 = R.styleable.TextInputLayout_android_textColorHint;
        if (tintTypedArrayL.hasValue(i21)) {
            ColorStateList colorStateList2 = tintTypedArrayL.getColorStateList(i21);
            this.R1 = colorStateList2;
            this.L1 = colorStateList2;
        }
        int i22 = R.styleable.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateListB2 = com.google.android.material.resources.d.b(context2, tintTypedArrayL, i22);
        this.f32104b2 = tintTypedArrayL.getColor(i22, 0);
        this.V1 = ContextCompat.getColor(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.f32117h2 = ContextCompat.getColor(context2, R.color.mtrl_textinput_disabled_color);
        this.f32101a2 = ContextCompat.getColor(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        int i23 = R.styleable.TextInputLayout_boxStrokeErrorColor;
        if (tintTypedArrayL.hasValue(i23)) {
            setBoxStrokeErrorColor(com.google.android.material.resources.d.b(context2, tintTypedArrayL, i23));
        }
        if (tintTypedArrayL.getResourceId(i16, -1) != -1) {
            setHintTextAppearance(tintTypedArrayL.getResourceId(i16, 0));
        }
        this.B = tintTypedArrayL.getColorStateList(R.styleable.TextInputLayout_cursorColor);
        this.C = tintTypedArrayL.getColorStateList(R.styleable.TextInputLayout_cursorErrorColor);
        int resourceId = tintTypedArrayL.getResourceId(i14, 0);
        CharSequence text = tintTypedArrayL.getText(R.styleable.TextInputLayout_errorContentDescription);
        int i24 = tintTypedArrayL.getInt(R.styleable.TextInputLayout_errorAccessibilityLiveRegion, 1);
        boolean z10 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
        int resourceId2 = tintTypedArrayL.getResourceId(i15, 0);
        boolean z11 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence text2 = tintTypedArrayL.getText(R.styleable.TextInputLayout_helperText);
        int resourceId3 = tintTypedArrayL.getResourceId(R.styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence text3 = tintTypedArrayL.getText(R.styleable.TextInputLayout_placeholderText);
        boolean z12 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayL.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.f32141r = tintTypedArrayL.getResourceId(i12, 0);
        this.f32138q = tintTypedArrayL.getResourceId(i13, 0);
        setBoxBackgroundMode(tintTypedArrayL.getInt(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i24);
        setCounterOverflowTextAppearance(this.f32138q);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f32141r);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        int i25 = R.styleable.TextInputLayout_errorTextColor;
        if (tintTypedArrayL.hasValue(i25)) {
            setErrorTextColor(tintTypedArrayL.getColorStateList(i25));
        }
        int i26 = R.styleable.TextInputLayout_helperTextTextColor;
        if (tintTypedArrayL.hasValue(i26)) {
            setHelperTextColor(tintTypedArrayL.getColorStateList(i26));
        }
        int i27 = R.styleable.TextInputLayout_hintTextColor;
        if (tintTypedArrayL.hasValue(i27)) {
            setHintTextColor(tintTypedArrayL.getColorStateList(i27));
        }
        int i28 = R.styleable.TextInputLayout_counterTextColor;
        if (tintTypedArrayL.hasValue(i28)) {
            setCounterTextColor(tintTypedArrayL.getColorStateList(i28));
        }
        int i29 = R.styleable.TextInputLayout_counterOverflowTextColor;
        if (tintTypedArrayL.hasValue(i29)) {
            setCounterOverflowTextColor(tintTypedArrayL.getColorStateList(i29));
        }
        int i30 = R.styleable.TextInputLayout_placeholderTextColor;
        if (tintTypedArrayL.hasValue(i30)) {
            setPlaceholderTextColor(tintTypedArrayL.getColorStateList(i30));
        }
        s sVar = new s(this, tintTypedArrayL);
        this.f32107d = sVar;
        boolean z13 = tintTypedArrayL.getBoolean(R.styleable.TextInputLayout_android_enabled, true);
        tintTypedArrayL.recycle();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        frameLayout.addView(zVar);
        frameLayout.addView(sVar);
        addView(frameLayout);
        setEnabled(z13);
        setHelperTextEnabled(z11);
        setErrorEnabled(z10);
        setCounterEnabled(z12);
        setHelperText(text2);
    }

    public void setHint(@StringRes int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}
