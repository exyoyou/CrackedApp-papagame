package com.byazt.oj;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 66})
public class t extends uj {
    public t(View view, com.byazt.aq.c cVar) {
        super(view, cVar);
    }

    @Override // com.byazt.oj.uj
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> c() {
        int i10;
        int i11;
        this.ve.setTag(2097610711, Integer.valueOf(this.tt.uj()));
        View view = this.ve;
        if (view == null || !com.byazt.or.ve.c(view.getContext())) {
            i10 = 0;
            i11 = 1;
        } else {
            i10 = 1;
            i11 = 0;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ve, "shineValue", i10, i11).setDuration((int) (this.tt.da() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(c(duration));
        return arrayList;
    }
}
