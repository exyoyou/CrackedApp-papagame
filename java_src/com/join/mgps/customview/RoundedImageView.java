package com.join.mgps.customview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class RoundedImageView extends ImageView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f65497m = -2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f65498n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f65499o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65500p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f65501q = "RoundedImageView";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final float f65502r = 6.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final float f65503s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Shader.TileMode f65504t = Shader.TileMode.CLAMP;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final ImageView.ScaleType[] f65505u = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final /* synthetic */ boolean f65506v = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f65507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f65508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorStateList f65509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65511f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Shader.TileMode f65512g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Shader.TileMode f65513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65514i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable f65515j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f65516k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ImageView.ScaleType f65517l;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f65518a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f65518a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65518a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f65518a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f65518a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f65518a[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f65518a[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f65518a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundedImageView(Context context) {
        super(context);
        this.f65507b = 6.0f;
        this.f65508c = 0.0f;
        this.f65509d = ColorStateList.valueOf(-16777216);
        this.f65510e = false;
        this.f65511f = false;
        Shader.TileMode tileMode = f65504t;
        this.f65512g = tileMode;
        this.f65513h = tileMode;
    }

    private static Shader.TileMode d(int tileMode) {
        if (tileMode == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (tileMode == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (tileMode != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    private Drawable e() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.f65514i;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to find resource: ");
                sb2.append(this.f65514i);
                this.f65514i = 0;
            }
        }
        return l0.c(drawable);
    }

    private void f(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof l0) {
            ((l0) drawable).q(this.f65517l).o(this.f65507b).n(this.f65508c).m(this.f65509d).p(this.f65510e).r(this.f65512g).s(this.f65513h);
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                f(layerDrawable.getDrawable(i10));
            }
        }
        invalidate();
    }

    private void g(boolean convert) {
        if (this.f65511f) {
            if (convert) {
                this.f65516k = l0.c(this.f65516k);
            }
            f(this.f65516k);
        }
    }

    private void h() {
        f(this.f65515j);
    }

    public boolean a() {
        return this.f65510e;
    }

    public void b(boolean mutate) {
        if (this.f65511f == mutate) {
            return;
        }
        this.f65511f = mutate;
        g(true);
        invalidate();
    }

    public boolean c() {
        return this.f65511f;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.f65509d.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f65509d;
    }

    public float getBorderWidth() {
        return this.f65508c;
    }

    public float getCornerRadius() {
        return this.f65507b;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f65517l;
    }

    public Shader.TileMode getTileModeX() {
        return this.f65512g;
    }

    public Shader.TileMode getTileModeY() {
        return this.f65513h;
    }

    @Override // android.view.View
    public void setBackground(Drawable background) {
        setBackgroundDrawable(background);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable background) {
        this.f65516k = background;
        g(true);
        super.setBackgroundDrawable(this.f65516k);
    }

    public void setBorderColor(int color) {
        setBorderColor(ColorStateList.valueOf(color));
    }

    public void setBorderWidth(int resId) {
        setBorderWidth(getResources().getDimension(resId));
    }

    public void setCornerRadius(int resId) {
        setCornerRadius(getResources().getDimension(resId));
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bm) {
        this.f65514i = 0;
        this.f65515j = l0.b(bm);
        h();
        super.setImageDrawable(this.f65515j);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f65514i = 0;
        this.f65515j = l0.c(drawable);
        h();
        super.setImageDrawable(this.f65515j);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int resId) {
        if (this.f65514i != resId) {
            this.f65514i = resId;
            this.f65515j = e();
            h();
            super.setImageDrawable(this.f65515j);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean oval) {
        this.f65510e = oval;
        h();
        g(false);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.f65517l != scaleType) {
            this.f65517l = scaleType;
            switch (a.f65518a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            h();
            g(false);
            invalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileModeX) {
        if (this.f65512g == tileModeX) {
            return;
        }
        this.f65512g = tileModeX;
        h();
        g(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileModeY) {
        if (this.f65513h == tileModeY) {
            return;
        }
        this.f65513h = tileModeY;
        h();
        g(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colors) {
        if (this.f65509d.equals(colors)) {
            return;
        }
        if (colors == null) {
            colors = ColorStateList.valueOf(-16777216);
        }
        this.f65509d = colors;
        h();
        g(false);
        if (this.f65508c > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float width) {
        if (this.f65508c == width) {
            return;
        }
        this.f65508c = width;
        h();
        g(false);
        invalidate();
    }

    public void setCornerRadius(float radius) {
        if (this.f65507b == radius) {
            return;
        }
        this.f65507b = radius;
        h();
        g(false);
    }

    public RoundedImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RoundedImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65507b = 6.0f;
        this.f65508c = 0.0f;
        this.f65509d = ColorStateList.valueOf(-16777216);
        this.f65510e = false;
        this.f65511f = false;
        Shader.TileMode tileMode = f65504t;
        this.f65512g = tileMode;
        this.f65513h = tileMode;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.RoundedImageView, defStyle, 0);
        int i10 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i10 >= 0) {
            setScaleType(f65505u[i10]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        this.f65507b = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        this.f65508c = dimensionPixelSize;
        if (this.f65507b < 0.0f) {
            this.f65507b = 6.0f;
        }
        if (dimensionPixelSize < 0.0f) {
            this.f65508c = 0.0f;
        }
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(1);
        this.f65509d = colorStateList;
        if (colorStateList == null) {
            this.f65509d = ColorStateList.valueOf(-16777216);
        }
        this.f65511f = typedArrayObtainStyledAttributes.getBoolean(4, false);
        this.f65510e = typedArrayObtainStyledAttributes.getBoolean(5, false);
        int i11 = typedArrayObtainStyledAttributes.getInt(6, -2);
        if (i11 != -2) {
            setTileModeX(d(i11));
            setTileModeY(d(i11));
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(7, -2);
        if (i12 != -2) {
            setTileModeX(d(i12));
        }
        int i13 = typedArrayObtainStyledAttributes.getInt(8, -2);
        if (i13 != -2) {
            setTileModeY(d(i13));
        }
        h();
        g(true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
