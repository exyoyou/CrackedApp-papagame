package com.byazt.ff;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.byazt.nr.z;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 1993})
public class TTRatingBar extends LinearLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14162c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f14163n;
    public int tt;
    public float uj;
    public float ve;

    public TTRatingBar(Context context) {
        super(context);
        this.f14162c = 5;
        this.tt = 0;
        c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.ve), Math.round(this.uj)));
        imageView.setPadding(0, 0, Math.round(this.f14163n), 0);
        return imageView;
    }

    public int getStarEmptyNum() {
        return this.tt;
    }

    public int getStarFillNum() {
        return this.f14162c;
    }

    public float getStarImageHeight() {
        return this.uj;
    }

    public float getStarImagePadding() {
        return this.f14163n;
    }

    public float getStarImageWidth() {
        return this.ve;
    }

    public void setStarEmptyNum(int i10) {
        this.tt = i10;
    }

    public void setStarFillNum(int i10) {
        this.f14162c = i10;
    }

    public void setStarImageHeight(float f10) {
        this.uj = f10;
    }

    public void setStarImagePadding(float f10) {
        this.f14163n = f10;
    }

    public void setStarImageWidth(float f10) {
        this.ve = f10;
    }

    private void c(Context context) {
        setOrientation(0);
        this.ve = c(context, 15.0f);
        this.uj = c(context, 15.0f);
        this.f14163n = c(context, 5.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        z.c(getContext(), "tt_star_empty_bg", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.ff.TTRatingBar.2
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar.this.getContext().getResources(), bitmap);
                for (int i10 = 0; i10 < TTRatingBar.this.getStarEmptyNum(); i10++) {
                    ImageView starImageView = TTRatingBar.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar.this.addView(starImageView);
                }
            }
        }, 320);
    }

    private int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void c() {
        removeAllViews();
        z.c(getContext(), "tt_star_full_bg", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.ff.TTRatingBar.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar.this.getContext().getResources(), bitmap);
                for (int i10 = 0; i10 < TTRatingBar.this.getStarFillNum(); i10++) {
                    ImageView starImageView = TTRatingBar.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar.this.addView(starImageView);
                }
                TTRatingBar.this.tt();
            }
        }, 320);
    }
}
