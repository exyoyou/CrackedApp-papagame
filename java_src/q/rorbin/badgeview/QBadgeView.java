package q.rorbin.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class QBadgeView extends View implements q.rorbin.badgeview.a {
    protected Paint.FontMetrics A;
    protected PointF B;
    protected PointF C;
    protected PointF D;
    protected PointF E;
    protected List<PointF> F;
    protected View G;
    protected int H;
    protected int I;
    protected TextPaint J;
    protected Paint K;
    protected Paint L;
    protected b M;
    protected q.rorbin.badgeview.a.InterfaceC1236a N;
    protected ViewGroup O;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f96410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f96411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f96412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Drawable f96413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Bitmap f96414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f96415g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected float f96416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected float f96417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected float f96418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f96419k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected String f96420l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f96421m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f96422n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f96423o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f96424p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f96425q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected float f96426r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected float f96427s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f96428t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected float f96429u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f96430v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected boolean f96431w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected RectF f96432x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected RectF f96433y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected Path f96434z;

    private class a extends ViewGroup {
        public a(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                View childAt = getChildAt(i14);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i10, int i11) {
            View view = null;
            View view2 = null;
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt instanceof QBadgeView) {
                    view2 = childAt;
                } else {
                    view = childAt;
                }
            }
            if (view == null) {
                super.onMeasure(i10, i11);
                return;
            }
            view.measure(i10, i11);
            if (view2 != null) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
            setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public QBadgeView(Context context) {
        this(context, null);
    }

    private void A(Canvas canvas, PointF pointF, float f10) {
        if (pointF.x == -1000.0f && pointF.y == -1000.0f) {
            return;
        }
        if (this.f96420l.isEmpty() || this.f96420l.length() == 1) {
            RectF rectF = this.f96433y;
            float f11 = pointF.x;
            float f12 = (int) f10;
            rectF.left = f11 - f12;
            float f13 = pointF.y;
            rectF.top = f13 - f12;
            rectF.right = f11 + f12;
            rectF.bottom = f12 + f13;
            if (this.f96413e != null) {
                B(canvas);
            } else {
                canvas.drawCircle(f11, f13, f10, this.K);
                if (this.f96411c != 0 && this.f96416h > 0.0f) {
                    canvas.drawCircle(pointF.x, pointF.y, f10, this.L);
                }
            }
        } else {
            this.f96433y.left = pointF.x - ((this.f96432x.width() / 2.0f) + this.f96418j);
            this.f96433y.top = pointF.y - ((this.f96432x.height() / 2.0f) + (this.f96418j * 0.5f));
            this.f96433y.right = pointF.x + (this.f96432x.width() / 2.0f) + this.f96418j;
            this.f96433y.bottom = pointF.y + (this.f96432x.height() / 2.0f) + (this.f96418j * 0.5f);
            float fHeight = this.f96433y.height() / 2.0f;
            if (this.f96413e != null) {
                B(canvas);
            } else {
                canvas.drawRoundRect(this.f96433y, fHeight, fHeight, this.K);
                if (this.f96411c != 0 && this.f96416h > 0.0f) {
                    canvas.drawRoundRect(this.f96433y, fHeight, fHeight, this.L);
                }
            }
        }
        if (this.f96420l.isEmpty()) {
            return;
        }
        String str = this.f96420l;
        float f14 = pointF.x;
        RectF rectF2 = this.f96433y;
        float f15 = rectF2.bottom + rectF2.top;
        Paint.FontMetrics fontMetrics = this.A;
        canvas.drawText(str, f14, ((f15 - fontMetrics.bottom) - fontMetrics.top) / 2.0f, this.J);
    }

    private void B(Canvas canvas) {
        this.K.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        RectF rectF = this.f96433y;
        int i10 = (int) rectF.left;
        int i11 = (int) rectF.top;
        int width = (int) rectF.right;
        int height = (int) rectF.bottom;
        if (this.f96415g) {
            width = i10 + this.f96414f.getWidth();
            height = this.f96414f.getHeight() + i11;
            canvas.saveLayer(i10, i11, width, height, null, 31);
        }
        this.f96413e.setBounds(i10, i11, width, height);
        this.f96413e.draw(canvas);
        if (!this.f96415g) {
            canvas.drawRect(this.f96433y, this.L);
            return;
        }
        this.K.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas.drawBitmap(this.f96414f, i10, i11, this.K);
        canvas.restore();
        this.K.setXfermode(null);
        if (this.f96420l.isEmpty() || this.f96420l.length() == 1) {
            canvas.drawCircle(this.f96433y.centerX(), this.f96433y.centerY(), this.f96433y.width() / 2.0f, this.L);
        } else {
            RectF rectF2 = this.f96433y;
            canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.f96433y.height() / 2.0f, this.L);
        }
    }

    private void C(Canvas canvas, float f10, float f11) {
        float f12;
        float f13;
        float f14;
        PointF pointF = this.C;
        float f15 = pointF.y;
        PointF pointF2 = this.D;
        float f16 = f15 - pointF2.y;
        float f17 = pointF.x - pointF2.x;
        this.F.clear();
        if (f17 != 0.0f) {
            double d10 = (-1.0d) / ((double) (f16 / f17));
            e.a(this.C, f11, Double.valueOf(d10), this.F);
            e.a(this.D, f10, Double.valueOf(d10), this.F);
        } else {
            e.a(this.C, f11, Double.valueOf(0.0d), this.F);
            e.a(this.D, f10, Double.valueOf(0.0d), this.F);
        }
        this.f96434z.reset();
        Path path = this.f96434z;
        PointF pointF3 = this.D;
        float f18 = pointF3.x;
        float f19 = pointF3.y;
        int i10 = this.f96430v;
        path.addCircle(f18, f19, f10, (i10 == 1 || i10 == 2) ? Path.Direction.CCW : Path.Direction.CW);
        PointF pointF4 = this.E;
        PointF pointF5 = this.D;
        float f20 = pointF5.x;
        PointF pointF6 = this.C;
        pointF4.x = (f20 + pointF6.x) / 2.0f;
        pointF4.y = (pointF5.y + pointF6.y) / 2.0f;
        this.f96434z.moveTo(this.F.get(2).x, this.F.get(2).y);
        Path path2 = this.f96434z;
        PointF pointF7 = this.E;
        path2.quadTo(pointF7.x, pointF7.y, this.F.get(0).x, this.F.get(0).y);
        this.f96434z.lineTo(this.F.get(1).x, this.F.get(1).y);
        Path path3 = this.f96434z;
        PointF pointF8 = this.E;
        path3.quadTo(pointF8.x, pointF8.y, this.F.get(3).x, this.F.get(3).y);
        this.f96434z.lineTo(this.F.get(2).x, this.F.get(2).y);
        this.f96434z.close();
        canvas.drawPath(this.f96434z, this.K);
        if (this.f96411c == 0 || this.f96416h <= 0.0f) {
            return;
        }
        this.f96434z.reset();
        this.f96434z.moveTo(this.F.get(2).x, this.F.get(2).y);
        Path path4 = this.f96434z;
        PointF pointF9 = this.E;
        path4.quadTo(pointF9.x, pointF9.y, this.F.get(0).x, this.F.get(0).y);
        this.f96434z.moveTo(this.F.get(1).x, this.F.get(1).y);
        Path path5 = this.f96434z;
        PointF pointF10 = this.E;
        path5.quadTo(pointF10.x, pointF10.y, this.F.get(3).x, this.F.get(3).y);
        int i11 = this.f96430v;
        if (i11 == 1 || i11 == 2) {
            float f21 = this.F.get(2).x;
            PointF pointF11 = this.D;
            f12 = f21 - pointF11.x;
            f13 = pointF11.y;
            f14 = this.F.get(2).y;
        } else {
            float f22 = this.F.get(3).x;
            PointF pointF12 = this.D;
            f12 = f22 - pointF12.x;
            f13 = pointF12.y;
            f14 = this.F.get(3).y;
        }
        double dAtan = Math.atan((f13 - f14) / f12);
        int i12 = this.f96430v;
        float fE = 360.0f - ((float) e.e(e.d(dAtan, i12 + (-1) == 0 ? 4 : i12 - 1)));
        Path path6 = this.f96434z;
        PointF pointF13 = this.D;
        float f23 = pointF13.x;
        float f24 = pointF13.y;
        path6.addArc(f23 - f10, f24 - f10, f23 + f10, f24 + f10, fE, 180.0f);
        canvas.drawPath(this.f96434z, this.L);
    }

    private void D(View view) {
        if (view.getParent() != null && (view.getParent() instanceof View)) {
            D((View) view.getParent());
        } else if (view instanceof ViewGroup) {
            this.O = (ViewGroup) view;
        }
    }

    private void E() {
        float fHeight = this.f96432x.height() > this.f96432x.width() ? this.f96432x.height() : this.f96432x.width();
        switch (this.f96425q) {
            case 17:
                PointF pointF = this.B;
                pointF.x = this.H / 2.0f;
                pointF.y = this.I / 2.0f;
                break;
            case 49:
                PointF pointF2 = this.B;
                pointF2.x = this.H / 2.0f;
                pointF2.y = this.f96427s + this.f96418j + (this.f96432x.height() / 2.0f);
                break;
            case 81:
                PointF pointF3 = this.B;
                pointF3.x = this.H / 2.0f;
                pointF3.y = this.I - ((this.f96427s + this.f96418j) + (this.f96432x.height() / 2.0f));
                break;
            case 8388627:
                PointF pointF4 = this.B;
                pointF4.x = this.f96426r + this.f96418j + (fHeight / 2.0f);
                pointF4.y = this.I / 2.0f;
                break;
            case 8388629:
                PointF pointF5 = this.B;
                pointF5.x = this.H - ((this.f96426r + this.f96418j) + (fHeight / 2.0f));
                pointF5.y = this.I / 2.0f;
                break;
            case 8388659:
                PointF pointF6 = this.B;
                float f10 = this.f96426r;
                float f11 = this.f96418j;
                pointF6.x = f10 + f11 + (fHeight / 2.0f);
                pointF6.y = this.f96427s + f11 + (this.f96432x.height() / 2.0f);
                break;
            case 8388661:
                PointF pointF7 = this.B;
                float f12 = this.H;
                float f13 = this.f96426r;
                float f14 = this.f96418j;
                pointF7.x = f12 - ((f13 + f14) + (fHeight / 2.0f));
                pointF7.y = this.f96427s + f14 + (this.f96432x.height() / 2.0f);
                break;
            case 8388691:
                PointF pointF8 = this.B;
                float f15 = this.f96426r;
                float f16 = this.f96418j;
                pointF8.x = f15 + f16 + (fHeight / 2.0f);
                pointF8.y = this.I - ((this.f96427s + f16) + (this.f96432x.height() / 2.0f));
                break;
            case 8388693:
                PointF pointF9 = this.B;
                float f17 = this.H;
                float f18 = this.f96426r;
                float f19 = this.f96418j;
                pointF9.x = f17 - ((f18 + f19) + (fHeight / 2.0f));
                pointF9.y = this.I - ((this.f96427s + f19) + (this.f96432x.height() / 2.0f));
                break;
        }
        I();
    }

    private void F(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getRootView();
        this.O = viewGroup;
        if (viewGroup == null) {
            D(view);
        }
    }

    private void G() {
        setLayerType(1, null);
        this.f96432x = new RectF();
        this.f96433y = new RectF();
        this.f96434z = new Path();
        this.B = new PointF();
        this.C = new PointF();
        this.D = new PointF();
        this.E = new PointF();
        this.F = new ArrayList();
        TextPaint textPaint = new TextPaint();
        this.J = textPaint;
        textPaint.setAntiAlias(true);
        this.J.setSubpixelText(true);
        this.J.setFakeBoldText(true);
        this.J.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Paint paint = new Paint();
        this.K = paint;
        paint.setAntiAlias(true);
        this.K.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.L = paint2;
        paint2.setAntiAlias(true);
        this.L.setStyle(Paint.Style.STROKE);
        this.f96410b = -1552832;
        this.f96412d = -1;
        this.f96417i = d.a(getContext(), 11.0f);
        this.f96418j = d.a(getContext(), 5.0f);
        this.f96419k = 0;
        this.f96425q = 8388661;
        this.f96426r = d.a(getContext(), 1.0f);
        this.f96427s = d.a(getContext(), 1.0f);
        this.f96429u = d.a(getContext(), 90.0f);
        this.f96424p = true;
        this.f96415g = false;
        setTranslationZ(1000.0f);
    }

    private void H() {
        N(this.f96424p);
        this.K.setColor(this.f96410b);
        this.L.setColor(this.f96411c);
        this.L.setStrokeWidth(this.f96416h);
        this.J.setColor(this.f96412d);
        this.J.setTextAlign(Paint.Align.CENTER);
    }

    private void I() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        PointF pointF = this.D;
        PointF pointF2 = this.B;
        pointF.x = pointF2.x + iArr[0];
        pointF.y = pointF2.y + iArr[1];
    }

    private void J() {
        RectF rectF = this.f96432x;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        if (TextUtils.isEmpty(this.f96420l)) {
            RectF rectF2 = this.f96432x;
            rectF2.right = 0.0f;
            rectF2.bottom = 0.0f;
        } else {
            this.J.setTextSize(this.f96417i);
            this.f96432x.right = this.J.measureText(this.f96420l);
            Paint.FontMetrics fontMetrics = this.J.getFontMetrics();
            this.A = fontMetrics;
            this.f96432x.bottom = fontMetrics.descent - fontMetrics.ascent;
        }
        z();
    }

    private void K() {
        if (this.f96431w) {
            x(this.C);
            O(5);
        } else {
            L();
            O(4);
        }
    }

    private void N(boolean z10) {
        int iA = d.a(getContext(), 1.0f);
        int iA2 = d.a(getContext(), 1.5f);
        int i10 = this.f96430v;
        if (i10 == 1) {
            iA = d.a(getContext(), 1.0f);
            iA2 = d.a(getContext(), -1.5f);
        } else if (i10 == 2) {
            iA = d.a(getContext(), -1.0f);
            iA2 = d.a(getContext(), -1.5f);
        } else if (i10 == 3) {
            iA = d.a(getContext(), -1.0f);
            iA2 = d.a(getContext(), 1.5f);
        } else if (i10 == 4) {
            iA = d.a(getContext(), 1.0f);
            iA2 = d.a(getContext(), 1.5f);
        }
        this.K.setShadowLayer(z10 ? d.a(getContext(), 2.0f) : 0.0f, iA, iA2, 855638016);
    }

    private void O(int i10) {
        q.rorbin.badgeview.a.InterfaceC1236a interfaceC1236a = this.N;
        if (interfaceC1236a != null) {
            interfaceC1236a.a(i10, this, this.G);
        }
    }

    private float getBadgeCircleRadius() {
        float fWidth;
        float f10;
        if (this.f96420l.isEmpty()) {
            return this.f96418j;
        }
        if (this.f96420l.length() != 1) {
            return this.f96433y.height() / 2.0f;
        }
        if (this.f96432x.height() > this.f96432x.width()) {
            fWidth = this.f96432x.height() / 2.0f;
            f10 = this.f96418j;
        } else {
            fWidth = this.f96432x.width() / 2.0f;
            f10 = this.f96418j;
        }
        return fWidth + (f10 * 0.5f);
    }

    private void z() {
        if (this.f96420l != null && this.f96415g) {
            Bitmap bitmap = this.f96414f;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f96414f.recycle();
            }
            float badgeCircleRadius = getBadgeCircleRadius();
            if (!this.f96420l.isEmpty() && this.f96420l.length() != 1) {
                this.f96414f = Bitmap.createBitmap((int) (this.f96432x.width() + (this.f96418j * 2.0f)), (int) (this.f96432x.height() + this.f96418j), Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(this.f96414f);
                canvas.drawRoundRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), canvas.getHeight() / 2.0f, canvas.getHeight() / 2.0f, this.K);
            } else {
                int i10 = ((int) badgeCircleRadius) * 2;
                this.f96414f = Bitmap.createBitmap(i10, i10, Bitmap.Config.ARGB_4444);
                Canvas canvas2 = new Canvas(this.f96414f);
                canvas2.drawCircle(canvas2.getWidth() / 2.0f, canvas2.getHeight() / 2.0f, canvas2.getWidth() / 2.0f, this.K);
            }
        }
    }

    public void L() {
        PointF pointF = this.C;
        pointF.x = -1000.0f;
        pointF.y = -1000.0f;
        this.f96430v = 4;
        M(false);
        getParent().requestDisallowInterceptTouchEvent(false);
        invalidate();
    }

    protected void M(boolean z10) {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        if (z10) {
            this.O.addView(this, new FrameLayout.LayoutParams(-1, -1));
        } else {
            n(this.G);
        }
    }

    @Override // q.rorbin.badgeview.a
    public float a(boolean z10) {
        return z10 ? d.b(getContext(), this.f96417i) : this.f96417i;
    }

    @Override // q.rorbin.badgeview.a
    public float b(boolean z10) {
        return z10 ? d.b(getContext(), this.f96426r) : this.f96426r;
    }

    @Override // q.rorbin.badgeview.a
    public float c(boolean z10) {
        return z10 ? d.b(getContext(), this.f96427s) : this.f96427s;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a d(int i10) {
        this.f96410b = i10;
        if (i10 == 0) {
            this.J.setXfermode(null);
        } else {
            this.J.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        }
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public boolean e() {
        return this.f96423o;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a f(float f10, boolean z10) {
        return h(f10, f10, z10);
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a g(int i10) {
        this.f96419k = i10;
        if (i10 < 0) {
            this.f96420l = "";
        } else if (i10 > 99) {
            this.f96420l = this.f96423o ? String.valueOf(i10) : "99+";
        } else if (i10 > 0 && i10 <= 99) {
            this.f96420l = String.valueOf(i10);
        } else if (i10 == 0) {
            this.f96420l = null;
        }
        J();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public Drawable getBadgeBackground() {
        return this.f96413e;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeBackgroundColor() {
        return this.f96410b;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeGravity() {
        return this.f96425q;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeNumber() {
        return this.f96419k;
    }

    @Override // q.rorbin.badgeview.a
    public String getBadgeText() {
        return this.f96420l;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeTextColor() {
        return this.f96412d;
    }

    @Override // q.rorbin.badgeview.a
    public PointF getDragCenter() {
        if (this.f96421m && this.f96422n) {
            return this.C;
        }
        return null;
    }

    @Override // q.rorbin.badgeview.a
    public View getTargetView() {
        return this.G;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a h(float f10, float f11, boolean z10) {
        if (z10) {
            f10 = d.a(getContext(), f10);
        }
        this.f96426r = f10;
        if (z10) {
            f11 = d.a(getContext(), f11);
        }
        this.f96427s = f11;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public void hide(boolean z10) {
        if (!z10 || this.O == null) {
            g(0);
        } else {
            I();
            x(this.D);
        }
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a i(boolean z10) {
        this.f96424p = z10;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a j(boolean z10) {
        this.f96423o = z10;
        int i10 = this.f96419k;
        if (i10 > 99) {
            g(i10);
        }
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a k(float f10, boolean z10) {
        if (z10) {
            f10 = d.a(getContext(), f10);
        }
        this.f96418j = f10;
        z();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a l(Drawable drawable, boolean z10) {
        this.f96415g = z10;
        this.f96413e = drawable;
        z();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public boolean m() {
        return this.f96424p;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a n(View view) {
        if (view == null) {
            throw new IllegalStateException("targetView can not be null");
        }
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        ViewParent parent = view.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("targetView must have a parent");
        }
        this.G = view;
        if (parent instanceof a) {
            ((a) parent).addView(this);
        } else {
            ViewGroup viewGroup = (ViewGroup) parent;
            int iIndexOfChild = viewGroup.indexOfChild(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            viewGroup.removeView(view);
            a aVar = new a(getContext());
            aVar.setId(view.getId());
            view.setId(-1);
            viewGroup.addView(aVar, iIndexOfChild, layoutParams);
            aVar.addView(view);
            aVar.addView(this);
        }
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a o(String str) {
        this.f96420l = str;
        this.f96419k = 1;
        J();
        invalidate();
        return this;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.O == null) {
            F(this.G);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        b bVar = this.M;
        if (bVar != null && bVar.isRunning()) {
            this.M.b(canvas);
            return;
        }
        if (this.f96420l != null) {
            H();
            float badgeCircleRadius = getBadgeCircleRadius();
            float fB = this.f96428t * (1.0f - (e.b(this.D, this.C) / this.f96429u));
            if (!this.f96421m || !this.f96422n) {
                E();
                A(canvas, this.B, badgeCircleRadius);
                return;
            }
            this.f96430v = e.c(this.C, this.D);
            N(this.f96424p);
            boolean z10 = fB < ((float) d.a(getContext(), 1.5f));
            this.f96431w = z10;
            if (z10) {
                O(3);
                A(canvas, this.C, badgeCircleRadius);
            } else {
                O(2);
                C(canvas, fB, badgeCircleRadius);
                A(canvas, this.C, badgeCircleRadius);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.H = i10;
        this.I = i11;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10;
        RectF rectF;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (this.f96421m && motionEvent.getPointerId(motionEvent.getActionIndex()) == 0) {
                rectF = this.f96433y;
                if (x10 > rectF.left && x10 < rectF.right && y10 > rectF.top && y10 < rectF.bottom && this.f96420l != null) {
                    I();
                    this.f96422n = true;
                    O(1);
                    this.f96428t = d.a(getContext(), 7.0f);
                    getParent().requestDisallowInterceptTouchEvent(true);
                    M(true);
                    this.C.x = motionEvent.getRawX();
                    this.C.y = motionEvent.getRawY();
                }
            }
        } else if (actionMasked == 1) {
            if (motionEvent.getPointerId(motionEvent.getActionIndex()) == 0 && this.f96422n) {
                this.f96422n = false;
                K();
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (motionEvent.getPointerId(motionEvent.getActionIndex()) == 0) {
                    this.f96422n = false;
                    K();
                }
            } else if (actionMasked == 5) {
                x10 = motionEvent.getX();
                float y11 = motionEvent.getY();
                if (this.f96421m) {
                    rectF = this.f96433y;
                    if (x10 > rectF.left) {
                        I();
                        this.f96422n = true;
                        O(1);
                        this.f96428t = d.a(getContext(), 7.0f);
                        getParent().requestDisallowInterceptTouchEvent(true);
                        M(true);
                        this.C.x = motionEvent.getRawX();
                        this.C.y = motionEvent.getRawY();
                    }
                }
            } else if (actionMasked == 6) {
                if (motionEvent.getPointerId(motionEvent.getActionIndex()) == 0) {
                    this.f96422n = false;
                    K();
                }
            }
        } else if (this.f96422n) {
            this.C.x = motionEvent.getRawX();
            this.C.y = motionEvent.getRawY();
            invalidate();
        }
        return this.f96422n || super.onTouchEvent(motionEvent);
    }

    @Override // q.rorbin.badgeview.a
    public boolean p() {
        return this.f96421m;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a q(q.rorbin.badgeview.a.InterfaceC1236a interfaceC1236a) {
        this.f96421m = interfaceC1236a != null;
        this.N = interfaceC1236a;
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public float r(boolean z10) {
        return z10 ? d.b(getContext(), this.f96418j) : this.f96418j;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a s(int i10) {
        this.f96412d = i10;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a t(int i10, float f10, boolean z10) {
        this.f96411c = i10;
        if (z10) {
            f10 = d.a(getContext(), f10);
        }
        this.f96416h = f10;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a u(int i10) {
        if (i10 != 8388659 && i10 != 8388661 && i10 != 8388691 && i10 != 8388693 && i10 != 17 && i10 != 49 && i10 != 81 && i10 != 8388627 && i10 != 8388629) {
            throw new IllegalStateException("only support Gravity.START | Gravity.TOP , Gravity.END | Gravity.TOP , Gravity.START | Gravity.BOTTOM , Gravity.END | Gravity.BOTTOM , Gravity.CENTER , Gravity.CENTER | Gravity.TOP , Gravity.CENTER | Gravity.BOTTOM ,Gravity.CENTER | Gravity.START , Gravity.CENTER | Gravity.END");
        }
        this.f96425q = i10;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a v(Drawable drawable) {
        return l(drawable, false);
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a w(float f10, boolean z10) {
        if (z10) {
            f10 = d.a(getContext(), f10);
        }
        this.f96417i = f10;
        J();
        invalidate();
        return this;
    }

    protected void x(PointF pointF) {
        if (this.f96420l == null) {
            return;
        }
        b bVar = this.M;
        if (bVar == null || !bVar.isRunning()) {
            M(true);
            b bVar2 = new b(y(), pointF, this);
            this.M = bVar2;
            bVar2.start();
            g(0);
        }
    }

    protected Bitmap y() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f96433y.width()) + d.a(getContext(), 3.0f), ((int) this.f96433y.height()) + d.a(getContext(), 3.0f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        A(canvas, new PointF(canvas.getWidth() / 2.0f, canvas.getHeight() / 2.0f), getBadgeCircleRadius());
        return bitmapCreateBitmap;
    }

    private QBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private QBadgeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        G();
    }
}
