package com.byazt.oq;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1558})
public class CircleRippleView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18194a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18195c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Paint f18196da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<Integer> f18197i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f18198n;
    public Paint sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f18199t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f18200u;
    public int uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<Integer> f18201x;
    public int yp;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    private void ve() {
        Paint paint = new Paint();
        this.f18196da = paint;
        paint.setAntiAlias(true);
        this.f18196da.setStrokeWidth(this.yp);
        this.f18201x.add(255);
        this.f18197i.add(0);
        Paint paint2 = new Paint();
        this.sl = paint2;
        paint2.setAntiAlias(true);
        this.sl.setColor(Color.parseColor("#0FFFFFFF"));
        this.sl.setStyle(Paint.Style.FILL);
    }

    public void c() {
        this.sp = true;
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f18196da.setShader(new LinearGradient(this.f18199t, 0.0f, this.f18200u, getMeasuredHeight(), -1, 16777215, Shader.TileMode.CLAMP));
        int i10 = 0;
        while (true) {
            if (i10 >= this.f18201x.size()) {
                break;
            }
            Integer num = this.f18201x.get(i10);
            this.f18196da.setAlpha(num.intValue());
            Integer num2 = this.f18197i.get(i10);
            if (this.ve + num2.intValue() < this.f18198n) {
                canvas.drawCircle(this.f18199t, this.f18200u, this.ve + num2.intValue(), this.f18196da);
            }
            if (num.intValue() > 0 && num2.intValue() < this.f18198n) {
                this.f18201x.set(i10, Integer.valueOf(num.intValue() - this.f18194a > 0 ? num.intValue() - (this.f18194a * 3) : 1));
                this.f18197i.set(i10, Integer.valueOf(num2.intValue() + this.f18194a));
            }
            i10++;
        }
        List<Integer> list = this.f18197i;
        if (list.get(list.size() - 1).intValue() >= this.f18198n / this.uj) {
            this.f18201x.add(255);
            this.f18197i.add(0);
        }
        if (this.f18197i.size() >= 3) {
            this.f18197i.remove(0);
            this.f18201x.remove(0);
        }
        this.f18196da.setAlpha(255);
        this.f18196da.setColor(this.tt);
        canvas.drawCircle(this.f18199t, this.f18200u, this.ve, this.sl);
        if (this.sp) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i10 / 2.0f;
        this.f18199t = f10;
        this.f18200u = i11 / 2.0f;
        float f11 = f10 - (this.yp / 2.0f);
        this.f18198n = f11;
        this.ve = f11 / 4.0f;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            invalidate();
        }
    }

    public void setColor(int i10) {
        this.f18195c = i10;
    }

    public void setCoreColor(int i10) {
        this.tt = i10;
    }

    public void setCoreRadius(int i10) {
        this.ve = i10;
    }

    public void setDiffuseSpeed(int i10) {
        this.f18194a = i10;
    }

    public void setDiffuseWidth(int i10) {
        this.uj = i10;
    }

    public void setMaxWidth(int i10) {
        this.f18198n = i10;
    }

    public void tt() {
        this.sp = false;
        this.f18197i.clear();
        this.f18201x.clear();
        this.f18201x.add(255);
        this.f18197i.add(0);
        invalidate();
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f18195c = -1;
        this.tt = SupportMenu.CATEGORY_MASK;
        this.ve = 18.0f;
        this.uj = 3;
        this.f18198n = 50.0f;
        this.f18194a = 2;
        this.sp = false;
        this.f18201x = new ArrayList();
        this.f18197i = new ArrayList();
        this.yp = 24;
        ve();
    }
}
