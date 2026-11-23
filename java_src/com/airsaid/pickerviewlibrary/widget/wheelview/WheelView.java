package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class WheelView extends View {
    static final float O = 1.4f;
    private static final int P = 5;
    private static final float Q = 0.8f;
    private static final float R = 6.0f;
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    private int H;
    private float I;
    long J;
    int K;
    private int L;
    private int M;
    private int N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f6260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Handler f6261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GestureDetector f6262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    i.c f6263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ScheduledExecutorService f6264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScheduledFuture<?> f6265g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Paint f6266h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Paint f6267i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Paint f6268j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    h.c f6269k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f6270l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f6271m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f6272n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f6273o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f6274p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f6275q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f6276r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f6277s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f6278t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f6279u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f6280v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    float f6281w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f6282x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f6283y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f6284z;

    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public WheelView(Context context) {
        this(context, null);
    }

    private String b(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj instanceof j.a ? ((j.a) obj).a() : obj.toString();
    }

    private int c(int i10) {
        if (i10 < 0) {
            return c(i10 + this.f6269k.a());
        }
        return i10 > this.f6269k.a() + (-1) ? c(i10 - this.f6269k.a()) : i10;
    }

    private void e(Context context) {
        this.f6260b = context;
        this.f6261c = new c(this);
        GestureDetector gestureDetector = new GestureDetector(context, new b(this));
        this.f6262d = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f6278t = false;
        this.f6282x = 0;
        this.f6283y = -1;
        f();
    }

    private void f() {
        Paint paint = new Paint();
        this.f6266h = paint;
        paint.setColor(this.f6275q);
        this.f6266h.setAntiAlias(true);
        this.f6266h.setTypeface(Typeface.MONOSPACE);
        this.f6266h.setTextSize(this.f6271m);
        Paint paint2 = new Paint();
        this.f6267i = paint2;
        paint2.setColor(this.f6276r);
        this.f6267i.setAntiAlias(true);
        this.f6267i.setTextScaleX(1.1f);
        this.f6267i.setTypeface(Typeface.MONOSPACE);
        this.f6267i.setTextSize(this.f6271m);
        Paint paint3 = new Paint();
        this.f6268j = paint3;
        paint3.setColor(this.f6277s);
        this.f6268j.setAntiAlias(true);
        setLayerType(1, null);
    }

    private void g() {
        Rect rect = new Rect();
        for (int i10 = 0; i10 < this.f6269k.a(); i10++) {
            String strB = b(this.f6269k.getItem(i10));
            this.f6267i.getTextBounds(strB, 0, strB.length(), rect);
            int iWidth = rect.width();
            if (iWidth > this.f6272n) {
                this.f6272n = iWidth;
            }
            this.f6267i.getTextBounds("星期", 0, 2, rect);
            int iHeight = rect.height();
            if (iHeight > this.f6273o) {
                this.f6273o = iHeight;
            }
        }
        this.f6274p = this.f6273o * O;
    }

    private void h(String str) {
        Rect rect = new Rect();
        this.f6267i.getTextBounds(str, 0, str.length(), rect);
        int i10 = this.L;
        if (i10 == 3) {
            this.M = 0;
        } else if (i10 == 5) {
            this.M = this.E - rect.width();
        } else {
            if (i10 != 17) {
                return;
            }
            this.M = (int) (((double) (this.E - rect.width())) * 0.5d);
        }
    }

    private void i(String str) {
        Rect rect = new Rect();
        this.f6266h.getTextBounds(str, 0, str.length(), rect);
        int i10 = this.L;
        if (i10 == 3) {
            this.N = 0;
        } else if (i10 == 5) {
            this.N = this.E - rect.width();
        } else {
            if (i10 != 17) {
                return;
            }
            this.N = (int) (((double) (this.E - rect.width())) * 0.5d);
        }
    }

    private void k() {
        if (this.f6269k == null) {
            return;
        }
        g();
        int i10 = (int) (this.f6274p * (this.C - 1));
        this.F = i10;
        this.D = (int) (((double) (i10 * 2)) / 3.141592653589793d);
        this.G = (int) (((double) i10) / 3.141592653589793d);
        this.E = View.MeasureSpec.getSize(this.K);
        int i11 = this.D;
        float f10 = this.f6274p;
        this.f6279u = (i11 - f10) / 2.0f;
        this.f6280v = (i11 + f10) / 2.0f;
        this.f6281w = ((i11 + this.f6273o) / 2.0f) - 6.0f;
        if (this.f6283y == -1) {
            if (this.f6278t) {
                this.f6283y = (this.f6269k.a() + 1) / 2;
            } else {
                this.f6283y = 0;
            }
        }
        this.A = this.f6283y;
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f6265g;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f6265g.cancel(true);
        this.f6265g = null;
    }

    public int d(Paint paint, String str) {
        if (str == null || str.length() <= 0) {
            return 0;
        }
        int length = str.length();
        float[] fArr = new float[length];
        paint.getTextWidths(str, fArr);
        int iCeil = 0;
        for (int i10 = 0; i10 < length; i10++) {
            iCeil += (int) Math.ceil(fArr[i10]);
        }
        return iCeil;
    }

    public final h.c getAdapter() {
        return this.f6269k;
    }

    public final int getCurrentItem() {
        return this.f6284z;
    }

    public int getItemsCount() {
        h.c cVar = this.f6269k;
        if (cVar != null) {
            return cVar.a();
        }
        return 0;
    }

    protected final void j() {
        if (this.f6263e != null) {
            postDelayed(new d(this), 200L);
        }
    }

    protected final void l(float f10) {
        a();
        this.f6265g = this.f6264f.scheduleWithFixedDelay(new a(this, f10), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    void m(ACTION action) {
        a();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f10 = this.f6282x;
            float f11 = this.f6274p;
            int i10 = (int) (((f10 % f11) + f11) % f11);
            this.H = i10;
            if (i10 > f11 / 2.0f) {
                this.H = (int) (f11 - i10);
            } else {
                this.H = -i10;
            }
        }
        this.f6265g = this.f6264f.scheduleWithFixedDelay(new e(this, this.H), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        h.c cVar = this.f6269k;
        if (cVar == null) {
            return;
        }
        Object[] objArr = new Object[this.C];
        int i11 = (int) (this.f6282x / this.f6274p);
        this.B = i11;
        try {
            this.A = this.f6283y + (i11 % cVar.a());
            while (true) {
                int i12 = this.C;
                if (i10 >= i12) {
                    break;
                }
                int i13 = this.A - ((i12 / 2) - i10);
                if (this.f6278t) {
                    objArr[i10] = this.f6269k.getItem(c(i13));
                } else if (i13 < 0) {
                    objArr[i10] = "";
                } else if (i13 > this.f6269k.a() - 1) {
                    objArr[i10] = "";
                } else {
                    objArr[i10] = this.f6269k.getItem(i13);
                }
                i10++;
            }
        } catch (ArithmeticException unused) {
            System.out.println("出错了！adapter.getItemsCount() == 0，联动数据不匹配");
        }
        if (this.f6278t) {
            if (this.A < 0) {
                this.A = this.f6269k.a() + this.A;
            }
            if (this.A > this.f6269k.a() - 1) {
                this.A -= this.f6269k.a();
            }
        } else {
            if (this.A < 0) {
                this.A = 0;
            }
            if (this.A > this.f6269k.a() - 1) {
                this.A = this.f6269k.a() - 1;
            }
        }
        int i14 = (int) (this.f6282x % this.f6274p);
        i10 = 0;
        float f10 = this.f6279u;
        canvas.drawLine(0.0f, f10, this.E, f10, this.f6268j);
        float f11 = this.f6280v;
        canvas.drawLine(0.0f, f11, this.E, f11, this.f6268j);
        String str = this.f6270l;
        if (str != null) {
            canvas.drawText(this.f6270l, (this.E - d(this.f6267i, str)) - 6.0f, this.f6281w, this.f6267i);
        }
        int i15 = 0;
        while (i15 < this.C) {
            canvas.save();
            float f12 = this.f6273o * O;
            double d10 = (((double) ((i15 * f12) - i14)) * 3.141592653589793d) / ((double) this.F);
            float f13 = (float) (90.0d - ((d10 / 3.141592653589793d) * 180.0d));
            if (f13 >= 90.0f || f13 <= -90.0f) {
                canvas.restore();
            } else {
                String strB = b(objArr[i15]);
                h(strB);
                i(strB);
                float fCos = (float) ((((double) this.G) - (Math.cos(d10) * ((double) this.G))) - ((Math.sin(d10) * ((double) this.f6273o)) / 2.0d));
                canvas.translate(0.0f, fCos);
                canvas.scale(1.0f, (float) Math.sin(d10));
                float f14 = this.f6279u;
                if (fCos > f14 || this.f6273o + fCos < f14) {
                    float f15 = this.f6280v;
                    if (fCos > f15 || this.f6273o + fCos < f15) {
                        if (fCos < f14 || this.f6273o + fCos > f15) {
                            canvas.save();
                            canvas.clipRect(0, 0, this.E, (int) f12);
                            canvas.scale(1.0f, ((float) Math.sin(d10)) * Q);
                            canvas.drawText(strB, this.N, this.f6273o, this.f6266h);
                            canvas.restore();
                        } else {
                            canvas.clipRect(0, 0, this.E, (int) f12);
                            canvas.drawText(strB, this.M, this.f6273o - 6.0f, this.f6267i);
                            int iIndexOf = this.f6269k.indexOf(objArr[i15]);
                            if (iIndexOf != -1) {
                                this.f6284z = iIndexOf;
                            }
                        }
                        canvas.restore();
                    } else {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.E, this.f6280v - fCos);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                        canvas.drawText(strB, this.M, this.f6273o - 6.0f, this.f6267i);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.f6280v - fCos, this.E, (int) f12);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * Q);
                        canvas.drawText(strB, this.N, this.f6273o, this.f6266h);
                        canvas.restore();
                    }
                } else {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.E, this.f6279u - fCos);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * Q);
                    canvas.drawText(strB, this.N, this.f6273o, this.f6266h);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.f6279u - fCos, this.E, (int) f12);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                    canvas.drawText(strB, this.M, this.f6273o - 6.0f, this.f6267i);
                    canvas.restore();
                }
                canvas.restore();
            }
            i15++;
            i14 = i14;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.K = i10;
        k();
        setMeasuredDimension(this.E, this.D);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.f6262d.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.J = System.currentTimeMillis();
            a();
            this.I = motionEvent.getRawY();
        } else if (action == 2) {
            float rawY = this.I - motionEvent.getRawY();
            this.I = motionEvent.getRawY();
            this.f6282x = (int) (this.f6282x + rawY);
            if (!this.f6278t) {
                float f10 = (-this.f6283y) * this.f6274p;
                float fA = (this.f6269k.a() - 1) - this.f6283y;
                float f11 = this.f6274p;
                float f12 = fA * f11;
                int i10 = this.f6282x;
                if (((double) i10) - (((double) f11) * 0.3d) < f10) {
                    f10 = i10 - rawY;
                } else if (((double) i10) + (((double) f11) * 0.3d) > f12) {
                    f12 = i10 - rawY;
                }
                if (i10 < f10) {
                    this.f6282x = (int) f10;
                } else if (i10 > f12) {
                    this.f6282x = (int) f12;
                }
            }
        } else if (!zOnTouchEvent) {
            float y10 = motionEvent.getY();
            int i11 = this.G;
            double dAcos = Math.acos((i11 - y10) / i11) * ((double) this.G);
            float f13 = this.f6274p;
            this.H = (int) (((((int) ((dAcos + ((double) (f13 / 2.0f))) / ((double) f13))) - (this.C / 2)) * f13) - (((this.f6282x % f13) + f13) % f13));
            if (System.currentTimeMillis() - this.J > 120) {
                m(ACTION.DAGGLE);
            } else {
                m(ACTION.CLICK);
            }
        }
        invalidate();
        return true;
    }

    public final void setAdapter(h.c cVar) {
        this.f6269k = cVar;
        k();
        invalidate();
    }

    public final void setCurrentItem(int i10) {
        this.f6283y = i10;
        this.f6282x = 0;
        invalidate();
    }

    public final void setCyclic(boolean z10) {
        this.f6278t = z10;
    }

    public void setGravity(int i10) {
        this.L = i10;
    }

    public void setLabel(String str) {
        this.f6270l = str;
    }

    public final void setOnItemSelectedListener(i.c cVar) {
        this.f6263e = cVar;
    }

    public final void setTextSize(float f10) {
        if (f10 > 0.0f) {
            int i10 = (int) (this.f6260b.getResources().getDisplayMetrics().density * f10);
            this.f6271m = i10;
            this.f6266h.setTextSize(i10);
            this.f6267i.setTextSize(this.f6271m);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6264f = Executors.newSingleThreadScheduledExecutor();
        this.C = 11;
        this.H = 0;
        this.I = 0.0f;
        this.J = 0L;
        this.L = 17;
        this.M = 0;
        this.N = 0;
        this.f6275q = getResources().getColor(R.color.pickerview_wheelview_textcolor_out);
        this.f6276r = getResources().getColor(R.color.pickerview_wheelview_textcolor_center);
        this.f6277s = getResources().getColor(R.color.pickerview_wheelview_textcolor_divider);
        this.f6271m = getResources().getDimensionPixelSize(R.dimen.pickerview_textsize);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PickerView_Library, 0, 0);
            this.L = typedArrayObtainStyledAttributes.getInt(R.styleable.PickerView_Library_pickerview_gravity, 17);
            this.f6275q = typedArrayObtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_textColorOut, this.f6275q);
            this.f6276r = typedArrayObtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_textColorCenter, this.f6276r);
            this.f6277s = typedArrayObtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_dividerColor, this.f6277s);
            this.f6271m = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PickerView_Library_pickerview_textSize, this.f6271m);
            typedArrayObtainStyledAttributes.recycle();
        }
        e(context);
    }
}
