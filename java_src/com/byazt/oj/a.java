package com.byazt.oj;

import android.animation.ObjectAnimator;
import android.view.View;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 34})
public class a extends uj {
    public a(View view, com.byazt.aq.c cVar) {
        super(view, cVar);
    }

    @Override // com.byazt.oj.uj
    public List<ObjectAnimator> c() {
        float f10 = this.ve.getLayoutParams().width;
        this.ve.setTranslationX(f10);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ve, "translationX", f10, 0.0f).setDuration((int) (this.tt.da() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ve, "alpha", 0.0f, 1.0f).setDuration((int) (this.tt.da() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(c(duration));
        arrayList.add(c(duration2));
        return arrayList;
    }
}
