package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {
    private static final int[] W;
    private static final int[] X;

    @Nullable
    private final AccessibilityManager T;
    private boolean U;

    @Nullable
    private BaseTransientBottomBar.BaseCallback<Snackbar> V;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class a extends BaseTransientBottomBar.BaseCallback<Snackbar> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f31938f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f31939g = 1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f31940h = 2;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f31941i = 3;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f31942j = 4;

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(Snackbar snackbar, int i10) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(Snackbar snackbar) {
        }
    }

    static {
        int i10 = R.attr.snackbarButtonStyle;
        W = new int[]{i10};
        X = new int[]{i10, R.attr.snackbarTextViewStyle};
    }

    private Snackbar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull b bVar) {
        super(context, viewGroup, view, bVar);
        this.T = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(view);
        B(1);
    }

    @NonNull
    public static Snackbar B0(@NonNull Context context, @NonNull View view, @NonNull CharSequence charSequence, int i10) {
        return E0(context, view, charSequence, i10);
    }

    @NonNull
    public static Snackbar C0(@NonNull View view, @StringRes int i10, int i11) {
        return D0(view, view.getResources().getText(i10), i11);
    }

    @NonNull
    public static Snackbar D0(@NonNull View view, @NonNull CharSequence charSequence, int i10) {
        return E0(null, view, charSequence, i10);
    }

    @NonNull
    private static Snackbar E0(@Nullable Context context, @NonNull View view, @NonNull CharSequence charSequence, int i10) {
        ViewGroup viewGroupU0 = u0(view);
        if (viewGroupU0 == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        if (context == null) {
            context = viewGroupU0.getContext();
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(context).inflate(z0(context) ? R.layout.mtrl_layout_snackbar_include : R.layout.design_layout_snackbar_include, viewGroupU0, false);
        Snackbar snackbar = new Snackbar(context, viewGroupU0, snackbarContentLayout, snackbarContentLayout);
        snackbar.P0(charSequence);
        snackbar.g0(i10);
        return snackbar;
    }

    @Nullable
    private static ViewGroup u0(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    private Button v0() {
        return w0().getActionView();
    }

    private SnackbarContentLayout w0() {
        return (SnackbarContentLayout) this.f31879i.getChildAt(0);
    }

    private TextView x0() {
        return w0().getMessageView();
    }

    @Deprecated
    protected static boolean y0(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(W);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    private static boolean z0(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(X);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void A() {
        super.A();
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar F0(@StringRes int i10, View.OnClickListener onClickListener) {
        return G0(getContext().getText(i10), onClickListener);
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public int G() {
        int iG = super.G();
        if (iG == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.T.getRecommendedTimeoutMillis(iG, (this.U ? 4 : 0) | 1 | 2);
        }
        if (this.U && this.T.isTouchExplorationEnabled()) {
            return -2;
        }
        return iG;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar G0(@Nullable CharSequence charSequence, @Nullable final View.OnClickListener onClickListener) {
        Button buttonV0 = v0();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            buttonV0.setVisibility(8);
            buttonV0.setOnClickListener(null);
            this.U = false;
        } else {
            this.U = true;
            buttonV0.setVisibility(0);
            buttonV0.setText(charSequence);
            buttonV0.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.snackbar.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f31947b.A0(onClickListener, view);
                }
            });
        }
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar H0(@ColorInt int i10) {
        v0().setTextColor(i10);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar I0(ColorStateList colorStateList) {
        v0().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar J0(@ColorInt int i10) {
        return K0(ColorStateList.valueOf(i10));
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar K0(@Nullable ColorStateList colorStateList) {
        this.f31879i.setBackgroundTintList(colorStateList);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar L0(@Nullable PorterDuff.Mode mode) {
        this.f31879i.setBackgroundTintMode(mode);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    @Deprecated
    public Snackbar M0(@Nullable a aVar) {
        BaseTransientBottomBar.BaseCallback<Snackbar> baseCallback = this.V;
        if (baseCallback != null) {
            a0(baseCallback);
        }
        if (aVar != null) {
            u(aVar);
        }
        this.V = aVar;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar N0(@Dimension int i10) {
        w0().setMaxInlineActionWidth(i10);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar O0(@StringRes int i10) {
        return P0(getContext().getText(i10));
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar P0(@NonNull CharSequence charSequence) {
        x0().setText(charSequence);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar Q0(@ColorInt int i10) {
        x0().setTextColor(i10);
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public boolean R() {
        return super.R();
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar R0(ColorStateList colorStateList) {
        x0().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public Snackbar S0(int i10) {
        x0().setMaxLines(i10);
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void l0() {
        super.l0();
    }
}
