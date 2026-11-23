package com.windmill.sdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.base.WMLogUtil;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"AppCompatCustomView"})
public class TbCircleImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f87529a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f87530b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f87531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f87532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BitmapShader f87533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Matrix f87534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f87535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RectF f87536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RectF f87537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f87538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f87539k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f87540l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f87541m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f87542n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f87543o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f87544p;

    public TbCircleImageView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas, float width, float height, float doubleBorderWidth, float halfBorderWidth) {
        this.f87536h.set(halfBorderWidth, halfBorderWidth, width - halfBorderWidth, height - halfBorderWidth);
        this.f87537i.set(0.0f, 0.0f, width - doubleBorderWidth, height - doubleBorderWidth);
        float fMax = Math.max(this.f87543o - this.f87538j, 0.0f);
        if (this.f87540l) {
            float fMax2 = Math.max(this.f87543o - halfBorderWidth, 0.0f);
            canvas.drawRoundRect(this.f87536h, fMax2, fMax2, this.f87535g);
            int i10 = this.f87538j;
            canvas.translate(i10, i10);
        }
        canvas.drawRoundRect(this.f87537i, fMax, fMax, this.f87531c);
    }

    public BitmapShader createBitmapShader(Bitmap bitmap, int mTileX, int mTileY) {
        Shader.TileMode tileMode;
        Shader.TileMode tileMode2;
        if (mTileX != 1) {
            tileMode = mTileX != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.REPEAT;
        } else {
            tileMode = Shader.TileMode.MIRROR;
        }
        if (mTileY != 1) {
            tileMode2 = mTileY != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.REPEAT;
        } else {
            tileMode2 = Shader.TileMode.MIRROR;
        }
        return new BitmapShader(bitmap, tileMode, tileMode2);
    }

    public Bitmap getBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (!(drawable instanceof ColorDrawable)) {
            return null;
        }
        Rect bounds = drawable.getBounds();
        int i10 = bounds.right - bounds.left;
        int i11 = bounds.bottom - bounds.top;
        int color = ((ColorDrawable) drawable).getColor();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawARGB(Color.alpha(color), Color.red(color), Color.green(color), Color.blue(color));
        return bitmapCreateBitmap;
    }

    public int getBorderColor() {
        return this.f87539k;
    }

    public Paint getBorderPaint() {
        return this.f87535g;
    }

    public int getBorderWidth() {
        return this.f87538j;
    }

    @Override // android.view.View
    public Matrix getMatrix() {
        return this.f87534f;
    }

    public Paint getPaint() {
        return this.f87531c;
    }

    public Bitmap getRawBitmap() {
        return this.f87532d;
    }

    public RectF getRectBitmap() {
        return this.f87537i;
    }

    public RectF getRectBorder() {
        return this.f87536h;
    }

    public int getRoundRadius() {
        return this.f87543o;
    }

    public BitmapShader getShader() {
        return this.f87533e;
    }

    public int getShapeType() {
        return this.f87544p;
    }

    public int getTileX() {
        return this.f87542n;
    }

    public int getTileY() {
        return this.f87541m;
    }

    public boolean isCreateBorder() {
        return this.f87540l;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = getBitmap(getDrawable());
        if (bitmap == null) {
            super.onDraw(canvas);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        float width = (getWidth() - paddingLeft) - paddingRight;
        float height = (getHeight() - paddingTop) - paddingBottom;
        float fMin = Math.min(width, height);
        int i10 = this.f87544p;
        float f10 = i10 == 1 ? width : fMin;
        float f11 = i10 == 1 ? height : fMin;
        int i11 = this.f87538j;
        float f12 = i11 * 2.0f;
        float f13 = i11 / 2.0f;
        if (this.f87533e == null || !bitmap.equals(this.f87532d)) {
            this.f87532d = bitmap;
            this.f87533e = createBitmapShader(bitmap, this.f87542n, this.f87541m);
        }
        if (this.f87533e != null) {
            this.f87534f.setScale((f10 - f12) / this.f87532d.getWidth(), (f11 - f12) / this.f87532d.getHeight());
            this.f87533e.setLocalMatrix(this.f87534f);
        }
        this.f87531c.setShader(this.f87533e);
        if (this.f87540l) {
            this.f87535g.setStyle(Paint.Style.STROKE);
            this.f87535g.setStrokeWidth(this.f87538j);
            this.f87535g.setColor(this.f87540l ? this.f87539k : 0);
        }
        if (this.f87544p == 1) {
            a(canvas, width, height, f12, f13);
        } else {
            a(canvas, fMin / 2.0f, f13);
        }
    }

    public void setBorderColor(int borderColor) {
        this.f87539k = borderColor;
    }

    public void setBorderPaint(Paint borderPaint) {
        this.f87535g = borderPaint;
    }

    public void setBorderWidth(int borderWidth) {
        this.f87538j = borderWidth;
    }

    public void setCreateBorder(boolean createBorder) {
        this.f87540l = createBorder;
    }

    public void setMatrix(Matrix matrix) {
        this.f87534f = matrix;
    }

    public void setPaint(Paint paint) {
        this.f87531c = paint;
    }

    public void setRawBitmap(Bitmap rawBitmap) {
        this.f87532d = rawBitmap;
    }

    public void setRectBitmap(RectF rectBitmap) {
        this.f87537i = rectBitmap;
    }

    public void setRectBorder(RectF rectBorder) {
        this.f87536h = rectBorder;
    }

    public void setRoundRadius(int roundRadius) {
        this.f87543o = roundRadius;
    }

    public void setShader(BitmapShader shader) {
        this.f87533e = shader;
    }

    public void setShapeType(int shapeType) {
        this.f87544p = shapeType;
    }

    public void setTileX(int tileX) {
        this.f87542n = tileX;
    }

    public void setTileY(int tileY) {
        this.f87541m = tileY;
    }

    public TbCircleImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TbCircleImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f87538j = 4;
        this.f87539k = -1;
        this.f87540l = false;
        this.f87541m = 0;
        this.f87542n = 0;
        this.f87543o = 20;
        this.f87544p = 2;
        try {
            a();
            int attrId = ResourceUtil.getAttrId(context, "tobid_ci_shape_type");
            int attrId2 = ResourceUtil.getAttrId(context, "tobid_ci_create_border");
            int attrId3 = ResourceUtil.getAttrId(context, "tobid_ci_border_color");
            int attrId4 = ResourceUtil.getAttrId(context, "tobid_ci_border_width");
            int attrId5 = ResourceUtil.getAttrId(context, "tobid_ci_round_radius");
            WMLogUtil.d("TbCircleImageView", "TbCircleImageView:" + attrId + ":" + attrId2 + ":" + attrId3 + ":" + attrId4 + ":" + attrId5);
            int[] iArr = {attrId, attrId2, attrId3, attrId4, attrId5};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr);
            for (int i10 = 0; i10 < typedArrayObtainStyledAttributes.getIndexCount(); i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == Arrays.binarySearch(iArr, attrId)) {
                    this.f87544p = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == Arrays.binarySearch(iArr, attrId2)) {
                    this.f87540l = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == Arrays.binarySearch(iArr, attrId3)) {
                    this.f87539k = typedArrayObtainStyledAttributes.getColor(index, -1);
                } else if (index == Arrays.binarySearch(iArr, attrId4)) {
                    this.f87538j = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 4);
                } else {
                    if (index == Arrays.binarySearch(iArr, attrId5)) {
                        this.f87543o = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 20);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            WMLogUtil.d("TbCircleImageView", "TbCircleImageView:" + this.f87544p + ":" + this.f87540l + ":" + this.f87539k + ":" + this.f87538j + ":" + this.f87543o);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Canvas canvas, float radius, float halfBorderWidth) {
        float f10 = radius - this.f87538j;
        if (this.f87540l) {
            canvas.drawCircle(radius, radius, radius - halfBorderWidth, this.f87535g);
            int i10 = this.f87538j;
            canvas.translate(i10, i10);
        }
        canvas.drawCircle(f10, f10, f10, this.f87531c);
    }

    private void a() {
        Paint paint = new Paint(1);
        this.f87531c = paint;
        paint.setAntiAlias(true);
        setLayerType(0, null);
        this.f87534f = new Matrix();
        Paint paint2 = new Paint(1);
        this.f87535g = paint2;
        paint2.setAntiAlias(true);
        this.f87537i = new RectF();
        this.f87536h = new RectF();
    }
}
