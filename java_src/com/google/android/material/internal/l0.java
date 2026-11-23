package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
class l0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f30938a;

    @SuppressLint({"ViewConstructor", "PrivateApi"})
    static class a extends ViewGroup {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static Method f30939g;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f30940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f30941c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Drawable> f30942d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        l0 f30943e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f30944f;

        static {
            try {
                Class cls = Integer.TYPE;
                f30939g = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, l0 l0Var) {
            super(context);
            this.f30942d = null;
            this.f30940b = viewGroup;
            this.f30941c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f30943e = l0Var;
        }

        private void c() {
            if (this.f30944f) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        private void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f30942d;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f30944f = true;
                    this.f30940b.removeView(this);
                }
            }
        }

        private void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f30940b.getLocationOnScreen(iArr2);
            this.f30941c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void a(Drawable drawable) {
            c();
            if (this.f30942d == null) {
                this.f30942d = new ArrayList<>();
            }
            if (this.f30942d.contains(drawable)) {
                return;
            }
            this.f30942d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f30940b && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f30940b.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f30940b.getLocationOnScreen(iArr);
            this.f30941c.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f30941c.getWidth(), this.f30941c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f30942d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f30942d.get(i10).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected ViewParent f(int i10, int i11, Rect rect) {
            if (this.f30940b == null || f30939g == null) {
                return null;
            }
            try {
                e(new int[2]);
                f30939g.invoke(this.f30940b, Integer.valueOf(i10), Integer.valueOf(i11), rect);
                return null;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public void g(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f30942d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void h(View view) {
            super.removeView(view);
            d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f30940b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f30940b == null) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f30942d) != null && arrayList.contains(drawable));
        }
    }

    l0(Context context, ViewGroup viewGroup, View view) {
        this.f30938a = new a(context, viewGroup, view, this);
    }

    static l0 e(View view) {
        ViewGroup viewGroupL = p0.l(view);
        if (viewGroupL == null) {
            return null;
        }
        int childCount = viewGroupL.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroupL.getChildAt(i10);
            if (childAt instanceof a) {
                return ((a) childAt).f30943e;
            }
        }
        return new i0(viewGroupL.getContext(), viewGroupL, view);
    }

    @Override // com.google.android.material.internal.n0
    public void a(@NonNull Drawable drawable) {
        this.f30938a.g(drawable);
    }

    @Override // com.google.android.material.internal.n0
    public void b(@NonNull Drawable drawable) {
        this.f30938a.a(drawable);
    }
}
