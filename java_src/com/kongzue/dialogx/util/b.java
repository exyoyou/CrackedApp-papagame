package com.kongzue.dialogx.util;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.c0;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f74139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f74140d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74142f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74137a = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74141e = false;

    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.kongzue.dialogx.dialogs.a f74143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.kongzue.dialogx.dialogs.a.e f74144c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f74145d;

        a(com.kongzue.dialogx.dialogs.a aVar, com.kongzue.dialogx.dialogs.a.e eVar, View view) {
            this.f74143b = aVar;
            this.f74144c = eVar;
            this.f74145d = view;
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00df  */
        /* JADX WARN: Code duplicated, block: B:37:0x010b  */
        /* JADX WARN: Code duplicated, block: B:39:0x012b  */
        /* JADX WARN: Code duplicated, block: B:40:0x0130  */
        /* JADX WARN: Code duplicated, block: B:42:0x0140  */
        /* JADX WARN: Code duplicated, block: B:43:0x015d  */
        /* JADX WARN: Code duplicated, block: B:45:0x0173  */
        /* JADX WARN: Code duplicated, block: B:46:0x0179  */
        /* JADX WARN: Code duplicated, block: B:48:0x018b  */
        /* JADX WARN: Code duplicated, block: B:51:0x01b6  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            c0 c0Var;
            float y10;
            float f10;
            com.kongzue.dialogx.dialogs.a.e eVar;
            if ((this.f74143b.k2() instanceof com.kongzue.dialogx.interfaces.c) && ((com.kongzue.dialogx.interfaces.c) this.f74143b.k2()).d(this.f74143b, view, motionEvent)) {
                return true;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                b.this.f74138b = motionEvent.getY();
                b.this.f74137a = true;
                b.this.f74140d = this.f74144c.f73728c.getY();
            } else if (action == 1) {
                b.this.f74139c = this.f74144c.f73733h.getScrollDistance();
                b.this.f74137a = false;
                if (b.this.f74140d == this.f74144c.f73727b.getUnsafePlace().top) {
                    y10 = this.f74144c.f73728c.getY();
                    f10 = this.f74144c.f73727b.getUnsafePlace().top;
                    eVar = this.f74144c;
                    if (y10 > f10 + eVar.f73747v + DialogX.J) {
                        eVar.i();
                    } else if (eVar.f73728c.getY() != b.this.f74140d) {
                        RelativeLayout relativeLayout = this.f74144c.f73728c;
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(relativeLayout, "y", relativeLayout.getY(), this.f74144c.f73747v);
                        objectAnimatorOfFloat.setDuration(300L);
                        objectAnimatorOfFloat.start();
                    }
                } else if (this.f74144c.f73728c.getY() > b.this.f74140d + DialogX.J) {
                    this.f74144c.i();
                } else if (this.f74144c.f73728c.getY() != b.this.f74140d) {
                    RelativeLayout relativeLayout2 = this.f74144c.f73728c;
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(relativeLayout2, "y", relativeLayout2.getY(), this.f74144c.f73727b.getUnsafePlace().top);
                    objectAnimatorOfFloat2.setDuration(300L);
                    objectAnimatorOfFloat2.start();
                }
                c0Var = this.f74144c.f73733h;
                if (c0Var instanceof c0) {
                    c0Var.b(false);
                }
            } else if (action != 2) {
                if (action == 3) {
                    b.this.f74139c = this.f74144c.f73733h.getScrollDistance();
                    b.this.f74137a = false;
                    if (b.this.f74140d == this.f74144c.f73727b.getUnsafePlace().top) {
                        y10 = this.f74144c.f73728c.getY();
                        f10 = this.f74144c.f73727b.getUnsafePlace().top;
                        eVar = this.f74144c;
                        if (y10 > f10 + eVar.f73747v + DialogX.J) {
                            eVar.i();
                        } else if (eVar.f73728c.getY() != b.this.f74140d) {
                            RelativeLayout relativeLayout3 = this.f74144c.f73728c;
                            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(relativeLayout3, "y", relativeLayout3.getY(), this.f74144c.f73747v);
                            objectAnimatorOfFloat3.setDuration(300L);
                            objectAnimatorOfFloat3.start();
                        }
                    } else if (this.f74144c.f73728c.getY() > b.this.f74140d + DialogX.J) {
                        this.f74144c.i();
                    } else if (this.f74144c.f73728c.getY() != b.this.f74140d) {
                        RelativeLayout relativeLayout4 = this.f74144c.f73728c;
                        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(relativeLayout4, "y", relativeLayout4.getY(), this.f74144c.f73727b.getUnsafePlace().top);
                        objectAnimatorOfFloat4.setDuration(300L);
                        objectAnimatorOfFloat4.start();
                    }
                    c0Var = this.f74144c.f73733h;
                    if (c0Var instanceof c0) {
                        c0Var.b(false);
                    }
                }
            } else if (b.this.f74137a && this.f74143b.C2()) {
                float y11 = (this.f74144c.f73728c.getY() + motionEvent.getY()) - b.this.f74138b;
                if (this.f74144c.f73733h.a() && b.this.m(this.f74145d, this.f74144c.f73733h, motionEvent)) {
                    if (y11 <= this.f74144c.f73727b.getUnsafePlace().top) {
                        this.f74144c.f73733h.b(false);
                        com.kongzue.dialogx.dialogs.a.e eVar2 = this.f74144c;
                        eVar2.f73728c.setY(eVar2.f73727b.getUnsafePlace().top);
                    } else if (this.f74144c.f73733h.getScrollDistance() == 0) {
                        this.f74144c.f73733h.b(true);
                        this.f74144c.f73728c.setY(y11);
                    } else {
                        b.this.f74138b = motionEvent.getY();
                    }
                } else {
                    if (y11 > this.f74144c.f73727b.getUnsafePlace().top) {
                        this.f74144c.f73728c.setY(y11);
                        return true;
                    }
                    com.kongzue.dialogx.dialogs.a.e eVar3 = this.f74144c;
                    eVar3.f73728c.setY(eVar3.f73727b.getUnsafePlace().top);
                }
            }
            return false;
        }
    }

    public b(com.kongzue.dialogx.dialogs.a aVar, com.kongzue.dialogx.dialogs.a.e eVar) {
        k(aVar, eVar);
    }

    private int i(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean m(View view, c0 c0Var, MotionEvent motionEvent) {
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

    public boolean j() {
        return this.f74141e;
    }

    public void k(com.kongzue.dialogx.dialogs.a aVar, com.kongzue.dialogx.dialogs.a.e eVar) {
        View view;
        if (aVar == null || eVar == null || (view = eVar.f73729d) == null || eVar.f73733h == null) {
            return;
        }
        if (aVar.C2()) {
            if (j()) {
                eVar.f73729d.setOnTouchListener(null);
                view = (View) eVar.f73733h;
            }
            view.setOnTouchListener(new a(aVar, eVar, view));
            return;
        }
        c0 c0Var = eVar.f73733h;
        if (c0Var instanceof c0) {
            c0Var.b(false);
        }
        view.setOnTouchListener(null);
    }

    public b l(boolean z10) {
        this.f74141e = z10;
        return this;
    }
}
