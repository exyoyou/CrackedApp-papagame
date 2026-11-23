package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class MStarBar extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f65294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f65295g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f65296h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f65297i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f65298j;

    public interface a {
        void a(float mark);
    }

    public MStarBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65290b = 0;
        this.f65291c = 5;
        this.f65293e = 0.0f;
        this.f65298j = true;
        b(context, attrs);
    }

    private Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        int i10 = this.f65292d;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i10, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i11 = this.f65292d;
        drawable.setBounds(0, 0, i11, i11);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void b(Context context, AttributeSet attrs) {
        setClickable(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.RatingBar);
        this.f65290b = (int) typedArrayObtainStyledAttributes.getDimension(2, 0.0f);
        this.f65292d = (int) typedArrayObtainStyledAttributes.getDimension(5, 20.0f);
        this.f65291c = typedArrayObtainStyledAttributes.getInteger(1, 5);
        this.f65295g = typedArrayObtainStyledAttributes.getDrawable(3);
        this.f65298j = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.f65294f = a(typedArrayObtainStyledAttributes.getDrawable(4));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f65297i = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.f65297i;
        Bitmap bitmap = this.f65294f;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmap, tileMode, tileMode));
    }

    public float getStarMark() {
        return this.f65293e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f65294f == null || this.f65295g == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f65291c; i10++) {
            Drawable drawable = this.f65295g;
            int i11 = this.f65290b;
            int i12 = this.f65292d;
            drawable.setBounds((i11 + i12) * i10, 0, ((i11 + i12) * i10) + i12, i12);
            this.f65295g.draw(canvas);
        }
        float f10 = this.f65293e;
        if (f10 <= 1.0f) {
            int i13 = this.f65292d;
            canvas.drawRect(0.0f, 0.0f, i13 * f10, i13, this.f65297i);
            return;
        }
        int i14 = this.f65292d;
        canvas.drawRect(0.0f, 0.0f, i14, i14, this.f65297i);
        float f11 = this.f65293e;
        if (f11 - ((int) f11) == 0.0f) {
            for (int i15 = 1; i15 < this.f65293e; i15++) {
                canvas.translate(this.f65290b + this.f65292d, 0.0f);
                int i16 = this.f65292d;
                canvas.drawRect(0.0f, 0.0f, i16, i16, this.f65297i);
            }
            return;
        }
        for (int i17 = 1; i17 < this.f65293e - 1.0f; i17++) {
            canvas.translate(this.f65290b + this.f65292d, 0.0f);
            int i18 = this.f65292d;
            canvas.drawRect(0.0f, 0.0f, i18, i18, this.f65297i);
        }
        canvas.translate(this.f65290b + this.f65292d, 0.0f);
        float f12 = this.f65292d;
        float f13 = this.f65293e;
        canvas.drawRect(0.0f, 0.0f, ((Math.round((f13 - ((int) f13)) * 10.0f) * 1.0f) / 10.0f) * f12, this.f65292d, this.f65297i);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int i10 = this.f65292d;
        int i11 = this.f65291c;
        setMeasuredDimension((i10 * i11) + (this.f65290b * (i11 - 1)), i10);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return true;
        }
        int x10 = (int) event.getX();
        if (x10 < 0) {
            x10 = 0;
        }
        if (x10 > getMeasuredWidth()) {
            x10 = getMeasuredWidth();
        }
        int action = event.getAction();
        if (action == 0 || action == 2) {
            setStarMark((x10 * 1.0f) / ((getMeasuredWidth() * 1.0f) / this.f65291c));
        }
        invalidate();
        return super.onTouchEvent(event);
    }

    public void setIntegerMark(boolean integerMark) {
    }

    public void setOnStarChangeListener(a onStarChangeListener) {
        this.f65296h = onStarChangeListener;
    }

    public void setStarCount(int starCount) {
        this.f65291c = starCount;
        requestLayout();
    }

    public void setStarMark(double mark) {
        if (this.f65298j) {
            this.f65293e = (Math.round(mark * 10.0d) * 1.0f) / 10.0f;
        } else {
            this.f65293e = (int) Math.ceil(mark);
        }
        a aVar = this.f65296h;
        if (aVar != null) {
            aVar.a(this.f65293e);
        }
        invalidate();
    }

    public MStarBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65290b = 0;
        this.f65291c = 5;
        this.f65293e = 0.0f;
        this.f65298j = true;
        b(context, attrs);
    }
}
