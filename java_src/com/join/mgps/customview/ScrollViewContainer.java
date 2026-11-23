package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class ScrollViewContainer extends RelativeLayout {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f65558s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f65559t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f65560u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final float f65561v = 6.5f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private VelocityTracker f65563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f65566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f65567g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f65568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f65569i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65570j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65571k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f65572l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private d f65573m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f65574n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f65575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f65576p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View.OnTouchListener f65577q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View.OnTouchListener f65578r;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (ScrollViewContainer.this.f65572l != 0.0f) {
                if (ScrollViewContainer.this.f65570j == 0) {
                    ScrollViewContainer.d(ScrollViewContainer.this, 6.5f);
                    if (ScrollViewContainer.this.f65572l <= (-ScrollViewContainer.this.f65564d)) {
                        ScrollViewContainer scrollViewContainer = ScrollViewContainer.this;
                        scrollViewContainer.f65572l = -scrollViewContainer.f65564d;
                        ScrollViewContainer.this.f65570j = 2;
                        ScrollViewContainer.this.f65571k = 1;
                    }
                } else if (ScrollViewContainer.this.f65570j == 1) {
                    ScrollViewContainer.c(ScrollViewContainer.this, 6.5f);
                    if (ScrollViewContainer.this.f65572l >= 0.0f) {
                        ScrollViewContainer.this.f65572l = 0.0f;
                        ScrollViewContainer.this.f65570j = 2;
                        ScrollViewContainer.this.f65571k = 0;
                    }
                } else {
                    ScrollViewContainer.this.f65573m.a();
                }
            }
            ScrollViewContainer.this.requestLayout();
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            ScrollView scrollView = (ScrollView) v10;
            ScrollViewContainer.this.f65569i = scrollView.getScrollY() == scrollView.getChildAt(0).getMeasuredHeight() - scrollView.getMeasuredHeight() && ScrollViewContainer.this.f65571k == 0;
            return false;
        }
    }

    class c implements View.OnTouchListener {
        c() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0015  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            boolean z10;
            ScrollViewContainer scrollViewContainer = ScrollViewContainer.this;
            if (((ScrollView) v10).getScrollY() == 0) {
                z10 = ScrollViewContainer.this.f65571k == 1;
            }
            scrollViewContainer.f65568h = z10;
            return false;
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f65582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Timer f65583b = new Timer();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f65584c;

        class a extends TimerTask {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Handler f65586b;

            public a(Handler handler) {
                this.f65586b = handler;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.f65586b.obtainMessage().sendToTarget();
            }
        }

        public d(Handler handler) {
            this.f65582a = handler;
        }

        public void a() {
            a aVar = this.f65584c;
            if (aVar != null) {
                aVar.cancel();
                this.f65584c = null;
            }
        }

        public void b(long period) {
            a aVar = this.f65584c;
            if (aVar != null) {
                aVar.cancel();
                this.f65584c = null;
            }
            a aVar2 = new a(this.f65582a);
            this.f65584c = aVar2;
            this.f65583b.schedule(aVar2, 0L, period);
        }
    }

    public ScrollViewContainer(Context context) {
        super(context);
        this.f65562b = false;
        this.f65570j = 2;
        this.f65571k = 0;
        this.f65576p = new a();
        this.f65577q = new b();
        this.f65578r = new c();
        m();
    }

    static /* synthetic */ float c(ScrollViewContainer scrollViewContainer, float f10) {
        float f11 = scrollViewContainer.f65572l + f10;
        scrollViewContainer.f65572l = f11;
        return f11;
    }

    static /* synthetic */ float d(ScrollViewContainer scrollViewContainer, float f10) {
        float f11 = scrollViewContainer.f65572l - f10;
        scrollViewContainer.f65572l = f11;
        return f11;
    }

    private void m() {
        this.f65573m = new d(this.f65576p);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            VelocityTracker velocityTracker = this.f65563c;
            if (velocityTracker == null) {
                this.f65563c = VelocityTracker.obtain();
            } else {
                velocityTracker.clear();
            }
            this.f65574n = ev.getY();
            this.f65563c.addMovement(ev);
            this.f65575o = 0;
        } else if (actionMasked == 1) {
            this.f65574n = ev.getY();
            this.f65563c.addMovement(ev);
            this.f65563c.computeCurrentVelocity(700);
            float yVelocity = this.f65563c.getYVelocity();
            float f10 = this.f65572l;
            if (f10 != 0.0f && f10 != (-this.f65564d)) {
                if (Math.abs(yVelocity) < 500.0f) {
                    float f11 = this.f65572l;
                    int i10 = this.f65564d;
                    if (f11 <= (-i10) / 2) {
                        this.f65570j = 0;
                    } else if (f11 > (-i10) / 2) {
                        this.f65570j = 1;
                    }
                } else if (yVelocity < 0.0f) {
                    this.f65570j = 0;
                } else {
                    this.f65570j = 1;
                }
                this.f65573m.b(2L);
                try {
                    this.f65563c.recycle();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else if (actionMasked == 2) {
            this.f65563c.addMovement(ev);
            if (this.f65569i && this.f65571k == 0 && this.f65575o == 0) {
                float y10 = this.f65572l + (ev.getY() - this.f65574n);
                this.f65572l = y10;
                if (y10 > 0.0f) {
                    this.f65572l = 0.0f;
                    this.f65571k = 0;
                } else {
                    int i11 = this.f65564d;
                    if (y10 < (-i11)) {
                        this.f65572l = -i11;
                        this.f65571k = 1;
                    }
                }
                if (this.f65572l < -8.0f) {
                    ev.setAction(3);
                }
            } else if (this.f65568h && this.f65571k == 1 && this.f65575o == 0) {
                float y11 = this.f65572l + (ev.getY() - this.f65574n);
                this.f65572l = y11;
                int i12 = this.f65564d;
                if (y11 < (-i12)) {
                    this.f65572l = -i12;
                    this.f65571k = 1;
                } else if (y11 > 0.0f) {
                    this.f65572l = 0.0f;
                    this.f65571k = 0;
                }
                if (this.f65572l > 8 - i12) {
                    ev.setAction(3);
                }
            } else {
                this.f65575o++;
            }
            this.f65574n = ev.getY();
            requestLayout();
        } else if (actionMasked == 5 || actionMasked == 6) {
            this.f65575o = -1;
        }
        try {
            super.dispatchTouchEvent(ev);
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        View view = this.f65566f;
        view.layout(0, (int) this.f65572l, this.f65565e, view.getMeasuredHeight() + ((int) this.f65572l));
        this.f65567g.layout(0, this.f65566f.getMeasuredHeight() + ((int) this.f65572l), this.f65565e, this.f65566f.getMeasuredHeight() + ((int) this.f65572l) + this.f65567g.getMeasuredHeight() + 100);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.f65562b) {
            return;
        }
        this.f65562b = true;
        this.f65564d = getMeasuredHeight();
        this.f65565e = getMeasuredWidth();
        this.f65566f = getChildAt(0);
        View childAt = getChildAt(1);
        this.f65567g = childAt;
        childAt.setOnTouchListener(this.f65578r);
        this.f65566f.setOnTouchListener(this.f65577q);
    }

    public ScrollViewContainer(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65562b = false;
        this.f65570j = 2;
        this.f65571k = 0;
        this.f65576p = new a();
        this.f65577q = new b();
        this.f65578r = new c();
        m();
    }

    public ScrollViewContainer(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65562b = false;
        this.f65570j = 2;
        this.f65571k = 0;
        this.f65576p = new a();
        this.f65577q = new b();
        this.f65578r = new c();
        m();
    }
}
