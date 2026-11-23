package com.kongzue.dialogx.util.views;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class BlurView extends View {
    private static int A;
    private static boolean B;
    public static boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f74239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f74241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f74243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Bitmap f74244i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Canvas f74245j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RenderScript f74246k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ScriptIntrinsicBlur f74247l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Allocation f74248m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Allocation f74249n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f74250o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f74251p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Rect f74252q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f74253r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f74254s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Paint f74255t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RectF f74256u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f74257v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Paint f74258w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Paint f74259x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f74260y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f74261z;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), BlurView.this.f74241f);
        }
    }

    class b implements ViewTreeObserver.OnPreDrawListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            int[] iArr = new int[2];
            Bitmap bitmap = BlurView.this.f74244i;
            View view = BlurView.this.f74253r;
            if (view != null && BlurView.this.isShown() && BlurView.this.x()) {
                boolean z10 = BlurView.this.f74244i != bitmap;
                view.getLocationInWindow(iArr);
                int i10 = -iArr[0];
                int i11 = -iArr[1];
                BlurView.this.getLocationInWindow(iArr);
                int i12 = i10 + iArr[0];
                int i13 = i11 + iArr[1];
                BlurView.this.f74243h.eraseColor(BlurView.this.f74238c & 16777215);
                int iSave = BlurView.this.f74245j.save();
                BlurView.this.f74250o = true;
                BlurView.h();
                try {
                    try {
                        BlurView.this.f74245j.scale((BlurView.this.f74243h.getWidth() * 1.0f) / BlurView.this.getWidth(), (BlurView.this.f74243h.getHeight() * 1.0f) / BlurView.this.getHeight());
                        BlurView.this.f74245j.translate(-i12, -i13);
                        if (view.getBackground() != null) {
                            view.getBackground().draw(BlurView.this.f74245j);
                        }
                        view.draw(BlurView.this.f74245j);
                    } catch (Exception e10) {
                        if (BlurView.t()) {
                            e10.printStackTrace();
                        }
                    }
                    BlurView.this.f74250o = false;
                    BlurView.i();
                    BlurView.this.f74245j.restoreToCount(iSave);
                    BlurView blurView = BlurView.this;
                    blurView.l(blurView.f74243h, BlurView.this.f74244i);
                    if (z10 || BlurView.this.f74254s) {
                        BlurView.this.invalidate();
                    }
                } catch (Throwable th) {
                    BlurView.this.f74250o = false;
                    BlurView.i();
                    BlurView.this.f74245j.restoreToCount(iSave);
                    throw th;
                }
            }
            return true;
        }
    }

    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                BlurView.class.getClassLoader().loadClass(RenderScript.class.getCanonicalName());
                boolean unused = BlurView.B = true;
            } catch (Throwable th) {
                if (BlurView.t()) {
                    th.printStackTrace();
                }
                boolean unused2 = BlurView.B = false;
            }
        }
    }

    static {
        new c().start();
        C = false;
    }

    public BlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74237b = 4.0f;
        this.f74238c = -1;
        this.f74239d = 35.0f;
        this.f74240e = false;
        this.f74241f = 0.0f;
        this.f74251p = new Rect();
        this.f74252q = new Rect();
        this.f74257v = false;
        this.f74260y = new b();
        this.f74261z = true;
        r(context, attributeSet);
    }

    private void A() {
        RenderScript renderScript = this.f74246k;
        if (renderScript != null) {
            renderScript.destroy();
            this.f74246k = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f74247l;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f74247l = null;
        }
    }

    private static int B(@ColorInt int i10) {
        return Color.argb(255, Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    private static int C(@ColorInt int i10, int i11) {
        return Color.argb(i11, Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    private Bitmap D(Bitmap bitmap, int i10, int i11) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i10 / width, i11 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    static /* synthetic */ int h() {
        int i10 = A;
        A = i10 + 1;
        return i10;
    }

    static /* synthetic */ int i() {
        int i10 = A;
        A = i10 - 1;
        return i10;
    }

    private void n(Canvas canvas) {
        if (this.f74244i == null) {
            Bitmap bitmapO = o(Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888));
            if (bitmapO != null) {
                canvas.drawBitmap(bitmapO, 0.0f, 0.0f, (Paint) null);
                return;
            }
            return;
        }
        this.f74252q.right = getWidth();
        this.f74252q.bottom = getHeight();
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        Bitmap bitmapQ = q(D(this.f74244i, getWidth(), getHeight()), this.f74252q);
        if (bitmapQ != null) {
            canvas.drawBitmap(bitmapQ, 0.0f, 0.0f, (Paint) null);
            return;
        }
        Bitmap bitmapO2 = o(Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888));
        if (bitmapO2 != null) {
            canvas.drawBitmap(bitmapO2, 0.0f, 0.0f, (Paint) null);
        }
    }

    private Bitmap o(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Rect rect = new Rect();
        rect.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawBitmap(bitmap, rect, rect, this.f74259x);
        canvas.drawColor(w() ? B(this.f74238c) : this.f74238c);
        return bitmapCreateBitmap;
    }

    public static void p(Object obj) {
        if (t()) {
            obj.toString();
        }
    }

    private Bitmap q(Bitmap bitmap, Rect rect) {
        Bitmap bitmapO = o(D(bitmap, rect.width(), rect.height()));
        if (bitmapO == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapO.getWidth(), bitmapO.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmapO, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(rect);
        float f10 = this.f74241f;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        return bitmapCreateBitmap;
    }

    private void r(Context context, AttributeSet attributeSet) {
        if (this.f74257v || context == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RealtimeBlurView);
        this.f74239d = typedArrayObtainStyledAttributes.getDimension(R.styleable.RealtimeBlurView_realtimeBlurRadius, TypedValue.applyDimension(1, 35.0f, context.getResources().getDisplayMetrics()));
        this.f74237b = typedArrayObtainStyledAttributes.getFloat(R.styleable.RealtimeBlurView_realtimeDownsampleFactor, 4.0f);
        this.f74238c = typedArrayObtainStyledAttributes.getColor(R.styleable.RealtimeBlurView_realtimeOverlayColor, 16777215);
        Paint paint = new Paint();
        this.f74255t = paint;
        paint.setAntiAlias(true);
        this.f74256u = new RectF();
        Paint paint2 = new Paint();
        this.f74258w = paint2;
        paint2.setAntiAlias(true);
        this.f74258w.setColor(this.f74238c);
        Paint paint3 = new Paint();
        this.f74259x = paint3;
        paint3.setAntiAlias(true);
        this.f74241f = typedArrayObtainStyledAttributes.getDimension(R.styleable.RealtimeBlurView_realtimeRadius, TypedValue.applyDimension(1, 15.0f, context.getResources().getDisplayMetrics()));
        typedArrayObtainStyledAttributes.recycle();
        this.f74257v = true;
        if (s()) {
            return;
        }
        setOutlineProvider(new a());
        setClipToOutline(true);
    }

    private boolean s() {
        return false;
    }

    static boolean t() {
        return C && DialogX.f73590b;
    }

    private static void v(Object obj) {
        if (t()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DialogX.BlurView: ");
            sb2.append(obj.toString());
        }
    }

    private boolean w() {
        if (this.f74240e) {
            return false;
        }
        return (B && this.f74261z) ? false : true;
    }

    private void z() {
        Allocation allocation = this.f74248m;
        if (allocation != null) {
            allocation.destroy();
            this.f74248m = null;
        }
        Allocation allocation2 = this.f74249n;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f74249n = null;
        }
        Bitmap bitmap = this.f74243h;
        if (bitmap != null) {
            bitmap.recycle();
            this.f74243h = null;
        }
        Bitmap bitmap2 = this.f74244i;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f74244i = null;
        }
    }

    public BlurView E(boolean z10) {
        v("setOverrideOverlayColor: " + z10);
        this.f74240e = z10;
        return this;
    }

    public BlurView F(boolean z10) {
        this.f74261z = z10;
        invalidate();
        return this;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f74261z && B) {
            if (this.f74250o || A > 0) {
                return;
            }
            super.draw(canvas);
            return;
        }
        this.f74256u.right = getWidth();
        this.f74256u.bottom = getHeight();
        this.f74259x.setColor(w() ? B(this.f74238c) : this.f74238c);
        RectF rectF = this.f74256u;
        float f10 = this.f74241f;
        canvas.drawRoundRect(rectF, f10, f10, this.f74259x);
    }

    protected void l(Bitmap bitmap, Bitmap bitmap2) {
        this.f74248m.copyFrom(bitmap);
        this.f74247l.setInput(this.f74248m);
        this.f74247l.forEach(this.f74249n);
        this.f74249n.copyTo(bitmap2);
    }

    protected void m(Canvas canvas, Bitmap bitmap) {
        if (bitmap == null) {
            Bitmap bitmapO = o(Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888));
            if (bitmapO != null) {
                canvas.drawBitmap(bitmapO, 0.0f, 0.0f, (Paint) null);
                return;
            }
            return;
        }
        this.f74251p.right = bitmap.getWidth();
        this.f74251p.bottom = bitmap.getHeight();
        this.f74252q.right = getWidth();
        this.f74252q.bottom = getHeight();
        canvas.drawBitmap(bitmap, this.f74251p, this.f74252q, (Paint) null);
        canvas.drawColor(w() ? B(this.f74238c) : this.f74238c);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        v(getContext());
        ViewGroup viewGroup = (ViewGroup) (getContext() instanceof Activity ? (Activity) getContext() : BaseDialog.X()).getWindow().getDecorView();
        if (viewGroup.getChildCount() >= 1) {
            this.f74253r = viewGroup.getChildAt(0);
        }
        if (this.f74253r == null) {
            v("mDecorView is NULL.");
            this.f74254s = false;
            return;
        }
        v("mDecorView is ok.");
        this.f74253r.getViewTreeObserver().addOnPreDrawListener(this.f74260y);
        boolean z10 = this.f74253r.getRootView() != getRootView();
        this.f74254s = z10;
        if (z10) {
            this.f74253r.postInvalidate();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        View view = this.f74253r;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.f74260y);
        }
        y();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (s()) {
            n(canvas);
        } else {
            m(canvas, this.f74244i);
        }
    }

    public void setBlurRadius(float f10) {
        if (this.f74239d != f10) {
            this.f74239d = f10;
            this.f74242g = true;
            invalidate();
        }
    }

    public void setDownsampleFactor(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        }
        if (this.f74237b != f10) {
            this.f74237b = f10;
            this.f74242g = true;
            z();
            invalidate();
        }
    }

    public void setOverlayColor(int i10) {
        if (this.f74238c != i10) {
            this.f74238c = i10;
            invalidate();
        }
    }

    public void setRadiusPx(float f10) {
        if (this.f74241f != f10) {
            this.f74241f = f10;
            this.f74242g = true;
            invalidate();
        }
    }

    public boolean u() {
        return this.f74261z;
    }

    protected boolean x() {
        Bitmap bitmap;
        if (this.f74239d == 0.0f) {
            y();
            return false;
        }
        float f10 = this.f74237b;
        if ((this.f74242g || this.f74246k == null) && B && this.f74261z) {
            if (this.f74246k == null) {
                try {
                    RenderScript renderScriptCreate = RenderScript.create(getContext());
                    this.f74246k = renderScriptCreate;
                    this.f74247l = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                } catch (Exception e10) {
                    B = false;
                    if (t()) {
                        e10.printStackTrace();
                    }
                }
            }
            this.f74242g = false;
            float f11 = this.f74239d / f10;
            if (f11 > 25.0f) {
                f10 = (f10 * f11) / 25.0f;
                f11 = 25.0f;
            }
            ScriptIntrinsicBlur scriptIntrinsicBlur = this.f74247l;
            if (scriptIntrinsicBlur != null) {
                scriptIntrinsicBlur.setRadius(f11);
            }
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f10));
        int iMax2 = Math.max(1, (int) (height / f10));
        if (this.f74245j == null || (bitmap = this.f74244i) == null || bitmap.getWidth() != iMax || this.f74244i.getHeight() != iMax2) {
            z();
            try {
                try {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                    this.f74243h = bitmapCreateBitmap;
                    if (bitmapCreateBitmap == null) {
                        z();
                        return false;
                    }
                    this.f74245j = new Canvas(this.f74243h);
                    if (B && this.f74261z) {
                        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f74246k, this.f74243h, Allocation.MipmapControl.MIPMAP_NONE, 1);
                        this.f74248m = allocationCreateFromBitmap;
                        this.f74249n = Allocation.createTyped(this.f74246k, allocationCreateFromBitmap.getType());
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                        this.f74244i = bitmapCreateBitmap2;
                        if (bitmapCreateBitmap2 == null) {
                            z();
                            return false;
                        }
                    }
                    z();
                    return false;
                } catch (Throwable unused) {
                    z();
                    return false;
                }
            } catch (Exception e11) {
                if (t()) {
                    e11.printStackTrace();
                }
                z();
                return false;
            }
        }
        return true;
    }

    protected void y() {
        z();
        A();
    }

    public BlurView(Context context) {
        super(context);
        this.f74237b = 4.0f;
        this.f74238c = -1;
        this.f74239d = 35.0f;
        this.f74240e = false;
        this.f74241f = 0.0f;
        this.f74251p = new Rect();
        this.f74252q = new Rect();
        this.f74257v = false;
        this.f74260y = new b();
        this.f74261z = true;
        r(context, null);
    }

    public BlurView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74237b = 4.0f;
        this.f74238c = -1;
        this.f74239d = 35.0f;
        this.f74240e = false;
        this.f74241f = 0.0f;
        this.f74251p = new Rect();
        this.f74252q = new Rect();
        this.f74257v = false;
        this.f74260y = new b();
        this.f74261z = true;
        r(context, attributeSet);
    }
}
