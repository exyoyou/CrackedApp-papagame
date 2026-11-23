package com.byazt.hp;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1019, 46})
public class n extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f15031a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Path f15032da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15033i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f15034n;
    public Path sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Path f15035t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PorterDuffXfermode f15036u;
    public float uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15037x;

    public n(com.byazt.xj.ve veVar, JSONObject jSONObject) {
        super(veVar, jSONObject);
        this.f15037x = true;
        this.f15033i = true;
        Paint paint = new Paint();
        this.f15034n = paint;
        paint.setAntiAlias(true);
        this.tt.i().setLayerType(2, null);
        this.f15036u = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.f15032da = new Path();
        this.sl = new Path();
        this.f15035t = new Path();
        this.f15034n.setXfermode(this.f15036u);
    }

    private void ve(Canvas canvas) {
        if (this.tt.l() <= 0.0f) {
            this.f15034n.setXfermode(this.f15036u);
            canvas.drawRect(0.0f, 0.0f, this.ve, this.uj, this.f15034n);
            return;
        }
        int iL = (int) (this.ve * this.tt.l());
        int iL2 = (int) (this.uj * this.tt.l());
        this.f15034n.setXfermode(this.f15036u);
        String str = this.sp;
        str.hashCode();
        switch (str) {
            case "bottom":
                canvas.drawRect(0.0f, iL2, this.ve, this.uj, this.f15034n);
                break;
            case "center":
                this.f15032da.reset();
                this.sl.reset();
                this.f15035t.reset();
                this.f15032da.addCircle(this.ve / 2.0f, this.uj / 2.0f, iL, Path.Direction.CW);
                Path path = this.sl;
                float f10 = this.ve;
                path.addRect(f10 / 2.0f, 0.0f, f10, this.uj, Path.Direction.CW);
                this.sl.op(this.f15032da, Path.Op.DIFFERENCE);
                this.f15035t.addRect(0.0f, 0.0f, this.ve / 2.0f, this.uj, Path.Direction.CW);
                this.f15035t.op(this.f15032da, Path.Op.DIFFERENCE);
                canvas.drawPath(this.sl, this.f15034n);
                canvas.drawPath(this.f15035t, this.f15034n);
                break;
            case "top":
                canvas.drawRect(0.0f, 0.0f, this.ve, this.uj - iL2, this.f15034n);
                break;
            case "left":
                canvas.drawRect(0.0f, 0.0f, this.ve - iL, this.uj, this.f15034n);
                break;
            case "right":
                canvas.drawRect(iL, 0.0f, this.ve, this.uj, this.f15034n);
                break;
        }
    }

    @Override // com.byazt.hp.c
    public void c(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public void tt() {
        this.f15031a = (float) this.f15030c.optDouble("start", 0.0d);
        this.sp = this.f15030c.optString(HmInputMappingContent.FIELD_DIRECTION, "center");
    }

    @Override // com.byazt.hp.c
    public void c(int i10, int i11) {
        if (i10 > 0 && this.f15037x) {
            this.ve = i10;
            this.f15037x = false;
        }
        if (i11 <= 0 || !this.f15033i) {
            return;
        }
        this.uj = i11;
        this.f15033i = false;
    }

    @Override // com.byazt.hp.c
    public void tt(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public List<PropertyValuesHolder> ve() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(uj(), this.f15031a, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }
}
