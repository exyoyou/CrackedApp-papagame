package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import com.byazt.ga.rl;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 67})
public class u extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Map<String, Object> f22866da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22867i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f22868x;

    public u(com.byazt.ga.x xVar, x xVar2, Context context) {
        super(xVar, xVar2);
        this.f22868x = -1;
        this.f22867i = -1;
        HashMap map = new HashMap();
        this.f22866da = map;
        if (((sp) this).sp != null) {
            float fC = com.byazt.kk.da.c();
            this.f22868x = (int) (((sp) this).sp.c() * fC);
            this.f22867i = (int) (((sp) this).sp.tt() * fC);
            map.put("ugen_url", ((sp) this).sp.uj());
            map.put("ugen_md5", ((sp) this).sp.n());
            map.put("ugen_v", ((sp) this).sp.a());
            map.put("ugen_w", Integer.valueOf(this.f22868x));
            map.put("ugen_h", Integer.valueOf(this.f22867i));
        }
    }

    private static void c(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.byazt.zk.sp, com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        rl rlVarC = this.tt.c();
        View viewC = rlVarC != null ? rlVarC.c("view:", this.f22866da) : null;
        if (this.f22868x <= 0 || viewC == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(i10);
        float fX = x();
        c(viewC, this.f22868x, this.f22867i);
        viewC.setAlpha(fX);
        viewC.draw(canvas);
        canvas.restore();
    }
}
