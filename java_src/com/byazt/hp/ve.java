package com.byazt.hp;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.View;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.nr.m;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1019, 54})
public class ve extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f15049a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public LinearGradient f15050da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffXfermode f15051i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f15052n;
    public Matrix sl;
    public Paint sp;
    public float uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Paint f15053x;

    public ve(com.byazt.xj.ve veVar, JSONObject jSONObject) {
        super(veVar, jSONObject);
        this.f15049a = this.tt.i();
        Paint paint = new Paint();
        this.sp = paint;
        paint.setAntiAlias(true);
        this.f15049a.setLayerType(2, null);
        this.f15051i = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.f15053x = new Paint();
        this.sl = new Matrix();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void ve(Canvas canvas) {
        byte b10;
        try {
            if (this.tt.lo() <= 0.0f) {
                this.sp.setXfermode(this.f15051i);
                canvas.drawRect(0.0f, 0.0f, this.uj, this.f15052n, this.sp);
                return;
            }
            int iLo = (int) (this.uj * this.tt.lo());
            int iLo2 = (int) (this.f15052n * this.tt.lo());
            this.sp.setXfermode(this.f15051i);
            String str = this.ve;
            switch (str.hashCode()) {
                case -1383228885:
                    if (!str.equals("bottom")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 115029:
                    if (!str.equals("top")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case 3317767:
                    if (!str.equals(ScrollClickView.DIR_LEFT)) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 108511772:
                    if (!str.equals(ScrollClickView.DIR_RIGHT)) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                float f10 = iLo;
                canvas.drawRect(f10, 0.0f, this.uj, this.f15052n, this.sp);
                this.sl.setTranslate(f10, this.f15052n);
                this.f15050da.setLocalMatrix(this.sl);
                this.f15053x.setShader(this.f15050da);
                if (this.tt.lo() <= 1.0f && this.tt.lo() > 0.9f) {
                    this.f15053x.setAlpha((int) (255.0f - (this.tt.lo() * 255.0f)));
                }
                canvas.drawRect(0.0f, 0.0f, f10, this.f15052n, this.f15053x);
                return;
            }
            if (b10 == 1) {
                float f11 = iLo;
                canvas.drawRect(0.0f, 0.0f, this.uj - f11, this.f15052n, this.sp);
                this.sl.setTranslate(this.uj - f11, 0.0f);
                this.f15050da.setLocalMatrix(this.sl);
                this.f15053x.setShader(this.f15050da);
                if (this.tt.lo() <= 1.0f && this.tt.lo() > 0.9f) {
                    this.f15053x.setAlpha((int) (255.0f - (this.tt.lo() * 255.0f)));
                }
                float f12 = this.uj;
                canvas.drawRect(f12, this.f15052n, f12 - f11, 0.0f, this.f15053x);
                return;
            }
            if (b10 == 2) {
                float f13 = iLo2;
                canvas.drawRect(0.0f, f13, this.uj, this.f15052n, this.sp);
                this.sl.setTranslate(0.0f, f13);
                this.f15050da.setLocalMatrix(this.sl);
                this.f15053x.setShader(this.f15050da);
                if (this.tt.lo() <= 1.0f && this.tt.lo() > 0.9f) {
                    this.f15053x.setAlpha((int) (255.0f - (this.tt.lo() * 255.0f)));
                }
                canvas.drawRect(0.0f, 0.0f, this.uj, f13, this.f15053x);
                return;
            }
            if (b10 != 3) {
                return;
            }
            float f14 = iLo2;
            canvas.drawRect(0.0f, 0.0f, this.uj, this.f15052n - f14, this.sp);
            this.sl.setTranslate(0.0f, this.f15052n - f14);
            this.f15050da.setLocalMatrix(this.sl);
            this.f15053x.setShader(this.f15050da);
            if (this.tt.lo() <= 1.0f && this.tt.lo() > 0.9f) {
                this.f15053x.setAlpha((int) (255.0f - (this.tt.lo() * 255.0f)));
            }
            float f15 = this.uj;
            float f16 = this.f15052n;
            canvas.drawRect(f15, f16, 0.0f, f16 - f14, this.f15053x);
        } catch (Throwable th) {
            m.uj("BaseEffectWrapper", th.getMessage());
        }
    }

    @Override // com.byazt.hp.c
    public void c(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public void tt() {
        this.ve = this.f15030c.optString(HmInputMappingContent.FIELD_DIRECTION, ScrollClickView.DIR_LEFT);
    }

    @Override // com.byazt.hp.c
    public void c(int i10, int i11) {
        this.uj = i10;
        this.f15052n = i11;
        String str = this.ve;
        str.hashCode();
        switch (str) {
            case "bottom":
                this.f15050da = new LinearGradient(0.0f, -this.f15052n, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "top":
                this.f15050da = new LinearGradient(0.0f, this.f15052n, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "left":
                this.f15050da = new LinearGradient(this.uj, 0.0f, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "right":
                this.f15050da = new LinearGradient(-this.uj, 0.0f, 0.0f, this.f15052n, 0, -1, Shader.TileMode.CLAMP);
                break;
        }
    }

    @Override // com.byazt.hp.c
    public void tt(Canvas canvas) {
        ve(canvas);
    }

    @Override // com.byazt.hp.c
    public List<PropertyValuesHolder> ve() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", 0.0f, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(com.byazt.rb.n.ALPHA.tt(), 0.0f, 1.0f));
        return arrayList;
    }
}
