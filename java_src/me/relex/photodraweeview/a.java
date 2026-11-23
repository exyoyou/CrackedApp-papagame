package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.widget.ScrollerCompat;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.DraweeView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class a implements d, View.OnTouchListener, g {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f94282w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f94283x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f94284y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f94285z = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i f94293i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private GestureDetectorCompat f94294j;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c f94301q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private WeakReference<DraweeView<com.facebook.drawee.generic.a>> f94302r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private e f94303s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private h f94304t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View.OnLongClickListener f94305u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private f f94306v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f94286b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f94287c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Interpolator f94288d = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f94289e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f94290f = 1.75f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f94291g = 3.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f94292h = 200;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f94295k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f94296l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f94297m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Matrix f94298n = new Matrix();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f94299o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f94300p = -1;

    /* JADX INFO: renamed from: me.relex.photodraweeview.a$a, reason: collision with other inner class name */
    class C1211a extends GestureDetector.SimpleOnGestureListener {
        C1211a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            if (a.this.f94305u != null) {
                a.this.f94305u.onLongClick(a.this.r());
            }
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f94308b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f94309c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f94310d = System.currentTimeMillis();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f94311e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f94312f;

        public b(float f10, float f11, float f12, float f13) {
            this.f94308b = f12;
            this.f94309c = f13;
            this.f94311e = f10;
            this.f94312f = f11;
        }

        private float a() {
            return a.this.f94288d.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.f94310d) * 1.0f) / a.this.f94292h));
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<com.facebook.drawee.generic.a> draweeViewR = a.this.r();
            if (draweeViewR == null) {
                return;
            }
            float fA = a();
            float f10 = this.f94311e;
            a.this.d((f10 + ((this.f94312f - f10) * fA)) / a.this.getScale(), this.f94308b, this.f94309c);
            if (fA < 1.0f) {
                a.this.w(draweeViewR, this);
            }
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ScrollerCompat f94314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f94315c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f94316d;

        public c(Context context) {
            this.f94314b = ScrollerCompat.create(context);
        }

        public void a() {
            this.f94314b.abortAnimation();
        }

        public void b(int i10, int i11, int i12, int i13) {
            int i14;
            int iRound;
            int i15;
            int iRound2;
            RectF rectFO = a.this.o();
            if (rectFO == null) {
                return;
            }
            int iRound3 = Math.round(-rectFO.left);
            float f10 = i10;
            if (f10 < rectFO.width()) {
                iRound = Math.round(rectFO.width() - f10);
                i14 = 0;
            } else {
                i14 = iRound3;
                iRound = i14;
            }
            int iRound4 = Math.round(-rectFO.top);
            float f11 = i11;
            if (f11 < rectFO.height()) {
                iRound2 = Math.round(rectFO.height() - f11);
                i15 = 0;
            } else {
                i15 = iRound4;
                iRound2 = i15;
            }
            this.f94315c = iRound3;
            this.f94316d = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.f94314b.fling(iRound3, iRound4, i12, i13, i14, iRound, i15, iRound2, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<com.facebook.drawee.generic.a> draweeViewR;
            if (this.f94314b.isFinished() || (draweeViewR = a.this.r()) == null || !this.f94314b.computeScrollOffset()) {
                return;
            }
            int currX = this.f94314b.getCurrX();
            int currY = this.f94314b.getCurrY();
            a.this.f94298n.postTranslate(this.f94315c - currX, this.f94316d - currY);
            draweeViewR.invalidate();
            this.f94315c = currX;
            this.f94316d = currY;
            a.this.w(draweeViewR, this);
        }
    }

    public a(DraweeView<com.facebook.drawee.generic.a> draweeView) {
        this.f94302r = new WeakReference<>(draweeView);
        ((com.facebook.drawee.generic.a) draweeView.getHierarchy()).y(s.c.f27288e);
        draweeView.setOnTouchListener(this);
        this.f94293i = new i(draweeView.getContext(), this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(draweeView.getContext(), new C1211a());
        this.f94294j = gestureDetectorCompat;
        gestureDetectorCompat.setOnDoubleTapListener(new me.relex.photodraweeview.c(this));
    }

    private void j() {
        c cVar = this.f94301q;
        if (cVar != null) {
            cVar.a();
            this.f94301q = null;
        }
    }

    private void m() {
        RectF rectFO;
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR == null || getScale() >= this.f94289e || (rectFO = o()) == null) {
            return;
        }
        draweeViewR.post(new b(getScale(), this.f94289e, rectFO.centerX(), rectFO.centerY()));
    }

    private static void n(float f10, float f11, float f12) {
        if (f10 >= f11) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f11 >= f12) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private RectF p(Matrix matrix) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR == null) {
            return null;
        }
        int i10 = this.f94300p;
        if (i10 == -1 && this.f94299o == -1) {
            return null;
        }
        this.f94287c.set(0.0f, 0.0f, i10, this.f94299o);
        ((com.facebook.drawee.generic.a) draweeViewR.getHierarchy()).k(this.f94287c);
        matrix.mapRect(this.f94287c);
        return this.f94287c;
    }

    private float s(Matrix matrix, int i10) {
        matrix.getValues(this.f94286b);
        return this.f94286b[i10];
    }

    private int t() {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR != null) {
            return (draweeViewR.getHeight() - draweeViewR.getPaddingTop()) - draweeViewR.getPaddingBottom();
        }
        return 0;
    }

    private int u() {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR != null) {
            return (draweeViewR.getWidth() - draweeViewR.getPaddingLeft()) - draweeViewR.getPaddingRight();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    private void x() {
        this.f94298n.reset();
        l();
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR != null) {
            draweeViewR.invalidate();
        }
    }

    private void y() {
        if (this.f94300p == -1 && this.f94299o == -1) {
            return;
        }
        x();
    }

    @Override // me.relex.photodraweeview.g
    public void a(float f10, float f11, float f12, float f13) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR == null) {
            return;
        }
        c cVar = new c(draweeViewR.getContext());
        this.f94301q = cVar;
        cVar.b(u(), t(), (int) f12, (int) f13);
        draweeViewR.post(this.f94301q);
    }

    @Override // me.relex.photodraweeview.g
    public void b(float f10, float f11) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR == null || this.f94293i.d()) {
            return;
        }
        this.f94298n.postTranslate(f10, f11);
        k();
        ViewParent parent = draweeViewR.getParent();
        if (parent == null) {
            return;
        }
        if (!this.f94296l || this.f94293i.d() || this.f94295k) {
            parent.requestDisallowInterceptTouchEvent(true);
            return;
        }
        int i10 = this.f94297m;
        if (i10 == 2 || ((i10 == 0 && f10 >= 1.0f) || (i10 == 1 && f10 <= -1.0f))) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    @Override // me.relex.photodraweeview.g
    public void c() {
        m();
    }

    @Override // me.relex.photodraweeview.g
    public void d(float f10, float f11, float f12) {
        if (getScale() < this.f94291g || f10 < 1.0f) {
            f fVar = this.f94306v;
            if (fVar != null) {
                fVar.a(f10, f11, f12);
            }
            this.f94298n.postScale(f10, f10, f11, f12);
            k();
        }
    }

    @Override // me.relex.photodraweeview.d
    public float getMaximumScale() {
        return this.f94291g;
    }

    @Override // me.relex.photodraweeview.d
    public float getMediumScale() {
        return this.f94290f;
    }

    @Override // me.relex.photodraweeview.d
    public float getMinimumScale() {
        return this.f94289e;
    }

    @Override // me.relex.photodraweeview.d
    public e getOnPhotoTapListener() {
        return this.f94303s;
    }

    @Override // me.relex.photodraweeview.d
    public h getOnViewTapListener() {
        return this.f94304t;
    }

    @Override // me.relex.photodraweeview.d
    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(s(this.f94298n, 0), 2.0d)) + ((float) Math.pow(s(this.f94298n, 3), 2.0d)));
    }

    public void k() {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR != null && l()) {
            draweeViewR.invalidate();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:24:0x005a  */
    /* JADX WARN: Code duplicated, block: B:25:0x005f  */
    public boolean l() {
        float f10;
        float f11;
        float fU;
        float f12;
        float f13;
        RectF rectFP = p(q());
        if (rectFP == null) {
            return false;
        }
        float fHeight = rectFP.height();
        float fWidth = rectFP.width();
        float fT = t();
        float f14 = 0.0f;
        if (fHeight > fT) {
            float f15 = rectFP.top;
            if (f15 > 0.0f) {
                f11 = -f15;
            } else {
                f10 = rectFP.bottom;
                if (f10 >= fT) {
                    f11 = 0.0f;
                }
            }
            fU = u();
            if (fWidth <= fU) {
                f14 = ((fU - fWidth) / 2.0f) - rectFP.left;
                this.f94297m = 2;
            } else {
                f12 = rectFP.left;
                if (f12 > 0.0f) {
                    f14 = -f12;
                    this.f94297m = 0;
                } else {
                    f13 = rectFP.right;
                    if (f13 < fU) {
                        f14 = fU - f13;
                        this.f94297m = 1;
                    } else {
                        this.f94297m = -1;
                    }
                }
            }
            this.f94298n.postTranslate(f14, f11);
            return true;
        }
        fT = (fT - fHeight) / 2.0f;
        f10 = rectFP.top;
        f11 = fT - f10;
        fU = u();
        if (fWidth <= fU) {
            f14 = ((fU - fWidth) / 2.0f) - rectFP.left;
            this.f94297m = 2;
        } else {
            f12 = rectFP.left;
            if (f12 > 0.0f) {
                f14 = -f12;
                this.f94297m = 0;
            } else {
                f13 = rectFP.right;
                if (f13 < fU) {
                    f14 = fU - f13;
                    this.f94297m = 1;
                } else {
                    this.f94297m = -1;
                }
            }
        }
        this.f94298n.postTranslate(f14, f11);
        return true;
    }

    public RectF o() {
        l();
        return p(q());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ViewParent parent;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        boolean z10 = false;
        if (actionMasked == 0) {
            ViewParent parent2 = view.getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
            j();
        } else if ((actionMasked == 1 || actionMasked == 3) && (parent = view.getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        boolean zD = this.f94293i.d();
        boolean zC = this.f94293i.c();
        boolean zG = this.f94293i.g(motionEvent);
        boolean z11 = (zD || this.f94293i.d()) ? false : true;
        boolean z12 = (zC || this.f94293i.c()) ? false : true;
        if (z11 && z12) {
            z10 = true;
        }
        this.f94295k = z10;
        if (this.f94294j.onTouchEvent(motionEvent)) {
            return true;
        }
        return zG;
    }

    public Matrix q() {
        return this.f94298n;
    }

    @Nullable
    public DraweeView<com.facebook.drawee.generic.a> r() {
        return this.f94302r.get();
    }

    @Override // me.relex.photodraweeview.d
    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f94296l = z10;
    }

    @Override // me.relex.photodraweeview.d
    public void setMaximumScale(float f10) {
        n(this.f94289e, this.f94290f, f10);
        this.f94291g = f10;
    }

    @Override // me.relex.photodraweeview.d
    public void setMediumScale(float f10) {
        n(this.f94289e, f10, this.f94291g);
        this.f94290f = f10;
    }

    @Override // me.relex.photodraweeview.d
    public void setMinimumScale(float f10) {
        n(f10, this.f94290f, this.f94291g);
        this.f94289e = f10;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.f94294j.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.f94294j.setOnDoubleTapListener(new me.relex.photodraweeview.c(this));
        }
    }

    @Override // me.relex.photodraweeview.d
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f94305u = onLongClickListener;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnPhotoTapListener(e eVar) {
        this.f94303s = eVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnScaleChangeListener(f fVar) {
        this.f94306v = fVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnViewTapListener(h hVar) {
        this.f94304t = hVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10) {
        setScale(f10, false);
    }

    @Override // me.relex.photodraweeview.d
    public void setZoomTransitionDuration(long j10) {
        if (j10 < 0) {
            j10 = 200;
        }
        this.f94292h = j10;
    }

    @Override // me.relex.photodraweeview.d
    public void update(int i10, int i11) {
        this.f94300p = i10;
        this.f94299o = i11;
        y();
    }

    protected void v() {
        j();
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10, boolean z10) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR != null) {
            setScale(f10, draweeViewR.getRight() / 2, draweeViewR.getBottom() / 2, false);
        }
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10, float f11, float f12, boolean z10) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR = r();
        if (draweeViewR == null || f10 < this.f94289e || f10 > this.f94291g) {
            return;
        }
        if (z10) {
            draweeViewR.post(new b(getScale(), f10, f11, f12));
        } else {
            this.f94298n.setScale(f10, f10, f11, f12);
            k();
        }
    }
}
