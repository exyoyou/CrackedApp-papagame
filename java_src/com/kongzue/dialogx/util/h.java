package com.kongzue.dialogx.util;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.c0;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74181a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f74183c;

    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.kongzue.dialogx.dialogs.d.e f74184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.kongzue.dialogx.dialogs.d f74185c;

        a(com.kongzue.dialogx.dialogs.d.e eVar, com.kongzue.dialogx.dialogs.d dVar) {
            this.f74184b = eVar;
            this.f74185c = dVar;
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:37:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:39:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:40:0x010c  */
        /* JADX WARN: Code duplicated, block: B:42:0x0122  */
        /* JADX WARN: Code duplicated, block: B:43:0x0129  */
        /* JADX WARN: Code duplicated, block: B:44:0x0148  */
        /* JADX WARN: Code duplicated, block: B:46:0x015e  */
        /* JADX WARN: Code duplicated, block: B:47:0x0181  */
        /* JADX WARN: Code duplicated, block: B:49:0x0197  */
        /* JADX WARN: Code duplicated, block: B:50:0x019d  */
        /* JADX WARN: Code duplicated, block: B:53:0x01c3  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            c0 c0Var;
            int action = motionEvent.getAction();
            if (action == 0) {
                h.this.f74182b = motionEvent.getY();
                h.this.f74181a = true;
                h.this.f74183c = this.f74184b.f73802e.getY();
            } else if (action == 1) {
                h.this.f74181a = false;
                if (h.this.f74183c == this.f74185c.G1().m()) {
                    if (this.f74184b.f73802e.getY() < DialogX.J) {
                        MaxRelativeLayout maxRelativeLayout = this.f74184b.f73802e;
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(maxRelativeLayout, "y", maxRelativeLayout.getY(), this.f74185c.G1().m());
                        objectAnimatorOfFloat.setDuration(300L);
                        objectAnimatorOfFloat.start();
                    } else if (this.f74184b.f73802e.getY() > this.f74184b.m() + DialogX.J) {
                        this.f74184b.r();
                    } else {
                        MaxRelativeLayout maxRelativeLayout2 = this.f74184b.f73802e;
                        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(maxRelativeLayout2, "y", maxRelativeLayout2.getY(), this.f74184b.m());
                        objectAnimatorOfFloat2.setDuration(300L);
                        objectAnimatorOfFloat2.start();
                    }
                } else if (this.f74184b.f73802e.getY() < h.this.f74183c - DialogX.J) {
                    MaxRelativeLayout maxRelativeLayout3 = this.f74184b.f73802e;
                    ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(maxRelativeLayout3, "y", maxRelativeLayout3.getY(), this.f74185c.G1().m());
                    objectAnimatorOfFloat3.setDuration(300L);
                    objectAnimatorOfFloat3.start();
                } else if (this.f74184b.f73802e.getY() > h.this.f74183c + DialogX.J) {
                    this.f74184b.r();
                } else {
                    MaxRelativeLayout maxRelativeLayout4 = this.f74184b.f73802e;
                    ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(maxRelativeLayout4, "y", maxRelativeLayout4.getY(), this.f74184b.m());
                    objectAnimatorOfFloat4.setDuration(300L);
                    objectAnimatorOfFloat4.start();
                }
                c0Var = this.f74184b.f73804g;
                if (c0Var instanceof c0) {
                    c0Var.b(false);
                }
            } else if (action != 2) {
                if (action == 3) {
                    h.this.f74181a = false;
                    if (h.this.f74183c == this.f74185c.G1().m()) {
                        if (this.f74184b.f73802e.getY() < DialogX.J) {
                            MaxRelativeLayout maxRelativeLayout5 = this.f74184b.f73802e;
                            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(maxRelativeLayout5, "y", maxRelativeLayout5.getY(), this.f74185c.G1().m());
                            objectAnimatorOfFloat5.setDuration(300L);
                            objectAnimatorOfFloat5.start();
                        } else if (this.f74184b.f73802e.getY() > this.f74184b.m() + DialogX.J) {
                            this.f74184b.r();
                        } else {
                            MaxRelativeLayout maxRelativeLayout6 = this.f74184b.f73802e;
                            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(maxRelativeLayout6, "y", maxRelativeLayout6.getY(), this.f74184b.m());
                            objectAnimatorOfFloat6.setDuration(300L);
                            objectAnimatorOfFloat6.start();
                        }
                    } else if (this.f74184b.f73802e.getY() < h.this.f74183c - DialogX.J) {
                        MaxRelativeLayout maxRelativeLayout7 = this.f74184b.f73802e;
                        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(maxRelativeLayout7, "y", maxRelativeLayout7.getY(), this.f74185c.G1().m());
                        objectAnimatorOfFloat7.setDuration(300L);
                        objectAnimatorOfFloat7.start();
                    } else if (this.f74184b.f73802e.getY() > h.this.f74183c + DialogX.J) {
                        this.f74184b.r();
                    } else {
                        MaxRelativeLayout maxRelativeLayout8 = this.f74184b.f73802e;
                        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(maxRelativeLayout8, "y", maxRelativeLayout8.getY(), this.f74184b.m());
                        objectAnimatorOfFloat8.setDuration(300L);
                        objectAnimatorOfFloat8.start();
                    }
                    c0Var = this.f74184b.f73804g;
                    if (c0Var instanceof c0) {
                        c0Var.b(false);
                    }
                }
            } else if (h.this.f74181a) {
                float y10 = (this.f74184b.f73802e.getY() + motionEvent.getY()) - h.this.f74182b;
                c0 c0Var2 = this.f74184b.f73804g;
                if (c0Var2 == null || !c0Var2.a() || !h.this.j(view, this.f74184b.f73804g, motionEvent)) {
                    if (y10 < this.f74185c.G1().m()) {
                        y10 = this.f74185c.G1().m();
                    }
                    this.f74184b.f73802e.setY(y10);
                } else if (y10 <= this.f74185c.G1().m()) {
                    c0 c0Var3 = this.f74184b.f73804g;
                    if (c0Var3 instanceof c0) {
                        c0Var3.b(false);
                    }
                    this.f74184b.f73802e.setY(this.f74185c.G1().m());
                } else if (this.f74184b.f73804g.getScrollDistance() == 0) {
                    c0 c0Var4 = this.f74184b.f73804g;
                    if (c0Var4 instanceof c0) {
                        c0Var4.b(true);
                    }
                    this.f74184b.f73802e.setY(y10);
                } else {
                    h.this.f74182b = motionEvent.getY();
                }
            }
            return false;
        }
    }

    public h(com.kongzue.dialogx.dialogs.d dVar, com.kongzue.dialogx.dialogs.d.e eVar) {
        i(dVar, eVar);
    }

    private int h(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean j(View view, c0 c0Var, MotionEvent motionEvent) {
        View view2 = (View) c0Var;
        RectF rectF = new RectF();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        view2.getLocationInWindow(iArr);
        view.getLocationInWindow(iArr2);
        float f10 = iArr[0] - iArr2[0];
        rectF.left = f10;
        rectF.top = iArr[1] - iArr2[1];
        rectF.right = f10 + view2.getWidth();
        rectF.bottom = rectF.top + view2.getHeight();
        return motionEvent.getX() >= rectF.left && motionEvent.getX() <= rectF.right && motionEvent.getY() >= rectF.top && motionEvent.getY() <= rectF.bottom;
    }

    public void i(com.kongzue.dialogx.dialogs.d dVar, com.kongzue.dialogx.dialogs.d.e eVar) {
        if (dVar == null || eVar == null || eVar.f73802e == null) {
            return;
        }
        if (dVar.R1()) {
            View view = eVar.f73803f;
            if (eVar.f73804g != null) {
                view = eVar.f73802e;
            }
            view.setOnTouchListener(new a(eVar, dVar));
            return;
        }
        View view2 = eVar.f73803f;
        c0 c0Var = eVar.f73804g;
        if (c0Var != null) {
            view2 = eVar.f73802e;
        }
        if (c0Var instanceof c0) {
            c0Var.b(false);
        }
        view2.setOnTouchListener(null);
    }
}
