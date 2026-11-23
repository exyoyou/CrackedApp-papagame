package com.byazt.ff;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.nr.z;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 1011})
public class TTRatingBar2 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14166a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f14167c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14168i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public double f14169n;
    public int sp;
    public LinearLayout tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14170x;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14167c = new LinearLayout(getContext());
        this.tt = new LinearLayout(getContext());
        this.f14167c.setOrientation(0);
        this.f14167c.setGravity(GravityCompat.START);
        this.tt.setOrientation(0);
        this.tt.setGravity(GravityCompat.START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.ve, this.uj);
        layoutParams.leftMargin = this.f14166a;
        layoutParams.topMargin = this.sp;
        layoutParams.rightMargin = this.f14170x;
        layoutParams.bottomMargin = this.f14168i;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f14167c.measure(i10, i11);
        double dFloor = Math.floor(this.f14169n);
        int i12 = this.f14166a;
        int i13 = this.f14170x + i12;
        int i14 = this.ve;
        this.tt.measure(View.MeasureSpec.makeMeasureSpec((int) ((((double) (i13 + i14)) * dFloor) + ((double) i12) + ((this.f14169n - dFloor) * ((double) i14))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f14167c.getMeasuredHeight(), 1073741824));
    }

    public void setRating(double d10) {
        this.f14169n = d10;
    }

    public void c(int i10, int i11) {
        this.ve = i11;
        this.uj = i10;
    }

    public void c() {
        removeAllViews();
        z.c(getContext(), "tt_ratingbar_full_star2", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.ff.TTRatingBar2.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i10 = 0; i10 < 5; i10++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.tt.addView(starImageView);
                }
            }
        }, 320);
        z.c(getContext(), "tt_ratingbar_empty_star2", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.ff.TTRatingBar2.2
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i10 = 0; i10 < 5; i10++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.f14167c.addView(starImageView);
                }
            }
        }, 320);
        addView(this.f14167c);
        addView(this.tt);
        requestLayout();
    }

    public void c(int i10, int i11, int i12, int i13) {
        this.f14166a = i10;
        this.sp = i11;
        this.f14170x = i12;
        this.f14168i = i13;
    }
}
