package com.byazt.hp;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1019, 13})
public class tt extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Paint f15038a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15039n;
    public int uj;
    public int ve;

    public tt(com.byazt.xj.ve veVar, JSONObject jSONObject) {
        super(veVar, jSONObject);
        Paint paint = new Paint();
        this.f15038a = paint;
        paint.setAntiAlias(true);
    }

    private void ve(Canvas canvas) {
        try {
            if (this.tt.bm() > 0.0f) {
                this.f15038a.setColor(this.ve);
                this.f15038a.setAlpha((int) ((1.0f - this.tt.bm()) * 255.0f));
                ((ViewGroup) this.tt.i().getParent()).setClipChildren(true);
                int i10 = this.uj;
                int i11 = this.f15039n;
                canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * this.tt.bm(), this.f15038a);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.hp.c
    public void c(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public void tt() {
        this.ve = com.byazt.cd.c.c(this.f15030c.optString("backgroundColor"), -1);
    }

    @Override // com.byazt.hp.c
    public void c(int i10, int i11) {
        this.uj = i10 / 2;
        this.f15039n = i11 / 2;
    }

    @Override // com.byazt.hp.c
    public void tt(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public List<PropertyValuesHolder> ve() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(uj(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }
}
