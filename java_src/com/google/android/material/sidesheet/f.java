package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.sidesheet.c;

/* JADX INFO: loaded from: classes5.dex */
abstract class f<C extends c> extends AppCompatDialog {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f31765j = R.id.coordinator;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f31766k = R.id.touch_outside;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Sheet<C> f31767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private FrameLayout f31768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private FrameLayout f31769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f31770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f31771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f31772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f31773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.google.android.material.motion.c f31774i;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!f.this.f31771f) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                f fVar = f.this;
                if (fVar.f31771f) {
                    fVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }
    }

    f(@NonNull Context context, @StyleRes int i10, @AttrRes int i11, @StyleRes int i12) {
        super(context, l(context, i10, i11, i12));
        this.f31771f = true;
        this.f31772g = true;
        supportRequestWindowFeature(1);
    }

    private void d() {
        if (this.f31768c == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), i(), null);
            this.f31768c = frameLayout;
            FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(h());
            this.f31769d = frameLayout2;
            Sheet<C> sheetF = f(frameLayout2);
            this.f31767b = sheetF;
            c(sheetF);
            this.f31774i = new com.google.android.material.motion.c(this.f31767b, this.f31769d);
        }
    }

    @NonNull
    private FrameLayout g() {
        if (this.f31768c == null) {
            d();
        }
        return this.f31768c;
    }

    @NonNull
    private FrameLayout j() {
        if (this.f31769d == null) {
            d();
        }
        return this.f31769d;
    }

    private static int l(@NonNull Context context, @StyleRes int i10, @AttrRes int i11, @StyleRes int i12) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i11, typedValue, true) ? typedValue.resourceId : i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(View view) {
        if (this.f31771f && isShowing() && r()) {
            cancel();
        }
    }

    private void o() {
        FrameLayout frameLayout;
        Window window = getWindow();
        if (window == null || (frameLayout = this.f31769d) == null || !(frameLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            return;
        }
        window.setWindowAnimations(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) this.f31769d.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this.f31769d)) == 3 ? R.style.Animation_Material3_SideSheetDialog_Left : R.style.Animation_Material3_SideSheetDialog_Right);
    }

    private boolean r() {
        if (!this.f31773h) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
            this.f31772g = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f31773h = true;
        }
        return this.f31772g;
    }

    private void s() {
        com.google.android.material.motion.c cVar = this.f31774i;
        if (cVar == null) {
            return;
        }
        if (this.f31771f) {
            cVar.c();
        } else {
            cVar.f();
        }
    }

    private View t(int i10, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        d();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g().findViewById(f31765j);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout frameLayoutJ = j();
        frameLayoutJ.removeAllViews();
        if (layoutParams == null) {
            frameLayoutJ.addView(view);
        } else {
            frameLayoutJ.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(f31766k).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.sidesheet.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f31764b.n(view2);
            }
        });
        ViewCompat.setAccessibilityDelegate(j(), new a());
        return this.f31768c;
    }

    abstract void c(Sheet<C> sheet);

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        Sheet<C> sheetE = e();
        if (!this.f31770e || sheetE.getState() == 5) {
            super.cancel();
        } else {
            sheetE.g(5);
        }
    }

    @NonNull
    Sheet<C> e() {
        if (this.f31767b == null) {
            d();
        }
        return this.f31767b;
    }

    @NonNull
    abstract Sheet<C> f(@NonNull FrameLayout frameLayout);

    @IdRes
    abstract int h();

    @LayoutRes
    abstract int i();

    abstract int k();

    public boolean m() {
        return this.f31770e;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        o();
        s();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i10 = Build.VERSION.SDK_INT;
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            if (i10 < 23) {
                window.addFlags(67108864);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.google.android.material.motion.c cVar = this.f31774i;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected void onStart() {
        super.onStart();
        Sheet<C> sheet = this.f31767b;
        if (sheet == null || sheet.getState() != 5) {
            return;
        }
        this.f31767b.g(k());
    }

    public void p(boolean z10) {
        this.f31770e = z10;
    }

    public void q(@GravityInt int i10) {
        FrameLayout frameLayout = this.f31769d;
        if (frameLayout == null) {
            throw new IllegalStateException("Sheet view reference is null; sheet edge cannot be changed if the sheet view is null.");
        }
        if (ViewCompat.isLaidOut(frameLayout)) {
            throw new IllegalStateException("Sheet view has been laid out; sheet edge cannot be changed once the sheet has been laid out.");
        }
        ViewGroup.LayoutParams layoutParams = this.f31769d.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            ((CoordinatorLayout.LayoutParams) layoutParams).gravity = i10;
            o();
        }
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f31771f != z10) {
            this.f31771f = z10;
        }
        if (getWindow() != null) {
            s();
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f31771f) {
            this.f31771f = true;
        }
        this.f31772g = z10;
        this.f31773h = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i10) {
        super.setContentView(t(i10, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@Nullable View view) {
        super.setContentView(t(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        super.setContentView(t(0, view, layoutParams));
    }
}
