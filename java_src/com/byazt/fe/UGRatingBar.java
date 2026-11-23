package com.byazt.fe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.cd.x;
import com.byazt.sa.uj;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_CANCEL_VALUE, 1863})
public class UGRatingBar extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinearLayout f14142a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f14143c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f14144n;
    public Context sp;
    public float tt;
    public float uj;
    public double ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public uj f14145x;

    public UGRatingBar(Context context) {
        super(context);
        this.sp = context;
        this.f14144n = new LinearLayout(context);
        this.f14142a = new LinearLayout(context);
        this.f14144n.setOrientation(0);
        this.f14144n.setGravity(GravityCompat.START);
        this.f14142a.setOrientation(0);
        this.f14142a.setGravity(GravityCompat.START);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.f14143c, (int) this.tt);
        float f10 = this.uj;
        layoutParams.leftMargin = (int) f10;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f10;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void c(double d10, int i10, int i11, float f10, int i12) {
        removeAllViews();
        this.f14144n.removeAllViews();
        this.f14142a.removeAllViews();
        this.f14143c = (int) x.c(this.sp, f10);
        this.tt = (int) x.c(this.sp, f10);
        this.ve = d10;
        this.uj = i12;
        for (int i13 = 0; i13 < 5; i13++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            c(starImageView, "tt_ugen_rating_star");
            starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            this.f14142a.addView(starImageView);
        }
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            c(starImageView2, "tt_ugen_rating_star");
            starImageView2.setColorFilter(i11);
            this.f14144n.addView(starImageView2);
        }
        addView(this.f14144n);
        addView(this.f14142a);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.c(i10, i11);
        }
        super.onMeasure(i10, i11);
        this.f14144n.measure(i10, i11);
        double dFloor = Math.floor(this.ve);
        float f10 = this.uj;
        float f11 = this.f14143c;
        this.f14142a.measure(View.MeasureSpec.makeMeasureSpec((int) ((((double) (f10 + f10 + f11)) * dFloor) + ((double) f10) + ((this.ve - dFloor) * ((double) f11))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f14144n.getMeasuredHeight(), 1073741824));
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f14145x;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void c(ImageView imageView, String str) {
        imageView.setImageResource(com.byazt.cd.uj.tt(this.sp, str));
    }

    public void c(uj ujVar) {
        this.f14145x = ujVar;
    }
}
