package com.byazt.hp;

import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.byazt.cd.x;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1019, 15})
public class uj extends c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final float f15040m;
    public static final float nu;
    public static final float yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final float f15041z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.cd.c.C0282c f15042a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15043da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f15044i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Path f15045n;
    public float rh;
    public int sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15046t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Path f15047u;
    public Paint uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15048x;

    static {
        float radians = (float) Math.toRadians(30.0d);
        yp = radians;
        f15041z = (float) Math.tan(radians);
        f15040m = (float) Math.cos(radians);
        nu = (float) Math.sin(radians);
    }

    public uj(com.byazt.xj.ve veVar, JSONObject jSONObject) {
        super(veVar, jSONObject);
        this.f15046t = true;
        Paint paint = new Paint();
        this.uj = paint;
        paint.setAntiAlias(true);
        this.f15045n = new Path();
        this.f15044i = this.tt.rl();
        this.f15047u = new Path();
    }

    private void ve(Canvas canvas) {
        LinearGradient linearGradient;
        try {
            if (this.tt.lr() > 0.0f) {
                int i10 = this.f15043da;
                float f10 = f15041z;
                float fLr = (i10 + (i10 * f10)) * this.tt.lr();
                this.f15047u.reset();
                this.f15047u.moveTo(fLr, 0.0f);
                int i11 = this.sl;
                float f11 = fLr - (i11 * f10);
                this.f15047u.lineTo(f11, i11);
                this.f15047u.lineTo(f11 + this.ve, this.sl);
                this.f15047u.lineTo(this.ve + fLr, 0.0f);
                this.f15047u.close();
                float f12 = this.rh;
                float f13 = f15040m * f12;
                float f14 = f12 * nu;
                if (!this.f15046t || this.f15042a == null) {
                    float f15 = fLr + f13;
                    int i12 = this.f15048x;
                    linearGradient = new LinearGradient(fLr, 0.0f, f15, f14, new int[]{i12, this.sp, i12}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    linearGradient = new LinearGradient(fLr, 0.0f, fLr + f13, f14, this.f15042a.tt, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.uj.setShader(linearGradient);
                Path path = this.f15045n;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                canvas.drawPath(this.f15047u, this.uj);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.hp.c
    @SuppressLint({"DrawAllocation"})
    public void c(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public void tt() {
        this.ve = (int) x.c(this.tt.i().getContext(), this.f15030c.optInt("shineWidth", 30));
        String strOptString = this.f15030c.optString("backgroundColor", "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(strOptString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : strOptString;
        if (str.startsWith("linear")) {
            this.f15042a = com.byazt.cd.c.tt(str);
        } else {
            int iC = com.byazt.cd.c.c(str);
            this.sp = iC;
            this.f15048x = com.byazt.cd.c.c(iC, 32);
            this.f15046t = false;
        }
        this.rh = f15040m * this.ve;
    }

    @Override // com.byazt.hp.c
    public void c(int i10, int i11) {
        this.f15043da = i10;
        this.sl = i11;
        try {
            RectF rectF = new RectF(0.0f, 0.0f, i10, i11);
            Path path = this.f15045n;
            float f10 = this.f15044i;
            path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        } catch (Throwable unused) {
        }
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
