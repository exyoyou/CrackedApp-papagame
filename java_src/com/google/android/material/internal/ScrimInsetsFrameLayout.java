package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    Drawable f30801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Rect f30802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f30803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f30805f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f30806g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f30807h;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f30802c == null) {
                scrimInsetsFrameLayout.f30802c = new Rect();
            }
            ScrimInsetsFrameLayout.this.f30802c.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.h(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f30801b == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f30802c == null || this.f30801b == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f30804e) {
            this.f30803d.set(0, 0, width, this.f30802c.top);
            this.f30801b.setBounds(this.f30803d);
            this.f30801b.draw(canvas);
        }
        if (this.f30805f) {
            this.f30803d.set(0, height - this.f30802c.bottom, width, height);
            this.f30801b.setBounds(this.f30803d);
            this.f30801b.draw(canvas);
        }
        if (this.f30806g) {
            Rect rect = this.f30803d;
            Rect rect2 = this.f30802c;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f30801b.setBounds(this.f30803d);
            this.f30801b.draw(canvas);
        }
        if (this.f30807h) {
            Rect rect3 = this.f30803d;
            Rect rect4 = this.f30802c;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f30801b.setBounds(this.f30803d);
            this.f30801b.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    protected void h(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f30801b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f30801b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z10) {
        this.f30805f = z10;
    }

    public void setDrawLeftInsetForeground(boolean z10) {
        this.f30806g = z10;
    }

    public void setDrawRightInsetForeground(boolean z10) {
        this.f30807h = z10;
    }

    public void setDrawTopInsetForeground(boolean z10) {
        this.f30804e = z10;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f30801b = drawable;
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f30803d = new Rect();
        this.f30804e = true;
        this.f30805f = true;
        this.f30806g = true;
        this.f30807h = true;
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.ScrimInsetsFrameLayout, i10, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f30801b = typedArrayK.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayK.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }
}
