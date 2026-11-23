package com.join.mgps.control;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.e;
import com.join.mgps.Util.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class RhythmLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.join.mgps.control.b f64227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f64228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f64229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.join.mgps.control.a f64230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f64231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f64232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64236l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64237m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f64238n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64239o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64240p;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f64241b;

        a(final List val$viewList) {
            this.f64241b = val$viewList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f64241b.size(); i10++) {
                RhythmLayout.this.v((View) this.f64241b.get(i10), true);
            }
        }
    }

    class b extends Timer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TimerTask f64243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f64244b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f64245c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f64246d;

        class a extends TimerTask {

            /* JADX INFO: renamed from: com.join.mgps.control.RhythmLayout$b$a$a, reason: collision with other inner class name */
            class RunnableC0705a implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ List f64249b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ int f64250c;

                RunnableC0705a(final List val$localList, final int val$finalToPosition) {
                    this.f64249b = val$localList;
                    this.f64250c = val$finalToPosition;
                }

                @Override // java.lang.Runnable
                public void run() {
                    RhythmLayout rhythmLayout = RhythmLayout.this;
                    rhythmLayout.r(rhythmLayout.f64235k, this.f64249b);
                    RhythmLayout.this.s(this.f64250c, 500, 0, true);
                    RhythmLayout.this.A(10L);
                }
            }

            a() {
            }

            /* JADX WARN: Code duplicated, block: B:18:0x0083  */
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                int i10;
                long jCurrentTimeMillis = System.currentTimeMillis() - RhythmLayout.this.f64238n;
                if (!b.this.f64244b || jCurrentTimeMillis <= 1000) {
                    return;
                }
                int firstVisibleItemPosition = RhythmLayout.this.getFirstVisibleItemPosition();
                boolean z10 = true;
                boolean z11 = false;
                if (b.this.f64245c <= RhythmLayout.this.f64236l && b.this.f64245c >= 0.0f) {
                    i10 = firstVisibleItemPosition - 1;
                    if (i10 >= 0) {
                        RhythmLayout.this.f64235k = 0;
                    } else {
                        i10 = 0;
                        z10 = false;
                    }
                } else if (b.this.f64245c <= RhythmLayout.this.f64237m - RhythmLayout.this.f64236l || RhythmLayout.this.getSize() < firstVisibleItemPosition + 7 + 1) {
                    i10 = 0;
                    z10 = false;
                } else {
                    RhythmLayout.this.f64235k = 7;
                    i10 = firstVisibleItemPosition + 1;
                    z10 = false;
                    z11 = true;
                }
                if (z10 || z11) {
                    RhythmLayout.this.f64228d.post(new RunnableC0705a(RhythmLayout.this.o(z10, z11), i10));
                }
            }
        }

        b() {
        }

        void c(float x10, float y10) {
            this.f64245c = x10;
            this.f64246d = y10;
            if (x10 >= 0.0f && ((x10 <= RhythmLayout.this.f64236l || x10 >= RhythmLayout.this.f64237m - RhythmLayout.this.f64236l) && y10 >= 0.0f)) {
                this.f64244b = true;
                return;
            }
            RhythmLayout.this.f64238n = System.currentTimeMillis();
            this.f64244b = false;
        }

        void d() {
            if (this.f64243a == null) {
                this.f64243a = new a();
            }
            schedule(this.f64243a, 300L, 250L);
        }
    }

    public RhythmLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(long miss) {
    }

    private List<View> getVisibleViews() {
        ArrayList arrayList = new ArrayList();
        if (this.f64231g == null) {
            return arrayList;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int childCount = firstVisibleItemPosition + 7;
        if (this.f64231g.getChildCount() < 7) {
            childCount = this.f64231g.getChildCount();
        }
        while (firstVisibleItemPosition < childCount) {
            arrayList.add(this.f64231g.getChildAt(firstVisibleItemPosition));
            firstVisibleItemPosition++;
        }
        return arrayList;
    }

    private void k() {
        this.f64229e.c(-1.0f, -1.0f);
        if (this.f64235k < 0) {
            return;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int i10 = this.f64235k + firstVisibleItemPosition;
        List<View> visibleViews = getVisibleViews();
        int size = visibleViews.size();
        int i11 = this.f64235k;
        if (size > i11) {
            visibleViews.remove(i11);
        }
        int i12 = firstVisibleItemPosition - 1;
        if (i12 >= 0) {
            visibleViews.add(this.f64231g.getChildAt(i12));
        }
        int i13 = i10 + 1;
        if (i13 <= this.f64231g.getChildCount()) {
            visibleViews.add(this.f64231g.getChildAt(i13));
        }
        this.f64228d.postDelayed(new a(visibleViews), 200L);
        com.join.mgps.control.a aVar = this.f64230f;
        if (aVar != null) {
            aVar.onSelected(i10);
        }
        this.f64235k = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<View> o(boolean isForward, boolean isBackward) {
        ArrayList arrayList = new ArrayList();
        if (this.f64231g == null) {
            return arrayList;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int childCount = firstVisibleItemPosition + 7;
        if (this.f64231g.getChildCount() < 7) {
            childCount = this.f64231g.getChildCount();
        }
        if (isForward && firstVisibleItemPosition > 0) {
            firstVisibleItemPosition--;
        }
        if (isBackward && childCount < this.f64231g.getChildCount()) {
            childCount++;
        }
        while (firstVisibleItemPosition < childCount) {
            arrayList.add(this.f64231g.getChildAt(firstVisibleItemPosition));
            firstVisibleItemPosition++;
        }
        return arrayList;
    }

    private void p() {
        int dimensionPixelSize = m.e(this.f64226b).widthPixels - getResources().getDimensionPixelSize(R.dimen.topic_margin);
        this.f64237m = dimensionPixelSize;
        float f10 = dimensionPixelSize / 7;
        this.f64232h = f10;
        int i10 = (int) f10;
        this.f64233i = i10;
        this.f64234j = i10 / 6;
        this.f64236l = getResources().getDimensionPixelSize(R.dimen.rhythm_edge_size_for_shift);
        this.f64235k = -1;
        this.f64240p = -1;
        this.f64239o = 0;
        this.f64238n = 0L;
        this.f64228d = new Handler();
        b bVar = new b();
        this.f64229e = bVar;
        bVar.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(int fingerPosition, List<View> viewList) {
        if (fingerPosition >= viewList.size()) {
            return;
        }
        int size = viewList.size();
        for (int i10 = 0; i10 < size; i10++) {
            z(viewList.get(i10), Math.min(Math.max(Math.abs(fingerPosition - i10) * this.f64234j, 10), this.f64233i));
        }
    }

    private Animator x(int position, int duration, int startDelay, boolean isStart) {
        return e.i(this, position, duration, startDelay, isStart);
    }

    private void y(float scrollX) {
        List<View> visibleViews = getVisibleViews();
        int i10 = (int) (scrollX / this.f64232h);
        if (i10 == this.f64235k || i10 >= this.f64231g.getChildCount()) {
            return;
        }
        this.f64235k = i10;
        r(i10, visibleViews);
    }

    private void z(View view, int translationY) {
        if (view != null) {
            e.l(view, translationY, 100, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f64229e.c(ev.getX(), ev.getY());
            this.f64238n = System.currentTimeMillis();
            y(ev.getX() - 40.0f);
            com.join.mgps.control.a aVar = this.f64230f;
            if (aVar != null) {
                aVar.a();
            }
        } else if (action == 1) {
            k();
        } else if (action == 2) {
            this.f64229e.c(ev.getX(), ev.getY());
            y(ev.getX());
        }
        return true;
    }

    public int getFirstVisibleItemPosition() {
        LinearLayout linearLayout = this.f64231g;
        if (linearLayout == null) {
            return 0;
        }
        int childCount = linearLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getScrollX() < this.f64231g.getChildAt(i10).getX() + (this.f64232h / 2.0f)) {
                return i10;
            }
        }
        return 0;
    }

    public float getRhythmItemWidth() {
        return this.f64232h;
    }

    public int getSize() {
        LinearLayout linearLayout = this.f64231g;
        if (linearLayout == null) {
            return 0;
        }
        return linearLayout.getChildCount();
    }

    public Animator l(int viewPosition, boolean isStart) {
        if (viewPosition >= 0) {
            return m(n(viewPosition), isStart);
        }
        return null;
    }

    public Animator m(View view, boolean isStart) {
        if (view != null) {
            return e.l(view, 10, TcMouseManager.MOUSE_STARY, isStart, true);
        }
        return null;
    }

    public View n(int position) {
        return this.f64231g.getChildAt(position);
    }

    public void q() {
        int childCount = this.f64231g.getChildCount();
        if (childCount < this.f64227c.getCount()) {
            while (childCount < this.f64227c.getCount()) {
                this.f64231g.addView(this.f64227c.getView(childCount, null, null));
                childCount++;
            }
        }
    }

    public Animator s(int position, int duration, int startDelay, boolean isStart) {
        return x((int) n(position).getX(), duration, startDelay, isStart);
    }

    public void setAdapter(com.join.mgps.control.b adapter) {
        this.f64227c = adapter;
        if (this.f64231g == null) {
            this.f64231g = (LinearLayout) getChildAt(0);
        }
        this.f64227c.d(this.f64232h);
        for (int i10 = 0; i10 < this.f64227c.getCount(); i10++) {
            this.f64231g.addView(this.f64227c.getView(i10, null, null));
        }
    }

    public void setRhythmListener(com.join.mgps.control.a listener) {
        this.f64230f = listener;
    }

    public void setScrollRhythmStartDelayTime(int scrollStartDelayTime) {
        this.f64239o = scrollStartDelayTime;
    }

    public Animator t(int position, int startDelay, boolean isStart) {
        int x10 = (int) n(position).getX();
        if (x10 == 0) {
            x10 = (int) (this.f64232h * position);
        }
        return x(x10, 300, startDelay, isStart);
    }

    public Animator u(int viewPosition, boolean isStart) {
        if (viewPosition < 0 || this.f64231g == null || getSize() <= viewPosition) {
            return null;
        }
        return v(n(viewPosition), isStart);
    }

    public Animator v(View view, boolean isStart) {
        if (view != null) {
            return e.l(view, this.f64233i, TcMouseManager.MOUSE_STARY, isStart, true);
        }
        return null;
    }

    public void w(int position) {
        Animator animatorT;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("showRhythmAtPosition: ");
        sb2.append(position);
        int i10 = this.f64240p;
        if (i10 == position) {
            return;
        }
        if (i10 < 0 || this.f64227c.getCount() <= 7 || position <= 3) {
            animatorT = t(0, this.f64239o, false);
        } else {
            animatorT = this.f64227c.getCount() - position <= 3 ? t(this.f64227c.getCount() - 7, this.f64239o, false) : t(position - 3, this.f64239o, false);
        }
        Animator animatorL = l(position, false);
        Animator animatorU = u(this.f64240p, false);
        AnimatorSet animatorSet = new AnimatorSet();
        if (animatorL != null) {
            animatorSet.playTogether(animatorL);
        }
        if (animatorU != null) {
            animatorSet.playTogether(animatorU);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playSequentially(animatorT, animatorSet);
        animatorSet2.start();
        this.f64240p = position;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("showRhythmAtPosition: ");
        sb3.append(position);
    }

    public RhythmLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64226b = context;
        p();
    }
}
