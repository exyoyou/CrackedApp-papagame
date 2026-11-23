package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;

/* JADX INFO: loaded from: classes3.dex */
public class ScratchView extends View {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Bitmap f65519w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static Bitmap f65520x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f65521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f65523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f65524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Path f65525f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Canvas f65526g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65527h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65528i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f65529j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65530k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65531l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f65532m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private c f65533n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f65534o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f65535p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f65536q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f65537r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Runnable f65538s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Bitmap f65539t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f65540u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f65541v;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int width = ScratchView.this.getWidth();
                int height = ScratchView.this.getHeight();
                int i10 = width * height;
                float f10 = i10;
                int[] iArr = new int[i10];
                ScratchView.f65520x.getPixels(iArr, 0, width, 0, 0, width, height);
                float f11 = 0.0f;
                for (int i11 = 0; i11 < width; i11++) {
                    for (int i12 = 0; i12 < height; i12++) {
                        if (iArr[(i12 * width) + i11] == 0) {
                            f11 += 1.0f;
                        }
                    }
                }
                if (f11 <= 0.0f || f10 <= 0.0f || ((int) ((f11 * 100.0f) / f10)) <= ScratchView.this.f65531l) {
                    return;
                }
                ScratchView.this.f65536q = true;
                ScratchView.this.f65537r = false;
                ScratchView.this.postInvalidate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public interface b {
        void complete();
    }

    public interface c {
        void onScratch();
    }

    public ScratchView(Context context) {
        this(context, null);
    }

    public static int e(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int i10 = options.outHeight;
        int i11 = options.outWidth;
        if (i10 > reqHeight || i11 > reqWidth) {
            return (int) (i11 > i10 ? Math.ceil(i10 / reqHeight) : Math.ceil(i11 / reqWidth));
        }
        return 1;
    }

    public static Bitmap f(Resources res, int resId, int reqWidth, int reqHeight) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(res, resId, options);
        options.inSampleSize = e(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(res, resId, options);
    }

    private void g() {
        this.f65524e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f65526g.drawPath(this.f65525f, this.f65524e);
    }

    private void h() {
        if (f65519w == null) {
            f65519w = f(getResources(), this.f65523d, this.f65534o, this.f65535p);
        }
        if (f65520x == null) {
            f65520x = Bitmap.createBitmap(this.f65534o, this.f65535p, Bitmap.Config.ARGB_4444);
        }
        if (this.f65526g == null) {
            this.f65526g = new Canvas(f65520x);
        }
        m();
        l();
        this.f65526g.drawBitmap(f65519w, (Rect) null, new Rect(0, 0, this.f65534o, this.f65535p), this.f65529j);
    }

    private void i() {
        this.f65524e = new Paint();
        this.f65529j = new Paint();
        this.f65525f = new Path();
        this.f65530k = getResources().getDimensionPixelOffset(R.dimen.wdp100);
        this.f65531l = 50;
    }

    private void l() {
        this.f65529j.setColor(Color.parseColor("#c3c3c3"));
        this.f65529j.setAntiAlias(true);
        this.f65529j.setDither(true);
        this.f65529j.setStrokeJoin(Paint.Join.ROUND);
        this.f65529j.setStrokeCap(Paint.Cap.ROUND);
        this.f65529j.setStyle(Paint.Style.FILL);
        this.f65529j.setStrokeWidth(20.0f);
    }

    private void m() {
        this.f65524e.setColor(Color.parseColor("#c3c3c3"));
        this.f65524e.setAntiAlias(true);
        this.f65524e.setDither(true);
        this.f65524e.setStrokeJoin(Paint.Join.ROUND);
        this.f65524e.setStrokeCap(Paint.Cap.ROUND);
        this.f65524e.setStyle(Paint.Style.STROKE);
        this.f65524e.setStrokeWidth(this.f65530k);
    }

    public void j() {
        Bitmap bitmap = f65520x;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = f65519w;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
    }

    public void k() {
        i();
        h();
        this.f65536q = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        b bVar;
        if (this.f65536q && (bVar = this.f65532m) != null) {
            bVar.complete();
        }
        if (this.f65536q) {
            return;
        }
        g();
        canvas.drawBitmap(f65520x, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f65534o = getMeasuredWidth();
        this.f65535p = getMeasuredHeight();
        h();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!this.f65540u && !this.f65537r) {
            if (this.f65541v <= 0) {
                a3.b(getContext()).d("已经没有次数了！");
            }
            return true;
        }
        int action = event.getAction();
        int x10 = (int) event.getX();
        int y10 = (int) event.getY();
        if (action == 0) {
            this.f65537r = true;
            this.f65527h = x10;
            this.f65528i = y10;
            this.f65525f.moveTo(x10, y10);
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 2) {
            getParent().requestDisallowInterceptTouchEvent(true);
            int iAbs = Math.abs(x10 - this.f65527h);
            int iAbs2 = Math.abs(y10 - this.f65528i);
            if (iAbs > 3 || iAbs2 > 3) {
                this.f65525f.lineTo(x10, y10);
                c cVar = this.f65533n;
                if (cVar != null) {
                    cVar.onScratch();
                }
            }
            this.f65527h = x10;
            this.f65528i = y10;
            post(this.f65538s);
        }
        invalidate();
        return true;
    }

    public void setCanCratch(boolean canCratch) {
        this.f65540u = canCratch;
    }

    public void setCompletePercentage(int per) {
        this.f65531l = per;
    }

    public void setNumber(int count) {
        this.f65541v = count;
    }

    public void setOnCompleteListener(b mOnCompleteListener) {
        this.f65532m = mOnCompleteListener;
    }

    public void setOnScratchListener(c mOnScratchListener) {
        this.f65533n = mOnScratchListener;
    }

    public ScratchView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ScratchView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65521b = 70;
        this.f65522c = 50;
        this.f65536q = false;
        this.f65537r = false;
        this.f65538s = new a();
        this.f65540u = true;
        this.f65541v = 1;
        this.f65523d = context.obtainStyledAttributes(attrs, R.styleable.scratchView).getResourceId(0, 0);
        i();
    }
}
