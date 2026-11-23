package com.byazt.tm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.byazt.aq.x;
import com.byazt.nr.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE})
public class DynamicTimeOuterRewardFullSkip extends DynamicBaseWidgetImp implements com.byazt.kn.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20320c;

    public DynamicTimeOuterRewardFullSkip(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.f20320c = dynamicRootView.getRenderRequest().z();
        }
        this.sp = this.f20275x;
        ImageView imageView = new ImageView(context);
        this.f20276z = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.f20276z, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().p()) {
            return;
        }
        this.f20276z.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.byazt.kn.ve
    public void c(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        int i11 = 0;
        if (!z10 && !z11) {
            i11 = 8;
        }
        setVisibility(i11);
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_CROP);
        Drawable drawableC = com.byazt.or.uj.c(getContext(), this.f20273t);
        if (drawableC != null) {
            ((ImageView) this.f20276z).setBackground(drawableC);
        }
        if (this.f20320c) {
            z.c(getContext(), "tt_close_btn", (ImageView) this.f20276z, 320);
        } else {
            z.c(getContext(), "tt_skip_btn", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.tm.DynamicTimeOuterRewardFullSkip.1
                @Override // com.byazt.qr.c
                public void c(Bitmap bitmap) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(DynamicTimeOuterRewardFullSkip.this.getContext().getResources(), bitmap);
                    bitmapDrawable.setAutoMirrored(true);
                    ((ImageView) DynamicTimeOuterRewardFullSkip.this.f20276z).setImageDrawable(bitmapDrawable);
                }
            }, 320);
        }
        setVisibility(8);
        return true;
    }
}
