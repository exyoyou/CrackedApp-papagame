package com.byazt.oq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.du.sl;
import com.byazt.nr.z;
import com.byazt.or.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1011})
public class TTRatingBar2 extends FrameLayout {
    public static final int sp = (sl.tt("", 0.0f, true)[1] / 2) + 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f18325x = (sl.tt("", 0.0f, true)[1] / 2) + 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f18326a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f18327c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public double f18328n;
    public LinearLayout tt;
    public float uj;
    public float ve;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18327c = new LinearLayout(getContext());
        this.tt = new LinearLayout(getContext());
        this.f18327c.setOrientation(0);
        this.f18327c.setGravity(GravityCompat.START);
        this.tt.setOrientation(0);
        this.tt.setGravity(GravityCompat.START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.ve, (int) this.uj));
        imageView.setPadding(1, sp, 1, f18325x);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f18327c.measure(i10, i11);
        double d10 = this.f18328n;
        float f10 = this.ve;
        this.tt.measure(View.MeasureSpec.makeMeasureSpec((int) (((double) ((((int) d10) * f10) + 1.0f)) + (((double) (f10 - 2.0f)) * (d10 - ((double) ((int) d10))))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f18327c.getMeasuredHeight(), 1073741824));
        if (this.f18326a > 0.0f) {
            LinearLayout linearLayout = this.f18327c;
            linearLayout.setPadding(0, ((int) (linearLayout.getMeasuredHeight() - this.f18326a)) / 2, 0, 0);
            this.tt.setPadding(0, ((int) (this.f18327c.getMeasuredHeight() - this.f18326a)) / 2, 0, 0);
        }
    }

    public void c(double d10, final int i10, int i11, int i12) {
        float f10 = i11;
        this.ve = (int) x.ve(getContext(), f10);
        this.uj = (int) x.ve(getContext(), f10);
        this.f18328n = d10;
        this.f18326a = i12;
        removeAllViews();
        z.c(getContext(), "tt_star", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.oq.TTRatingBar2.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i13 = 0; i13 < 5; i13++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.tt.addView(starImageView);
                }
            }
        }, 320);
        z.c(getContext(), "tt_star_thick", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.oq.TTRatingBar2.2
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i13 = 0; i13 < 5; i13++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.f18327c.addView(starImageView);
                }
            }
        }, 320);
        addView(this.f18327c);
        addView(this.tt);
        requestLayout();
    }
}
