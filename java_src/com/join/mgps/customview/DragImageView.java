package com.join.mgps.customview;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public class DragImageView extends ImageView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f64806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64807g;

    public DragImageView(Context context) {
        this(context, null, 0);
    }

    private boolean a() {
        return !this.f64806f && (getX() == ((float) this.f64807g) || getX() == ((float) ((this.f64803c - getWidth()) - this.f64807g)));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int rawX = (int) event.getRawX();
        int rawY = (int) event.getRawY();
        int action = event.getAction() & 255;
        if (action == 0) {
            this.f64806f = false;
            getParent().requestDisallowInterceptTouchEvent(true);
            this.f64804d = rawX;
            this.f64805e = rawY;
            if (getParent() != null) {
                ViewGroup viewGroup = (ViewGroup) getParent();
                this.f64802b = viewGroup.getHeight();
                this.f64803c = viewGroup.getWidth();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ACTION_DOWN:");
            sb2.append(this.f64803c);
        } else if (action != 1) {
            if (action == 2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("ACTION_MOVE:");
                sb3.append(this.f64803c);
                if (this.f64802b <= 0 || this.f64803c == 0) {
                    this.f64806f = false;
                } else {
                    this.f64806f = true;
                    int i10 = rawX - this.f64804d;
                    int i11 = rawY - this.f64805e;
                    if (((int) Math.sqrt((i10 * i10) + (i11 * i11))) <= 10) {
                        this.f64806f = false;
                    } else {
                        float x10 = getX() + i10;
                        float y10 = getY() + i11;
                        if (x10 < 0.0f) {
                            x10 = 0.0f;
                        } else if (x10 > this.f64803c - getWidth()) {
                            x10 = this.f64803c - getWidth();
                        }
                        if (getY() < 0.0f) {
                            y10 = 0.0f;
                        } else {
                            float y11 = getY() + getHeight();
                            int i12 = this.f64802b;
                            if (y11 > i12) {
                                y10 = i12 - getHeight();
                            }
                        }
                        setX(x10);
                        setY(y10);
                        this.f64804d = rawX;
                        this.f64805e = rawY;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("isDrag=");
                        sb4.append(this.f64806f);
                        sb4.append("getX=");
                        sb4.append(getX());
                        sb4.append(";getY=");
                        sb4.append(getY());
                        sb4.append(";parentWidth=");
                        sb4.append(this.f64803c);
                    }
                }
            }
        } else if (!a()) {
            if (rawX >= this.f64803c / 2) {
                animate().setInterpolator(new DecelerateInterpolator()).setDuration(500L).xBy(((this.f64803c - getWidth()) - getX()) - this.f64807g).start();
            } else {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "x", getX(), this.f64807g);
                objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
                objectAnimatorOfFloat.setDuration(500L);
                objectAnimatorOfFloat.start();
            }
        }
        return !a() || super.onTouchEvent(event);
    }

    public DragImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DragImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64807g = 0;
        this.f64807g = com.join.mgps.Util.i0.a(context, 10.0f);
    }
}
