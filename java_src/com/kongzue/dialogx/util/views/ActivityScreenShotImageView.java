package com.kongzue.dialogx.util.views;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.util.DialogXFloatingWindowActivity;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class ActivityScreenShotImageView extends ImageView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f74224m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f74225n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f74226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f74227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f74228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f74229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f74230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f74231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f74233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WeakReference<View> f74235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    BaseDialog f74236l;

    public ActivityScreenShotImageView(Context context) {
        super(context);
        this.f74230f = false;
        this.f74233i = false;
        d(null);
    }

    private void b() {
        ViewGroup decorView = getDecorView();
        if (decorView == null) {
            return;
        }
        c(decorView);
        setVisibility(0);
        this.f74233i = true;
    }

    private void c(View view) {
        if (view.getWidth() == 0 || view.getHeight() == 0) {
            return;
        }
        this.f74236l.C().setVisibility(8);
        setContentViewVisibility(true);
        if (view.getWidth() + view.getHeight() == 0) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        try {
            view.draw(new Canvas(bitmapCreateBitmap));
        } catch (Exception e10) {
            if (DialogX.f73590b) {
                e10.printStackTrace();
            }
            if (f74224m) {
                f74224m = false;
                f();
                c(view);
            }
        }
        setImageBitmap(Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, view.getWidth(), view.getHeight()));
        this.f74234j = true;
        setContentViewVisibility(false);
        this.f74236l.C().setVisibility(0);
        this.f74236l.C().requestFocus();
    }

    private void d(AttributeSet attributeSet) {
        f();
    }

    private void e() {
        if (isAttachedToWindow()) {
            if (this.f74231g == getMeasuredWidth() && this.f74232h == getMeasuredHeight()) {
                return;
            }
            this.f74231g = getMeasuredWidth();
            this.f74232h = getMeasuredHeight();
            b();
        }
    }

    private void f() {
        setLayerType(f74224m ? 2 : 1, null);
    }

    private ViewGroup getDecorView() {
        BaseDialog baseDialog = this.f74236l;
        if (baseDialog != null) {
            return (ViewGroup) baseDialog.N().getWindow().getDecorView();
        }
        Activity activityD = com.kongzue.dialogx.impl.a.d();
        if (activityD != null) {
            return activityD instanceof DialogXFloatingWindowActivity ? (ViewGroup) ((DialogXFloatingWindowActivity) activityD).getFromActivity().getWindow().getDecorView() : (ViewGroup) activityD.getWindow().getDecorView();
        }
        return null;
    }

    public void a(BaseDialog baseDialog) {
        this.f74236l = baseDialog;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setContentViewVisibility(true);
        WeakReference<View> weakReference = this.f74235k;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.f74230f) {
            super.onDraw(canvas);
        }
        float f10 = this.f74227c;
        float f11 = this.f74229e;
        if (f10 >= f11 && this.f74228d > f11) {
            if (this.f74234j) {
                canvas.drawColor(-16777216);
            }
            Path path = new Path();
            path.moveTo(this.f74229e, 0.0f);
            path.lineTo(this.f74227c - this.f74229e, 0.0f);
            float f12 = this.f74227c;
            path.quadTo(f12, 0.0f, f12, this.f74229e);
            path.lineTo(this.f74227c, this.f74228d - this.f74229e);
            float f13 = this.f74227c;
            float f14 = this.f74228d;
            path.quadTo(f13, f14, f13 - this.f74229e, f14);
            path.lineTo(this.f74229e, this.f74228d);
            float f15 = this.f74228d;
            path.quadTo(0.0f, f15, 0.0f, f15 - this.f74229e);
            path.lineTo(0.0f, this.f74229e);
            path.quadTo(0.0f, 0.0f, this.f74229e, 0.0f);
            canvas.clipPath(path);
        }
        canvas.drawColor(-1);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f74227c != getWidth() || this.f74228d != getHeight()) {
            e();
        }
        this.f74227c = getWidth();
        this.f74228d = getHeight();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f74234j) {
            return;
        }
        e();
    }

    protected void setContentViewVisibility(boolean z10) {
        if (f74225n || this.f74226b) {
            if (z10) {
                WeakReference<View> weakReference = this.f74235k;
                if (weakReference == null || weakReference.get() == null) {
                    return;
                }
                this.f74235k.get().setVisibility(0);
                return;
            }
            ViewGroup decorView = getDecorView();
            Objects.requireNonNull(decorView);
            View childAt = decorView.getChildAt(0);
            if (childAt != null) {
                childAt.setVisibility(8);
                this.f74235k = new WeakReference<>(childAt);
            }
        }
    }

    public void setRadius(float f10) {
        this.f74229e = f10;
        invalidate();
    }

    public void setScale(float f10) {
        setScaleX(f10);
        setScaleY(f10);
        this.f74230f = true;
    }

    public ActivityScreenShotImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74230f = false;
        this.f74233i = false;
        d(attributeSet);
    }

    public ActivityScreenShotImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74230f = false;
        this.f74233i = false;
        d(attributeSet);
    }
}
