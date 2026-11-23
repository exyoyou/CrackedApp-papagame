package com.byazt.nwh;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.internal.view.SupportMenu;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.aq.sp;
import com.byazt.or.x;
import com.byazt.tm.DynamicImageView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 668, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17668a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f17669c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17670n;
    public int uj;
    public Path tt = new Path();
    public Path ve = new Path();

    public c() {
        Paint paint = new Paint();
        this.f17669c = paint;
        paint.setAntiAlias(true);
    }

    public void c(Canvas canvas, tt ttVar, View view) {
        int iIntValue;
        int iIntValue2;
        String str;
        float[] fArrTt;
        if (ttVar.getRippleValue() != 0.0f) {
            if (com.byazt.mf.c.c().ve() != null) {
                try {
                    str = (String) view.getTag(2097610712);
                    try {
                        fArrTt = sp.tt(str);
                    } catch (Exception unused) {
                        fArrTt = null;
                    }
                } catch (Exception unused2) {
                    str = "";
                }
                if (str.startsWith("#")) {
                    this.f17669c.setColor(Color.parseColor(str));
                    this.f17669c.setAlpha(90);
                } else if (fArrTt != null) {
                    this.f17669c.setColor(x.c(fArrTt[3] * (1.0f - ttVar.getRippleValue()), fArrTt[0] / 256.0f, fArrTt[1] / 256.0f, fArrTt[2] / 256.0f));
                }
            }
            ((ViewGroup) view.getParent()).setClipChildren(true);
            int i10 = this.uj;
            int i11 = this.f17670n;
            canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * ttVar.getRippleValue(), this.f17669c);
        }
        if (ttVar.getShineValue() != 0.0f) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).setClipChildren(true);
            }
            if (view.getParent().getParent() != null) {
                ((ViewGroup) view.getParent().getParent()).setClipChildren(true);
            }
            this.tt.reset();
            try {
                iIntValue2 = ((Integer) view.getTag(2097610711)).intValue();
            } catch (Exception unused3) {
                iIntValue2 = 0;
            }
            if (iIntValue2 >= 0) {
                int shineValue = ((int) ((((this.uj * 4) + (iIntValue2 * 2)) + (this.f17670n * 2)) * ttVar.getShineValue())) - ((this.f17670n * 2) + iIntValue2);
                float f10 = shineValue;
                int i12 = this.f17670n;
                this.f17669c.setShader(new LinearGradient(f10, 0.0f, ((iIntValue2 + i12) / 2) + shineValue, i12 / 2, new int[]{Color.parseColor("#20ffffff"), Color.parseColor("#60ffffff"), Color.parseColor("#65ffffff")}, (float[]) null, Shader.TileMode.MIRROR));
                this.f17669c.setStrokeWidth(this.uj * 2);
                Path path = this.ve;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                int i13 = shineValue + iIntValue2;
                int i14 = this.f17670n;
                canvas.drawLine(f10, 0.0f, i13 + i14, i14, this.f17669c);
            }
        }
        if (ttVar.getMarqueeValue() != 0.0f) {
            try {
                iIntValue = ((Integer) view.getTag(2097610709)).intValue();
            } catch (Exception unused4) {
                iIntValue = 0;
            }
            if (iIntValue >= 0) {
                this.tt.reset();
                this.tt.moveTo(0.0f, 0.0f);
                this.tt.lineTo(this.uj * 2, 0.0f);
                this.tt.lineTo(this.uj * 2, this.f17670n * 2);
                this.tt.lineTo(0.0f, this.f17670n * 2);
                this.tt.lineTo(0.0f, 0.0f);
                this.f17669c.setShader(new LinearGradient(0.0f, 0.0f, this.uj * 2, this.f17670n * 2, new int[]{(int) (ttVar.getMarqueeValue() * (-65536.0f)), (int) ((1.0f - ttVar.getMarqueeValue()) * (-65536.0f))}, (float[]) null, Shader.TileMode.CLAMP));
                this.f17669c.setColor(SupportMenu.CATEGORY_MASK);
                this.f17669c.setStyle(Paint.Style.STROKE);
                this.f17669c.setStrokeWidth(iIntValue);
                canvas.drawPath(this.tt, this.f17669c);
            }
        }
    }

    public void c(View view, float f10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i10 = this.f17668a;
        int i11 = (int) (i10 * f10);
        layoutParams.width = i11;
        view.setTranslationX((i10 - i11) / 2);
        if (view instanceof DynamicImageView) {
            int i12 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i12 >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i12).setTranslationX((-(this.f17668a - layoutParams.width)) / 2);
                i12++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void c(View view, int i10, int i11) {
        String str;
        this.uj = i10 / 2;
        this.f17670n = i11 / 2;
        if (this.f17668a == 0 && view.getLayoutParams().width > 0) {
            this.f17668a = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(2097610710);
            try {
                this.ve.addRoundRect(new RectF(0.0f, 0.0f, i10, i11), i11 / 2, i11 / 2, Path.Direction.CW);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "";
        }
        if (ScrollClickView.DIR_RIGHT.equals(str)) {
            view.setPivotX(this.uj * 2);
            view.setPivotY(this.f17670n);
        } else if (ScrollClickView.DIR_LEFT.equals(str)) {
            view.setPivotX(0.0f);
            view.setPivotY(this.f17670n);
        } else {
            view.setPivotX(this.uj);
            view.setPivotY(this.f17670n);
        }
    }
}
