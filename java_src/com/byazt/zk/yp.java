package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.byazt.ga.rl;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 215})
public class yp extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f22907da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22908i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Path f22909x;

    public yp(com.byazt.ga.x xVar, x xVar2, Context context) {
        super(xVar, xVar2);
        this.f22909x = null;
        this.f22908i = -1;
        this.f22907da = -1;
        if (((sp) this).sp != null) {
            float fC = com.byazt.kk.da.c();
            this.f22908i = (int) (((sp) this).sp.c() * fC);
            this.f22907da = (int) (((sp) this).sp.tt() * fC);
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, this.f22908i, this.f22907da);
            Path path = new Path();
            this.f22909x = path;
            float f10 = fC * 40.0f;
            path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
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
        View viewC = rlVarC != null ? rlVarC.c("videoview:", null) : null;
        if (this.f22908i <= 0 || viewC == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(i10);
        float fX = x();
        c(viewC, this.f22908i, this.f22907da);
        viewC.setAlpha(fX);
        canvas.clipPath(this.f22909x);
        viewC.draw(canvas);
        canvas.restore();
    }
}
