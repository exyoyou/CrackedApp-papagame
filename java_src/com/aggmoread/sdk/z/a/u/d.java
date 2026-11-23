package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f4082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.aggmoread.sdk.z.a.g.d f4083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f4084d;

    class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (d.this.f4084d != null) {
                d.this.f4084d.onScrollChanged();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4086b;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d dVar = d.this;
                dVar.f4083c.f3428j = 0;
                dVar.b();
            }
        }

        b(List list) {
            this.f4086b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnTouchListenerC0104d viewOnTouchListenerC0104d;
            try {
                a aVar = new a();
                for (View view : this.f4086b) {
                    if (view instanceof d) {
                        view.setOnClickListener(aVar);
                        viewOnTouchListenerC0104d = new ViewOnTouchListenerC0104d(d.this.f4081a);
                    } else {
                        if (d.this.indexOfChild(view) <= 0) {
                            d dVar = d.this;
                            if (!dVar.a(view, dVar, 0)) {
                                com.aggmoread.sdk.z.a.d.d("ApiViewStatusLayout", "not in container , " + view);
                            }
                        }
                        view.setOnClickListener(aVar);
                        viewOnTouchListenerC0104d = new ViewOnTouchListenerC0104d(d.this.f4081a);
                    }
                    view.setOnTouchListener(viewOnTouchListenerC0104d);
                }
            } catch (Exception e10) {
                com.aggmoread.sdk.z.a.d.d("ApiViewStatusLayout", "err  , " + e10.getMessage());
            }
        }
    }

    class c implements q.b {
        c() {
        }

        @Override // com.aggmoread.sdk.z.a.u.q.b
        public void a(float[] fArr) {
            com.aggmoread.sdk.z.a.g.d dVar = d.this.f4083c;
            dVar.f3428j = 2;
            dVar.a(fArr);
            d.this.b();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.u.d$d, reason: collision with other inner class name */
    public static class ViewOnTouchListenerC0104d implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4090a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4091b;

        public ViewOnTouchListenerC0104d(int i10) {
            this.f4091b = i10;
        }

        private void a(View view, boolean z10) {
            ViewParent parent;
            if (view == null || (parent = view.getParent()) == null) {
                return;
            }
            com.aggmoread.sdk.z.a.d.d("ApiViewStatusLayout", "parent  rdi " + this.f4091b);
            parent.requestDisallowInterceptTouchEvent(z10);
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f4090a) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                motionEvent.getX();
                motionEvent.getY();
                com.aggmoread.sdk.z.a.d.d("ApiViewStatusLayout", "this.d " + this.f4091b);
                if (this.f4091b > 0) {
                    a(view, true);
                }
            } else if (action == 1) {
                view.performClick();
                return true;
            }
            return false;
        }
    }

    public interface e {
        void a(int i10);

        void d();

        void onClick(View view);

        void onScrollChanged();
    }

    public d(Context context) {
        super(context);
        this.f4081a = 1;
        this.f4082b = new a();
        this.f4083c = new com.aggmoread.sdk.z.a.g.d();
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f4084d != null) {
            this.f4083c.f3423e = getWidth();
            this.f4083c.f3424f = getHeight();
            this.f4084d.onClick(this);
            if (com.aggmoread.sdk.z.a.h.a.d().h()) {
                this.f4084d = null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        e eVar = this.f4084d;
        if (eVar != null) {
            eVar.d();
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        StringBuilder sb2;
        int i10;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.f4083c.f3421c = (int) motionEvent.getX();
                this.f4083c.f3422d = (int) motionEvent.getY();
                this.f4083c.f3426h = System.currentTimeMillis();
                this.f4083c.f3423e = getWidth();
                this.f4083c.f3424f = getHeight();
                sb2 = new StringBuilder();
                sb2.append("touch ux = ");
                sb2.append(this.f4083c.f3421c);
                sb2.append(" , uy = ");
                i10 = this.f4083c.f3422d;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        com.aggmoread.sdk.z.a.g.d dVar = this.f4083c;
        dVar.f3419a = x10;
        dVar.f3420b = y10;
        dVar.f3425g = System.currentTimeMillis();
        sb2 = new StringBuilder();
        sb2.append("touch dx = ");
        sb2.append(this.f4083c.f3419a);
        sb2.append(" , dy = ");
        i10 = this.f4083c.f3420b;
        sb2.append(i10);
        com.aggmoread.sdk.z.a.d.d("ApiViewStatusLayout", sb2.toString());
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        e eVar = this.f4084d;
        if (eVar != null) {
            eVar.a(i10);
        }
        super.onWindowVisibilityChanged(i10);
    }

    public void a() {
        if (this.f4082b != null) {
            getViewTreeObserver().removeOnScrollChangedListener(this.f4082b);
        }
    }

    public void c() {
        com.aggmoread.sdk.z.a.g.d dVar = this.f4083c;
        if (dVar != null) {
            dVar.f3428j = 0;
            b();
        }
    }

    public void a(int i10) {
        this.f4081a = i10;
    }

    private void a(Context context) {
        setFocusable(true);
        setClickable(true);
    }

    public void a(e eVar) {
        this.f4084d = eVar;
        getViewTreeObserver().addOnScrollChangedListener(this.f4082b);
    }

    public void a(q qVar) {
        if (qVar != null) {
            qVar.a(new c());
        }
    }

    public void a(List<View> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.q.b(new b(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view, ViewGroup viewGroup, int i10) {
        if (viewGroup == view) {
            return true;
        }
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof ViewGroup) {
                if (a(view, (ViewGroup) childAt, i10 + 1)) {
                    return true;
                }
            } else if (childAt == view) {
                return true;
            }
        }
        return false;
    }
}
