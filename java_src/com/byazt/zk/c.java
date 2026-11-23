package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.aggmoread.sdk.z.a.i.l;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.nr.m;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 20})
public class c extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public ImageView f22814da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f22815i;
    public Drawable sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LottieAnimationView f22816t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Handler f22817u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f22818x;
    public final Runnable yp;

    public c(com.byazt.ga.x xVar, x xVar2, Context context) {
        super(xVar, xVar2);
        this.f22818x = -1.0f;
        this.f22815i = -1.0f;
        this.f22817u = new Handler(Looper.getMainLooper());
        this.yp = new Runnable() { // from class: com.byazt.zk.c.5
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f22816t != null && c.this.f22816t.n()) {
                    c.this.f22816t.invalidate();
                }
                c.this.f22817u.postDelayed(c.this.yp, 40L);
            }
        };
        if (((sp) this).sp == null || xVar == null) {
            return;
        }
        LottieAnimationView lottieAnimationViewTt = xVar.tt();
        this.f22816t = lottieAnimationViewTt;
        if (lottieAnimationViewTt == null) {
            return;
        }
        float fC = com.byazt.kk.da.c();
        this.f22818x = (int) (((sp) this).sp.c() * fC);
        this.f22815i = (int) (((sp) this).sp.tt() * fC);
        gt gtVarZm = xVar.zm();
        String strC = gtVarZm != null ? gtVarZm.c(((sp) this).sp.u()) : null;
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        ImageView imageView = new ImageView(context);
        this.f22814da = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f22814da.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.zk.c.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (c.this.f22814da == view) {
                    c.this.nu();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (c.this.f22814da == view) {
                    c.this.z();
                    if (Build.VERSION.SDK_INT < 28 || !k.a(c.this.sl)) {
                        return;
                    }
                    l.a(c.this.sl).stop();
                }
            }
        });
        this.f22816t.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.zk.c.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (c.this.f22816t == view) {
                    if (c.this.tt()) {
                        c.this.f22816t.removeOnAttachStateChangeListener(this);
                    } else {
                        c.this.c(new Runnable() { // from class: com.byazt.zk.c.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                c.this.rh();
                            }
                        });
                    }
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (c.this.f22816t == view) {
                    c.this.c(new Runnable() { // from class: com.byazt.zk.c.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewParent parent = c.this.f22814da.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(c.this.f22814da);
                            }
                        }
                    });
                }
            }
        });
        c(strC, context);
    }

    private void m() {
        z();
        if (this.f22816t != null) {
            this.f22817u.postDelayed(this.yp, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        if (Build.VERSION.SDK_INT < 28 || !k.a(this.sl) || l.a(this.sl).isRunning()) {
            return;
        }
        l.a(this.sl).setRepeatCount(-1);
        l.a(this.sl).start();
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rh() {
        if (this.sl != null) {
            ViewParent parent = this.f22814da.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f22814da);
            }
            ViewParent parent2 = this.f22816t.getParent();
            if (parent2 instanceof ViewGroup) {
                this.f22814da.setTranslationX(2.1474836E9f);
                this.f22814da.setImageDrawable(this.sl);
                ((ViewGroup) parent2).addView(this.f22814da);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.f22817u.removeCallbacksAndMessages(null);
    }

    @Override // com.byazt.zk.sp, com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        if (this.f22818x <= 0.0f || this.f22814da == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(i10);
        float fX = x();
        c(this.f22814da, (int) this.f22818x, (int) this.f22815i);
        this.f22814da.setAlpha(fX);
        canvas.clipRect(0.0f, 0.0f, this.f22818x, this.f22815i);
        this.f22814da.draw(canvas);
        canvas.restore();
    }

    private void c(String str, Context context) {
        File file = new File(com.byazt.kk.ve.c(context), com.byazt.nr.a.tt(str));
        if (file.exists()) {
            c(file);
        } else {
            com.byazt.kk.ve.c(str, context, new com.byazt.kk.ve.c<File>() { // from class: com.byazt.zk.c.3
                @Override // com.byazt.kk.ve.c
                public void c(File file2) {
                    c.this.c(file2);
                }

                @Override // com.byazt.kk.ve.c
                public void c(int i10, String str2) {
                    m.c("TMe", "--==--- webp: " + i10 + ", " + str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(File file) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                if (k.a(this.sl)) {
                    l.a(this.sl).stop();
                }
                this.sl = ImageDecoder.decodeDrawable(ImageDecoder.createSource(file));
                this.f22817u.post(new Runnable() { // from class: com.byazt.zk.c.4
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.rh();
                    }
                });
            } catch (IOException e10) {
                m.c(e10);
            }
        }
    }

    private static void c(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
