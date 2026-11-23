package com.byazt.sm;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import com.byazt.rb.sp;
import com.byazt.rb.x;
import com.byazt.sa.uj;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 40, 1803})
public class RichTextView extends TextView implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f19835c;
    public x tt;

    public RichTextView(Context context) {
        super(context);
        this.tt = new x(this);
    }

    public void c(uj ujVar) {
        this.f19835c = ujVar;
    }

    public float getBorderRadius() {
        return this.tt.c();
    }

    @Override // com.byazt.rb.sp
    public float getRipple() {
        return this.tt.getRipple();
    }

    @Override // com.byazt.rb.sp
    public float getRubIn() {
        return this.tt.getRubIn();
    }

    @Override // com.byazt.rb.sp
    public float getShine() {
        return this.tt.getShine();
    }

    @Override // com.byazt.rb.sp
    public float getStretch() {
        return this.tt.getStretch();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.c(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f19835c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.tt.c(i10);
    }

    public void setBorderRadius(float f10) {
        x xVar = this.tt;
        if (xVar != null) {
            xVar.c(f10);
        }
    }

    public void setRichText(String str) {
        setText(Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str));
    }

    public void setRipple(float f10) {
        x xVar = this.tt;
        if (xVar != null) {
            xVar.tt(f10);
        }
    }

    public void setRubIn(float f10) {
        x xVar = this.tt;
        if (xVar != null) {
            xVar.n(f10);
        }
    }

    public void setShine(float f10) {
        x xVar = this.tt;
        if (xVar != null) {
            xVar.ve(f10);
        }
    }

    public void setStretch(float f10) {
        x xVar = this.tt;
        if (xVar != null) {
            xVar.uj(f10);
        }
    }
}
