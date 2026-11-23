package q.rorbin.badgeview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.Random;

/* JADX INFO: loaded from: classes10.dex */
public class b extends ValueAnimator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c[][] f96441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<QBadgeView> f96442c;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QBadgeView qBadgeView = (QBadgeView) b.this.f96442c.get();
            if (qBadgeView == null || !qBadgeView.isShown()) {
                b.this.cancel();
            } else {
                qBadgeView.invalidate();
            }
        }
    }

    /* JADX INFO: renamed from: q.rorbin.badgeview.b$b, reason: collision with other inner class name */
    class C1237b extends AnimatorListenerAdapter {
        C1237b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QBadgeView qBadgeView = (QBadgeView) b.this.f96442c.get();
            if (qBadgeView != null) {
                qBadgeView.L();
            }
        }
    }

    private class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Random f96445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f96446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f96447c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f96448d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f96449e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f96450f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Paint f96451g;

        public c() {
            Paint paint = new Paint();
            this.f96451g = paint;
            paint.setAntiAlias(true);
            this.f96451g.setStyle(Paint.Style.FILL);
            this.f96445a = new Random();
        }

        public void a(float f10, Canvas canvas) {
            this.f96451g.setColor(this.f96449e);
            this.f96446b += this.f96445a.nextInt(this.f96450f) * 0.1f * (this.f96445a.nextFloat() - 0.5f);
            float fNextInt = this.f96447c + (this.f96445a.nextInt(this.f96450f) * 0.1f * (this.f96445a.nextFloat() - 0.5f));
            this.f96447c = fNextInt;
            float f11 = this.f96446b;
            float f12 = this.f96448d;
            canvas.drawCircle(f11, fNextInt, f12 - (f10 * f12), this.f96451g);
        }
    }

    public b(Bitmap bitmap, PointF pointF, QBadgeView qBadgeView) {
        this.f96442c = new WeakReference<>(qBadgeView);
        setFloatValues(0.0f, 1.0f);
        setDuration(500L);
        this.f96441b = c(bitmap, pointF);
        addUpdateListener(new a());
        addListener(new C1237b());
    }

    private c[][] c(Bitmap bitmap, PointF pointF) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float fMin = Math.min(width, height) / 6.0f;
        float width2 = pointF.x - (bitmap.getWidth() / 2.0f);
        float height2 = pointF.y - (bitmap.getHeight() / 2.0f);
        c[][] cVarArr = (c[][]) Array.newInstance((Class<?>) c.class, (int) (height / fMin), (int) (width / fMin));
        for (int i10 = 0; i10 < cVarArr.length; i10++) {
            for (int i11 = 0; i11 < cVarArr[i10].length; i11++) {
                c cVar = new c();
                float f10 = i11 * fMin;
                float f11 = i10 * fMin;
                cVar.f96449e = bitmap.getPixel((int) f10, (int) f11);
                cVar.f96446b = f10 + width2;
                cVar.f96447c = f11 + height2;
                cVar.f96448d = fMin;
                cVar.f96450f = Math.max(width, height);
                cVarArr[i10][i11] = cVar;
            }
        }
        bitmap.recycle();
        return cVarArr;
    }

    public void b(Canvas canvas) {
        for (int i10 = 0; i10 < this.f96441b.length; i10++) {
            int i11 = 0;
            while (true) {
                c[] cVarArr = this.f96441b[i10];
                if (i11 < cVarArr.length) {
                    cVarArr[i11].a(Float.parseFloat(getAnimatedValue().toString()), canvas);
                    i11++;
                }
            }
        }
    }
}
