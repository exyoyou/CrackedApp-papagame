package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @RequiresApi(16)
    public static final int f30948a = 768;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f30949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f30950b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f30951c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d f30952d;

        a(boolean z10, boolean z11, boolean z12, d dVar) {
            this.f30949a = z10;
            this.f30950b = z11;
            this.f30951c = z12;
            this.f30952d = dVar;
        }

        @Override // com.google.android.material.internal.p0.d
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull e eVar) {
            if (this.f30949a) {
                eVar.f30958d += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean zS = p0.s(view);
            if (this.f30950b) {
                if (zS) {
                    eVar.f30957c += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    eVar.f30955a += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f30951c) {
                if (zS) {
                    eVar.f30955a += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    eVar.f30957c += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            eVar.a(view);
            d dVar = this.f30952d;
            return dVar != null ? dVar.a(view, windowInsetsCompat, eVar) : windowInsetsCompat;
        }
    }

    class b implements OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f30953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f30954b;

        b(d dVar, e eVar) {
            this.f30953a = dVar;
            this.f30954b = eVar;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f30953a.a(view, windowInsetsCompat, new e(this.f30954b));
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface d {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, e eVar);
    }

    private p0() {
    }

    public static void A(@NonNull View view, @NonNull Rect rect) {
        view.setLeft(rect.left);
        view.setTop(rect.top);
        view.setRight(rect.right);
        view.setBottom(rect.bottom);
    }

    public static void B(@NonNull View view) {
        C(view, true);
    }

    public static void C(@NonNull View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (!z10 || (windowInsetsController = ViewCompat.getWindowInsetsController(view)) == null) {
            n(view).showSoftInput(view, 1);
        } else {
            windowInsetsController.show(WindowInsetsCompat.Type.ime());
        }
    }

    public static void b(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    @NonNull
    public static Rect c(@NonNull View view, @NonNull View view2) {
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i12 = i10 - iArr2[0];
        int i13 = i11 - iArr2[1];
        return new Rect(i12, i13, view2.getWidth() + i12, view2.getHeight() + i13);
    }

    @NonNull
    public static Rect d(@NonNull View view) {
        return e(view, 0);
    }

    @NonNull
    public static Rect e(@NonNull View view, int i10) {
        return new Rect(view.getLeft(), view.getTop() + i10, view.getRight(), view.getBottom() + i10);
    }

    public static void f(@NonNull View view, @Nullable AttributeSet attributeSet, int i10, int i11) {
        g(view, attributeSet, i10, i11, null);
    }

    public static void g(@NonNull View view, @Nullable AttributeSet attributeSet, int i10, int i11, @Nullable d dVar) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.Insets, i10, i11);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        h(view, new a(z10, z11, z12, dVar));
    }

    public static void h(@NonNull View view, @NonNull d dVar) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new b(dVar, new e(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        x(view);
    }

    public static float i(@NonNull Context context, @Dimension(unit = 0) int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    @Nullable
    public static Integer j(@NonNull View view) {
        ColorStateList colorStateListG = com.google.android.material.drawable.g.g(view.getBackground());
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    @NonNull
    public static List<View> k(@Nullable View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                arrayList.add(viewGroup.getChildAt(i10));
            }
        }
        return arrayList;
    }

    @Nullable
    public static ViewGroup l(@Nullable View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    @Nullable
    public static n0 m(@NonNull View view) {
        return o(l(view));
    }

    @Nullable
    private static InputMethodManager n(@NonNull View view) {
        return (InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class);
    }

    @Nullable
    public static n0 o(@Nullable View view) {
        if (view == null) {
            return null;
        }
        return new m0(view);
    }

    public static float p(@NonNull View view) {
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ViewCompat.getElevation((View) parent);
        }
        return elevation;
    }

    public static void q(@NonNull View view) {
        r(view, true);
    }

    public static void r(@NonNull View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (z10 && (windowInsetsController = ViewCompat.getWindowInsetsController(view)) != null) {
            windowInsetsController.hide(WindowInsetsCompat.Type.ime());
            return;
        }
        InputMethodManager inputMethodManagerN = n(view);
        if (inputMethodManagerN != null) {
            inputMethodManagerN.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean s(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode u(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void v(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            w(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void w(@NonNull ViewTreeObserver viewTreeObserver, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void x(@NonNull View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new c());
        }
    }

    public static void y(@NonNull View view) {
        z(view, true);
    }

    public static void z(@NonNull final View view, final boolean z10) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.o0
            @Override // java.lang.Runnable
            public final void run() {
                p0.C(view, z10);
            }
        });
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f30955a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f30956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f30957c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f30958d;

        public e(int i10, int i11, int i12, int i13) {
            this.f30955a = i10;
            this.f30956b = i11;
            this.f30957c = i12;
            this.f30958d = i13;
        }

        public void a(View view) {
            ViewCompat.setPaddingRelative(view, this.f30955a, this.f30956b, this.f30957c, this.f30958d);
        }

        public e(@NonNull e eVar) {
            this.f30955a = eVar.f30955a;
            this.f30956b = eVar.f30956b;
            this.f30957c = eVar.f30957c;
            this.f30958d = eVar.f30958d;
        }
    }
}
