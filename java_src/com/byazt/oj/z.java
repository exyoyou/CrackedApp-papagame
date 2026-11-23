package com.byazt.oj;

import android.animation.ObjectAnimator;
import android.view.View;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 133})
public class z extends uj {
    public z(View view, com.byazt.aq.c cVar) {
        super(view, cVar);
    }

    @Override // com.byazt.oj.uj
    public List<ObjectAnimator> c() {
        float f10;
        float fC = com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.tt.a());
        float fC2 = com.byazt.or.x.c(com.byazt.sr.uj.getContext(), this.tt.sp());
        float f11 = 0.0f;
        if ("reverse".equals(this.tt.m())) {
            f11 = fC;
            f10 = fC2;
            fC = 0.0f;
            fC2 = 0.0f;
        } else {
            f10 = 0.0f;
        }
        if (com.byazt.or.ve.c(this.ve.getContext())) {
            fC = -fC;
            f11 = -f11;
        }
        this.ve.setTranslationX(fC);
        this.ve.setTranslationY(fC2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ve, "translationX", fC, f11).setDuration((int) (this.tt.da() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ve, "translationY", fC2, f10).setDuration((int) (this.tt.da() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(c(duration));
        arrayList.add(c(duration2));
        return arrayList;
    }
}
