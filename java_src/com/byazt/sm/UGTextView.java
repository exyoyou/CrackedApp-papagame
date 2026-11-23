package com.byazt.sm;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;
import com.byazt.rb.sp;
import com.byazt.rb.x;
import com.byazt.sa.uj;
import com.byazt.sz.n;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 40, 893})
public class UGTextView extends TextView implements sp, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f19836a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f19837c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f19838n;
    public float sp;
    public float tt;
    public float uj;
    public x ve;

    public UGTextView(Context context) {
        super(context);
        this.uj = -1.0f;
        this.f19836a = 1.0f;
        this.sp = 0.0f;
        this.ve = new x(this);
    }

    public void c(uj ujVar) {
        this.f19837c = ujVar;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.tt(canvas);
        }
    }

    public float getBorderRadius() {
        return this.ve.c();
    }

    @Override // com.byazt.rb.sp
    public float getRipple() {
        return this.tt;
    }

    @Override // com.byazt.rb.sp
    public float getRubIn() {
        return this.ve.getRubIn();
    }

    @Override // com.byazt.rb.sp
    public float getShine() {
        return this.ve.getShine();
    }

    @Override // com.byazt.rb.sp
    public float getStretch() {
        return this.ve.getStretch();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.c(canvas, this);
            this.f19837c.c(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        if (z10 && this.uj > 0.0f) {
            c(((i12 - i10) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), ((i13 - i11) - getCompoundPaddingBottom()) - getCompoundPaddingTop());
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f19837c;
        if (ujVar == null) {
            super.onMeasure(i10, i11);
        } else {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i12);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f19837c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.ve.c(i10);
    }

    public void setBorderRadius(float f10) {
        x xVar = this.ve;
        if (xVar != null) {
            xVar.c(f10);
        }
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f10, float f11) {
        super.setLineSpacing(f10, f11);
        this.f19836a = f11;
        this.sp = f10;
    }

    public void setMinTextSize(float f10) {
        this.uj = f10;
    }

    public void setRipple(float f10) {
        this.tt = f10;
        x xVar = this.ve;
        if (xVar != null) {
            xVar.tt(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        x xVar = this.ve;
        if (xVar != null) {
            xVar.n(f10);
        }
    }

    public void setShine(float f10) {
        x xVar = this.ve;
        if (xVar != null) {
            xVar.ve(f10);
        }
    }

    public void setStretch(float f10) {
        x xVar = this.ve;
        if (xVar != null) {
            xVar.uj(f10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(float f10) {
        super.setTextSize(f10);
        this.f19838n = getTextSize();
    }

    private void c(int i10, int i11) {
        CharSequence text = getText();
        if (text == null || text.length() == 0 || i11 <= 0 || i10 <= 0 || this.f19838n == 0.0f) {
            return;
        }
        TextPaint paint = getPaint();
        float fMax = this.f19838n;
        int iC = c(text, paint, i10, fMax);
        while (iC > i11) {
            float f10 = this.uj;
            if (fMax <= f10) {
                break;
            }
            fMax = Math.max(fMax - 1.0f, f10);
            iC = c(text, paint, i10, fMax);
        }
        setTextSize(0, fMax);
        setLineSpacing(this.sp, this.f19836a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        this.f19838n = getTextSize();
    }

    private int c(CharSequence charSequence, TextPaint textPaint, int i10, float f10) {
        TextPaint textPaint2 = new TextPaint(textPaint);
        textPaint2.setTextSize(f10);
        return new StaticLayout(charSequence, textPaint2, i10, Layout.Alignment.ALIGN_NORMAL, this.f19836a, this.sp, true).getHeight();
    }
}
