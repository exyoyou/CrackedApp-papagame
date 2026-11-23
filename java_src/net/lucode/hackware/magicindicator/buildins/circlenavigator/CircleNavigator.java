package net.lucode.hackware.magicindicator.buildins.circlenavigator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;
import sc.b;

/* JADX INFO: loaded from: classes.dex */
public class CircleNavigator extends View implements rc.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Interpolator f94779h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f94780i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<PointF> f94781j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f94782k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f94783l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f94784m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f94785n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f94786o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f94787p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f94788q;

    public interface a {
        void a(int i10);
    }

    public CircleNavigator(Context context) {
        super(context);
        this.f94779h = new LinearInterpolator();
        this.f94780i = new Paint(1);
        this.f94781j = new ArrayList();
        this.f94788q = true;
        c(context);
    }

    private void a(Canvas canvas) {
        this.f94780i.setStyle(Paint.Style.STROKE);
        this.f94780i.setStrokeWidth(this.f94775d);
        int size = this.f94781j.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointF pointF = this.f94781j.get(i10);
            canvas.drawCircle(pointF.x, pointF.y, this.f94773b, this.f94780i);
        }
    }

    private void b(Canvas canvas) {
        this.f94780i.setStyle(Paint.Style.FILL);
        if (this.f94781j.size() > 0) {
            canvas.drawCircle(this.f94782k, (int) ((getHeight() / 2.0f) + 0.5f), this.f94773b, this.f94780i);
        }
    }

    private void c(Context context) {
        this.f94787p = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f94773b = b.a(context, 3.0d);
        this.f94776e = b.a(context, 8.0d);
        this.f94775d = b.a(context, 1.0d);
    }

    private int h(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            return (this.f94773b * 2) + (this.f94775d * 2) + getPaddingTop() + getPaddingBottom();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private int i(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i11 = this.f94778g;
            return (this.f94775d * 2) + (this.f94773b * i11 * 2) + ((i11 - 1) * this.f94776e) + getPaddingLeft() + getPaddingRight();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private void j() {
        this.f94781j.clear();
        if (this.f94778g > 0) {
            int height = (int) ((getHeight() / 2.0f) + 0.5f);
            int i10 = this.f94773b;
            int i11 = (i10 * 2) + this.f94776e;
            int paddingLeft = i10 + ((int) ((this.f94775d / 2.0f) + 0.5f)) + getPaddingLeft();
            for (int i12 = 0; i12 < this.f94778g; i12++) {
                this.f94781j.add(new PointF(paddingLeft, height));
                paddingLeft += i11;
            }
            this.f94782k = this.f94781j.get(this.f94777f).x;
        }
    }

    public boolean d() {
        return this.f94788q;
    }

    @Override // rc.a
    public void e() {
    }

    @Override // rc.a
    public void f() {
    }

    public boolean g() {
        return this.f94783l;
    }

    public a getCircleClickListener() {
        return this.f94784m;
    }

    public int getCircleColor() {
        return this.f94774c;
    }

    public int getCircleCount() {
        return this.f94778g;
    }

    public int getCircleSpacing() {
        return this.f94776e;
    }

    public int getRadius() {
        return this.f94773b;
    }

    public Interpolator getStartInterpolator() {
        return this.f94779h;
    }

    public int getStrokeWidth() {
        return this.f94775d;
    }

    @Override // rc.a
    public void notifyDataSetChanged() {
        j();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f94780i.setColor(this.f94774c);
        a(canvas);
        b(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        j();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(i(i10), h(i11));
    }

    @Override // rc.a
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // rc.a
    public void onPageScrolled(int i10, float f10, int i11) {
        if (!this.f94788q || this.f94781j.isEmpty()) {
            return;
        }
        int iMin = Math.min(this.f94781j.size() - 1, i10);
        int iMin2 = Math.min(this.f94781j.size() - 1, i10 + 1);
        PointF pointF = this.f94781j.get(iMin);
        PointF pointF2 = this.f94781j.get(iMin2);
        float f11 = pointF.x;
        this.f94782k = f11 + ((pointF2.x - f11) * this.f94779h.getInterpolation(f10));
        invalidate();
    }

    @Override // rc.a
    public void onPageSelected(int i10) {
        this.f94777f = i10;
        if (this.f94788q) {
            return;
        }
        this.f94782k = this.f94781j.get(i10).x;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 && this.f94784m != null && Math.abs(x10 - this.f94785n) <= this.f94787p && Math.abs(y10 - this.f94786o) <= this.f94787p) {
                int i10 = 0;
                float f10 = Float.MAX_VALUE;
                for (int i11 = 0; i11 < this.f94781j.size(); i11++) {
                    float fAbs = Math.abs(this.f94781j.get(i11).x - x10);
                    if (fAbs < f10) {
                        i10 = i11;
                        f10 = fAbs;
                    }
                }
                this.f94784m.a(i10);
            }
        } else if (this.f94783l) {
            this.f94785n = x10;
            this.f94786o = y10;
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCircleClickListener(a aVar) {
        if (!this.f94783l) {
            this.f94783l = true;
        }
        this.f94784m = aVar;
    }

    public void setCircleColor(int i10) {
        this.f94774c = i10;
        invalidate();
    }

    public void setCircleCount(int i10) {
        this.f94778g = i10;
    }

    public void setCircleSpacing(int i10) {
        this.f94776e = i10;
        j();
        invalidate();
    }

    public void setFollowTouch(boolean z10) {
        this.f94788q = z10;
    }

    public void setRadius(int i10) {
        this.f94773b = i10;
        j();
        invalidate();
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f94779h = interpolator;
        if (interpolator == null) {
            this.f94779h = new LinearInterpolator();
        }
    }

    public void setStrokeWidth(int i10) {
        this.f94775d = i10;
        invalidate();
    }

    public void setTouchable(boolean z10) {
        this.f94783l = z10;
    }
}
