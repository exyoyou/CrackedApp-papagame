package com.aggmoread.sdk.z.a.s;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.aggmoread.sdk.z.a.u.q;

/* JADX INFO: loaded from: classes7.dex */
public class a extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, View.OnClickListener, q.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f3872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f3873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.d f3874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InterfaceC0092a f3875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GestureDetector f3876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3877f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3878g = 0;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.a$a, reason: collision with other inner class name */
    public interface InterfaceC0092a {
        void a(View view, com.aggmoread.sdk.z.a.g.d dVar);
    }

    public a(InterfaceC0092a interfaceC0092a) {
        this.f3875d = interfaceC0092a;
    }

    private boolean b() {
        if (this.f3875d == null) {
            return false;
        }
        this.f3874c.f3423e = this.f3872a.getWidth();
        this.f3874c.f3424f = this.f3872a.getHeight();
        this.f3875d.a(this.f3872a, this.f3874c);
        if (!com.aggmoread.sdk.z.a.h.a.d().h()) {
            return true;
        }
        this.f3875d = null;
        return true;
    }

    public com.aggmoread.sdk.z.a.g.d a() {
        return this.f3874c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3874c.f3428j = 0;
        b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        com.aggmoread.sdk.z.a.d.d("AdTouchCollector", "onFling enter");
        View view = this.f3873b;
        if (!(view instanceof com.aggmoread.sdk.z.a.u.h) || !((com.aggmoread.sdk.z.a.u.h) view).a(motionEvent, motionEvent2, f10, f11)) {
            return super.onFling(motionEvent, motionEvent2, f10, f11);
        }
        this.f3874c.f3428j = 1;
        return b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        com.aggmoread.sdk.z.a.d.d("AdTouchCollector", "onSingleTapUp enter");
        this.f3874c.f3428j = 0;
        return b();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        StringBuilder sb2;
        int i10;
        String string;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.f3874c.f3421c = ((int) motionEvent.getX()) + this.f3877f;
                this.f3874c.f3422d = ((int) motionEvent.getY()) + this.f3878g;
                this.f3874c.f3426h = System.currentTimeMillis();
                this.f3874c.f3423e = this.f3872a.getWidth();
                this.f3874c.f3424f = this.f3872a.getHeight();
                sb2 = new StringBuilder();
                sb2.append("touch ux = ");
                sb2.append(this.f3874c.f3421c);
                sb2.append(" , uy = ");
                i10 = this.f3874c.f3422d;
            } else if (action == 2) {
                string = "touch mx = " + ((int) motionEvent.getX()) + " , my = " + ((int) motionEvent.getY());
                com.aggmoread.sdk.z.a.d.d("AdTouchCollector", string);
            }
            this.f3876e.onTouchEvent(motionEvent);
            return false;
        }
        this.f3874c.f3419a = ((int) motionEvent.getX()) + this.f3877f;
        this.f3874c.f3420b = ((int) motionEvent.getY()) + this.f3878g;
        this.f3874c.f3425g = System.currentTimeMillis();
        sb2 = new StringBuilder();
        sb2.append("touch dx = ");
        sb2.append(this.f3874c.f3419a);
        sb2.append(" , dy = ");
        i10 = this.f3874c.f3420b;
        sb2.append(i10);
        string = sb2.toString();
        com.aggmoread.sdk.z.a.d.d("AdTouchCollector", string);
        this.f3876e.onTouchEvent(motionEvent);
        return false;
    }

    public static a a(View view, View view2, InterfaceC0092a interfaceC0092a) {
        a aVar = new a(interfaceC0092a);
        aVar.f3872a = view;
        aVar.f3873b = view2;
        aVar.f3877f = view2.getLeft() - view.getLeft();
        aVar.f3878g = view2.getTop() - view.getTop();
        com.aggmoread.sdk.z.a.d.d("AdTouchCollector", "adView left " + view.getLeft() + ", clickView left " + view2.getLeft() + ", offsetX " + aVar.f3877f);
        com.aggmoread.sdk.z.a.d.d("AdTouchCollector", "adView top " + view.getTop() + ", clickView top " + view2.getTop() + ", offsetY " + aVar.f3878g);
        aVar.f3874c = new com.aggmoread.sdk.z.a.g.d();
        aVar.f3876e = new GestureDetector(view2.getContext(), aVar);
        view2.setOnTouchListener(aVar);
        view2.setFocusable(true);
        view2.setClickable(true);
        View viewFindViewWithTag = view2.findViewWithTag(com.aggmoread.sdk.z.a.i.c.f3495a);
        if (viewFindViewWithTag instanceof q) {
            aVar.a((q) viewFindViewWithTag);
        }
        return aVar;
    }

    public static a a(View view, InterfaceC0092a interfaceC0092a) {
        a aVar = new a(interfaceC0092a);
        aVar.f3872a = view;
        aVar.f3873b = view;
        aVar.f3874c = new com.aggmoread.sdk.z.a.g.d();
        aVar.f3876e = new GestureDetector(view.getContext(), aVar);
        view.setOnTouchListener(aVar);
        view.setFocusable(true);
        view.setClickable(true);
        View viewFindViewWithTag = view.findViewWithTag(com.aggmoread.sdk.z.a.i.c.f3495a);
        if (viewFindViewWithTag instanceof q) {
            aVar.a((q) viewFindViewWithTag);
        }
        return aVar;
    }

    public void a(q qVar) {
        if (qVar != null) {
            qVar.a(this);
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.q.b
    public void a(float[] fArr) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("onShake click ");
        com.aggmoread.sdk.z.a.g.d dVar = this.f3874c;
        dVar.f3428j = 2;
        dVar.a(fArr);
        b();
    }
}
