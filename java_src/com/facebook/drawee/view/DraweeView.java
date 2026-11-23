package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.common.internal.h;
import javax.annotation.Nullable;
import s3.b;

/* JADX INFO: loaded from: classes9.dex */
public class DraweeView<DH extends s3.b> extends ImageView {
    private static boolean sGlobalLegacyVisibilityHandlingEnabled;
    private float mAspectRatio;
    private b<DH> mDraweeHolder;
    private boolean mInitialised;
    private boolean mLegacyVisibilityHandlingEnabled;
    private final a.C0567a mMeasureSpec;

    public DraweeView(Context context) {
        super(context);
        this.mMeasureSpec = new a.C0567a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        a(context);
    }

    private void a(Context context) {
        boolean zE;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DraweeView#init");
            }
            if (this.mInitialised) {
                if (zE) {
                    return;
                } else {
                    return;
                }
            }
            boolean z10 = true;
            this.mInitialised = true;
            this.mDraweeHolder = b.c(null, context);
            ColorStateList imageTintList = getImageTintList();
            if (imageTintList == null) {
                if (zE) {
                    return;
                } else {
                    return;
                }
            }
            setColorFilter(imageTintList.getDefaultColor());
            if (!sGlobalLegacyVisibilityHandlingEnabled || context.getApplicationInfo().targetSdkVersion < 24) {
                z10 = false;
            }
            this.mLegacyVisibilityHandlingEnabled = z10;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private void b() {
        Drawable drawable;
        if (!this.mLegacyVisibilityHandlingEnabled || (drawable = getDrawable()) == null) {
            return;
        }
        drawable.setVisible(getVisibility() == 0, false);
    }

    public static void setGlobalLegacyVisibilityHandlingEnabled(boolean legacyVisibilityHandlingEnabled) {
        sGlobalLegacyVisibilityHandlingEnabled = legacyVisibilityHandlingEnabled;
    }

    protected void doAttach() {
        this.mDraweeHolder.l();
    }

    protected void doDetach() {
        this.mDraweeHolder.m();
    }

    public float getAspectRatio() {
        return this.mAspectRatio;
    }

    @Nullable
    public s3.a getController() {
        return this.mDraweeHolder.e();
    }

    public DH getHierarchy() {
        return (DH) this.mDraweeHolder.g();
    }

    @Nullable
    public Drawable getTopLevelDrawable() {
        return this.mDraweeHolder.h();
    }

    public boolean hasController() {
        return this.mDraweeHolder.e() != null;
    }

    public boolean hasHierarchy() {
        return this.mDraweeHolder.i();
    }

    protected void onAttach() {
        doAttach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        onAttach();
    }

    protected void onDetach() {
        doDetach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
        onDetach();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        b();
        onAttach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        a.C0567a c0567a = this.mMeasureSpec;
        c0567a.f27361a = widthMeasureSpec;
        c0567a.f27362b = heightMeasureSpec;
        a.b(c0567a, this.mAspectRatio, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        a.C0567a c0567a2 = this.mMeasureSpec;
        super.onMeasure(c0567a2.f27361a, c0567a2.f27362b);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        b();
        onDetach();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (this.mDraweeHolder.n(event)) {
            return true;
        }
        return super.onTouchEvent(event);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        b();
    }

    public void setAspectRatio(float aspectRatio) {
        if (aspectRatio == this.mAspectRatio) {
            return;
        }
        this.mAspectRatio = aspectRatio;
        requestLayout();
    }

    public void setController(@Nullable s3.a draweeController) {
        this.mDraweeHolder.p(draweeController);
        super.setImageDrawable(this.mDraweeHolder.h());
    }

    public void setHierarchy(DH hierarchy) {
        this.mDraweeHolder.q(hierarchy);
        super.setImageDrawable(this.mDraweeHolder.h());
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bm) {
        a(getContext());
        this.mDraweeHolder.p(null);
        super.setImageBitmap(bm);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(@Nullable Drawable drawable) {
        a(getContext());
        this.mDraweeHolder.p(null);
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int resId) {
        a(getContext());
        this.mDraweeHolder.p(null);
        super.setImageResource(resId);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        a(getContext());
        this.mDraweeHolder.p(null);
        super.setImageURI(uri);
    }

    public void setLegacyVisibilityHandlingEnabled(boolean legacyVisibilityHandlingEnabled) {
        this.mLegacyVisibilityHandlingEnabled = legacyVisibilityHandlingEnabled;
    }

    @Override // android.view.View
    public String toString() {
        h.b bVarE = h.e(this);
        b<DH> bVar = this.mDraweeHolder;
        return bVarE.f("holder", bVar != null ? bVar.toString() : "<no holder set>").toString();
    }

    public DraweeView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.mMeasureSpec = new a.C0567a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        a(context);
    }

    public DraweeView(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mMeasureSpec = new a.C0567a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        a(context);
    }

    @TargetApi(21)
    public DraweeView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mMeasureSpec = new a.C0567a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        a(context);
    }
}
