package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R;
import com.google.android.material.resources.d;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import com.google.android.material.shape.r;

/* JADX INFO: loaded from: classes5.dex */
public class ShapeableImageView extends AppCompatImageView implements r {
    private static final int K = R.style.Widget_MaterialComponents_ShapeableImageView;
    private static final int L = Integer.MIN_VALUE;
    private n A;

    @Dimension
    private float B;
    private Path C;

    @Dimension
    private int D;

    @Dimension
    private int E;

    @Dimension
    private int F;

    @Dimension
    private int G;

    @Dimension
    private int H;

    @Dimension
    private int I;
    private boolean J;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final o f30759s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final RectF f30760t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final RectF f30761u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Paint f30762v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Paint f30763w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Path f30764x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private ColorStateList f30765y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private MaterialShapeDrawable f30766z;

    @TargetApi(21)
    class a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f30767a = new Rect();

        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.A == null) {
                return;
            }
            if (ShapeableImageView.this.f30766z == null) {
                ShapeableImageView.this.f30766z = new MaterialShapeDrawable(ShapeableImageView.this.A);
            }
            ShapeableImageView.this.f30760t.round(this.f30767a);
            ShapeableImageView.this.f30766z.setBounds(this.f30767a);
            ShapeableImageView.this.f30766z.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    private void e(Canvas canvas) {
        if (this.f30765y == null) {
            return;
        }
        this.f30762v.setStrokeWidth(this.B);
        int colorForState = this.f30765y.getColorForState(getDrawableState(), this.f30765y.getDefaultColor());
        if (this.B <= 0.0f || colorForState == 0) {
            return;
        }
        this.f30762v.setColor(colorForState);
        canvas.drawPath(this.f30764x, this.f30762v);
    }

    private boolean f() {
        return (this.H == Integer.MIN_VALUE && this.I == Integer.MIN_VALUE) ? false : true;
    }

    private boolean g() {
        return getLayoutDirection() == 1;
    }

    private void h(int i10, int i11) {
        this.f30760t.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
        this.f30759s.d(this.A, 1.0f, this.f30760t, this.f30764x);
        this.C.rewind();
        this.C.addPath(this.f30764x);
        this.f30761u.set(0.0f, 0.0f, i10, i11);
        this.C.addRect(this.f30761u, Path.Direction.CCW);
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.G;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i10 = this.I;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        return g() ? this.D : this.F;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.I) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.H) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.D;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.H) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.I) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.F;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i10 = this.H;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        return g() ? this.F : this.D;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.E;
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return this.A;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f30765y;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.B;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.C, this.f30763w);
        e(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.J && isLayoutDirectionResolved()) {
            this.J = true;
            if (isPaddingRelative() || f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        h(i10, i11);
    }

    public void setContentPadding(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        this.H = Integer.MIN_VALUE;
        this.I = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.D) + i10, (super.getPaddingTop() - this.E) + i11, (super.getPaddingRight() - this.F) + i12, (super.getPaddingBottom() - this.G) + i13);
        this.D = i10;
        this.E = i11;
        this.F = i12;
        this.G = i13;
    }

    @RequiresApi(17)
    public void setContentPaddingRelative(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i10, (super.getPaddingTop() - this.E) + i11, (super.getPaddingEnd() - getContentPaddingEnd()) + i12, (super.getPaddingBottom() - this.G) + i13);
        this.D = g() ? i12 : i10;
        this.E = i11;
        if (!g()) {
            i10 = i12;
        }
        this.F = i10;
        this.G = i13;
    }

    @Override // android.view.View
    public void setPadding(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPadding(i10 + getContentPaddingLeft(), i11 + getContentPaddingTop(), i12 + getContentPaddingRight(), i13 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPaddingRelative(i10 + getContentPaddingStart(), i11 + getContentPaddingTop(), i12 + getContentPaddingEnd(), i13 + getContentPaddingBottom());
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.A = nVar;
        MaterialShapeDrawable materialShapeDrawable = this.f30766z;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(nVar);
        }
        h(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f30765y = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setStrokeWidth(@Dimension float f10) {
        if (this.B != f10) {
            this.B = f10;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        setStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = K;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f30759s = o.k();
        this.f30764x = new Path();
        this.J = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f30763w = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f30760t = new RectF();
        this.f30761u = new RectF();
        this.C = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.ShapeableImageView, i10, i11);
        setLayerType(2, null);
        this.f30765y = d.a(context2, typedArrayObtainStyledAttributes, R.styleable.ShapeableImageView_strokeColor);
        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPadding, 0);
        this.D = dimensionPixelSize;
        this.E = dimensionPixelSize;
        this.F = dimensionPixelSize;
        this.G = dimensionPixelSize;
        this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f30762v = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.A = n.e(context2, attributeSet, i10, i11).m();
        setOutlineProvider(new a());
    }
}
