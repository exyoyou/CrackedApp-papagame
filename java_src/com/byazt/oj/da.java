package com.byazt.oj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.tm.DynamicBaseWidget;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 72})
public class da extends uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f17870a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f17871n;
    public c uj;

    @com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 45})
    private class c {
        public View tt;

        public c(View view) {
            this.tt = view;
        }

        public void c(int i10) {
            if (!"top".equals(da.this.tt.c())) {
                ViewGroup.LayoutParams layoutParams = this.tt.getLayoutParams();
                layoutParams.height = i10;
                this.tt.setLayoutParams(layoutParams);
                this.tt.requestLayout();
                return;
            }
            if (da.this.ve instanceof ViewGroup) {
                for (int i11 = 0; i11 < ((ViewGroup) da.this.ve).getChildCount(); i11++) {
                    ((ViewGroup) da.this.ve).getChildAt(i11).setTranslationY(i10 - da.this.f17871n);
                }
            }
            da daVar = da.this;
            daVar.ve.setTranslationY(daVar.f17871n - i10);
        }
    }

    public da(View view, com.byazt.aq.c cVar) {
        super(view, cVar);
    }

    @Override // com.byazt.oj.uj
    public List<ObjectAnimator> c() {
        int i10;
        String str;
        View view = this.ve;
        if ((view instanceof ImageView) && (view.getParent() instanceof DynamicBaseWidget)) {
            this.ve = (View) this.ve.getParent();
        }
        this.ve.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ve, "alpha", 0.0f, 1.0f).setDuration((int) (this.tt.da() * 1000.0d));
        this.uj = new c(this.ve);
        final int i11 = this.ve.getLayoutParams().height;
        this.f17871n = i11;
        this.f17870a = this.ve.getLayoutParams().width;
        if (ScrollClickView.DIR_LEFT.equals(this.tt.c()) || ScrollClickView.DIR_RIGHT.equals(this.tt.c())) {
            i10 = (int) this.f17870a;
            str = "width";
        } else {
            str = "height";
            i10 = i11;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.uj, str, 0, i10).setDuration((int) (this.tt.da() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(c(duration));
        arrayList.add(c(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.byazt.oj.da.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z10) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                da.this.uj.c(i11);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z10) {
            }
        });
        return arrayList;
    }
}
