package com.byazt.te;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.byazt.nr.z;
import com.byazt.vfu.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 14, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_FALLBACK_THRESHLOD})
public class CycleCountDownView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f20139a;
    public String bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20140c;
    public float cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f20141d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f20142da;
    public final Rect eo;
    public Bitmap gr;
    public ValueAnimator gt;
    public Bitmap gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f20143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f20144i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f20145m;
    public final RectF md;
    public ValueAnimator my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f20146n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public String f20147nb;
    public AnimatorSet nu;
    public final Rect or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f20148p;
    public String pf;
    public String qp;
    public boolean qy;
    public ValueAnimator rh;
    public boolean rl;
    public boolean sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Paint f20149t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Paint f20150u;
    public float uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f20151x;
    public Paint yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Paint f20152z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public final Rect f20153zb;
    public Bitmap zm;

    public CycleCountDownView(Context context) {
        super(context);
        this.f20140c = Color.parseColor("#FFDA7B");
        this.tt = Color.parseColor("#4D000000");
        this.ve = Color.parseColor("#ffffff");
        this.f20139a = 270;
        this.sp = false;
        this.f20151x = 5.0f;
        this.f20144i = 0.0f;
        this.f20142da = 0;
        this.sl = false;
        this.f20145m = 0.0f;
        this.rl = false;
        this.qy = false;
        this.yv = false;
        this.f20148p = false;
        this.md = new RectF();
        this.f20143h = new Rect();
        this.f20141d = new Rect();
        this.eo = new Rect();
        this.f20153zb = new Rect();
        this.or = new Rect();
        this.cu = 1.0f;
        this.uj = c(4.0f);
        this.f20146n = c(34.0f);
        this.f20139a %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        tt();
        ve();
        setBackgroundColor(-16711681);
    }

    private int a() {
        return (int) ((((this.uj / 2.0f) + this.f20146n) * 2.0f) + c(4.0f));
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.my;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.my = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f20145m, this.cu);
        this.my = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.my.setDuration(1000L);
        this.my.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.te.CycleCountDownView.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                CycleCountDownView.this.f20145m = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                CycleCountDownView.this.postInvalidate();
            }
        });
        return this.my;
    }

    private int getMinLine() {
        return Math.min(getMeasuredHeight(), getMeasuredWidth());
    }

    private void n() {
        RectF rectF = this.md;
        float f10 = this.f20146n;
        rectF.left = -f10;
        rectF.right = f10;
        rectF.top = -f10;
        rectF.bottom = f10;
        Rect rect = this.f20143h;
        rect.left = 0;
        rect.top = 0;
        Bitmap bitmap = this.gu;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.f20143h;
        Bitmap bitmap2 = this.gu;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
        Rect rect3 = this.f20141d;
        rect3.left = 0;
        rect3.top = 0;
        Bitmap bitmap3 = this.gr;
        rect3.right = bitmap3 != null ? bitmap3.getWidth() : 0;
        Rect rect4 = this.f20141d;
        Bitmap bitmap4 = this.gr;
        rect4.bottom = bitmap4 != null ? bitmap4.getHeight() : 0;
        int minLine = getMinLine();
        Rect rect5 = this.eo;
        int i10 = -minLine;
        int i11 = i10 / 2;
        rect5.left = i11;
        rect5.top = i11;
        int i12 = minLine / 2;
        rect5.right = i12;
        rect5.bottom = i12;
        Rect rect6 = this.f20153zb;
        rect6.left = 0;
        rect6.top = 0;
        rect6.right = this.zm.getWidth();
        this.f20153zb.bottom = this.zm.getHeight();
        Rect rect7 = this.or;
        rect7.left = i10 / 3;
        int i13 = minLine / 8;
        rect7.top = i13;
        int i14 = minLine / 3;
        rect7.right = i14;
        rect7.bottom = i14;
        this.yp.setTextSize(((i14 - i13) / 2) - tt(2.0f));
    }

    private Bitmap sp() {
        LayerDrawable layerDrawableC = n.c(getContext());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(layerDrawableC.getIntrinsicWidth(), layerDrawableC.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        layerDrawableC.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        layerDrawableC.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        if (this.gr == null || this.gu == null) {
            return;
        }
        n();
        post(new Runnable() { // from class: com.byazt.te.CycleCountDownView.3
            @Override // java.lang.Runnable
            public void run() {
                CycleCountDownView.this.invalidate();
            }
        });
    }

    private void ve() {
        this.zm = sp();
        z.c(getContext(), "tt_reward_chest_gift2", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.te.CycleCountDownView.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                CycleCountDownView.this.gu = bitmap;
                CycleCountDownView.this.uj();
            }
        }, 320);
        z.c(getContext(), "tt_reward_chest_gift_open2", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.te.CycleCountDownView.2
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                CycleCountDownView.this.gr = bitmap;
                CycleCountDownView.this.uj();
            }
        }, 320);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            AnimatorSet animatorSet = this.nu;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.nu = null;
            }
            ValueAnimator valueAnimator = this.gt;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.gt = null;
            }
            ValueAnimator valueAnimator2 = this.rh;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.rh = null;
            }
            ValueAnimator valueAnimator3 = this.my;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.my = null;
            }
            this.f20145m = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        c(canvas);
        ve(canvas);
        tt(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824) {
            size = a();
        }
        if (mode2 != 1073741824) {
            size2 = a();
        }
        c(size, size2);
        setMeasuredDimension(size, size2);
        n();
    }

    public void setBoxFinish(Bitmap bitmap) {
        this.gr = bitmap;
        this.f20148p = true;
        Rect rect = this.f20141d;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.f20141d;
        Bitmap bitmap2 = this.gr;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setBoxImage(Bitmap bitmap) {
        this.gu = bitmap;
        this.yv = true;
        Rect rect = this.f20143h;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.f20143h;
        Bitmap bitmap2 = this.gu;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setCanSkip(boolean z10) {
        this.sl = z10;
    }

    private void tt() {
        Paint paint = new Paint(1);
        this.f20149t = paint;
        paint.setColor(this.f20140c);
        this.f20149t.setStrokeWidth(this.uj);
        this.f20149t.setAntiAlias(true);
        this.f20149t.setStrokeCap(Paint.Cap.ROUND);
        this.f20149t.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.f20150u = paint2;
        paint2.setColor(this.tt);
        this.f20150u.setAntiAlias(true);
        this.f20150u.setStrokeWidth(this.uj);
        this.f20150u.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.yp = paint3;
        paint3.setColor(this.ve);
        this.yp.setTextAlign(Paint.Align.CENTER);
        Paint paint4 = new Paint(1);
        this.f20152z = paint4;
        paint4.setFilterBitmap(true);
        this.f20152z.setDither(true);
    }

    private void ve(Canvas canvas) {
        float f10;
        canvas.save();
        float f11 = this.f20145m * 360.0f;
        if (this.sp) {
            f10 = this.f20139a - f11;
        } else {
            f10 = this.f20139a;
        }
        canvas.drawCircle(0.0f, 0.0f, this.f20146n, this.f20150u);
        canvas.drawArc(this.md, f10, f11, false, this.f20149t);
        canvas.restore();
    }

    private void c(int i10, int i11) {
        this.f20146n = (Math.min(i10, i11) / 2.0f) - this.uj;
    }

    private void c(Canvas canvas) {
        Bitmap bitmap;
        canvas.save();
        boolean z10 = false;
        if (this.f20142da <= 0 && (bitmap = this.gr) != null) {
            boolean z11 = this.yv;
            if (!(z11 && this.f20148p) && (z11 || this.f20148p)) {
                bitmap = this.gu;
            } else {
                z10 = true;
            }
        } else {
            bitmap = this.gu;
        }
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, z10 ? this.f20141d : this.f20143h, this.eo, this.f20152z);
        }
        canvas.restore();
    }

    private float c(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    public void c() {
        AnimatorSet animatorSet = this.nu;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.nu.cancel();
            this.nu = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.nu = animatorSet2;
        animatorSet2.playTogether(getArcAnim());
        this.nu.setInterpolator(new LinearInterpolator());
        this.nu.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.te.CycleCountDownView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                CycleCountDownView.this.rl = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CycleCountDownView.this.rl) {
                    CycleCountDownView.this.rl = false;
                } else {
                    CycleCountDownView.this.qy = true;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.nu.start();
    }

    private void tt(Canvas canvas) {
        String str;
        canvas.save();
        canvas.drawBitmap(this.zm, this.f20153zb, this.or, this.f20152z);
        Paint.FontMetrics fontMetrics = this.yp.getFontMetrics();
        float f10 = (fontMetrics.bottom - fontMetrics.top) / 2.0f;
        if (TextUtils.isEmpty(this.bx)) {
            str = this.qp + this.f20142da + this.f20147nb;
        } else if (this.f20142da <= 0) {
            str = this.bx;
        } else {
            str = this.qp + this.f20142da + this.f20147nb;
        }
        if (this.sl) {
            str = str + "｜" + this.pf;
        }
        canvas.drawText(str, 0.0f, ((getMinLine() / 3.0f) - (getMinLine() / 9.0f)) + (f10 / 2.0f), this.yp);
        canvas.restore();
    }

    public void c(int i10, int i11, int i12) {
        float f10 = i10;
        this.f20151x = f10;
        float f11 = i11;
        this.f20144i = f11;
        this.f20142da = i12;
        this.cu = f11 / f10;
        c();
    }

    public void c(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.qp = str;
        this.f20147nb = TextUtils.isEmpty(str2) ? "" : str2;
        if (TextUtils.isEmpty(str3)) {
            str3 = "跳过";
        }
        this.pf = str3;
        if (TextUtils.isEmpty(str2)) {
            str4 = "";
        }
        this.bx = str4;
    }

    private float tt(float f10) {
        return TypedValue.applyDimension(2, f10, getResources().getDisplayMetrics());
    }
}
