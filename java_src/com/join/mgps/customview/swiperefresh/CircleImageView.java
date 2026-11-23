package com.join.mgps.customview.swiperefresh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public class CircleImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f66885u = 503316480;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f66886v = 1023410176;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final float f66887w = 0.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final float f66888x = 1.75f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final float f66889y = 3.5f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f66890z = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Animation.AnimationListener f66891s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f66892t;

    private class a extends OvalShape {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RadialGradient f66893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Paint f66894c = new Paint();

        a(int shadowRadius) {
            CircleImageView.this.f66892t = shadowRadius;
            a((int) rect().width());
        }

        private void a(int diameter) {
            float f10 = diameter / 2;
            RadialGradient radialGradient = new RadialGradient(f10, f10, CircleImageView.this.f66892t, new int[]{CircleImageView.f66886v, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f66893b = radialGradient;
            this.f66894c.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            CircleImageView.this.getWidth();
            CircleImageView.this.getHeight();
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float width, float height) {
            super.onResize(width, height);
            a((int) width);
        }
    }

    CircleImageView(Context context, int color) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f10 = getContext().getResources().getDisplayMetrics().density;
        int i10 = (int) (1.75f * f10);
        int i11 = (int) (0.0f * f10);
        this.f66892t = (int) (f66889y * f10);
        if (f()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f10 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new a(this.f66892t));
            ViewCompat.setLayerType(this, 1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f66892t, i11, i10, f66885u);
            int i12 = this.f66892t;
            setPadding(i12, i12, i12, i12);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(-11621911);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    private boolean f() {
        return true;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f66891s;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f66891s;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (f()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f66892t * 2), getMeasuredHeight() + (this.f66892t * 2));
    }

    public void setAnimationListener(Animation.AnimationListener listener) {
        this.f66891s = listener;
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(color);
        }
    }

    public void setBackgroundColorRes(int colorRes) {
        setBackgroundColor(ContextCompat.getColor(getContext(), colorRes));
    }
}
