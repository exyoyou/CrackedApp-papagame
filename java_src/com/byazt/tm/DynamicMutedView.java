package com.byazt.tm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.byazt.aq.x;
import com.byazt.nr.z;
import com.byazt.or.i;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1104})
public class DynamicMutedView extends DynamicBaseWidgetImp implements com.byazt.kn.tt {
    public DynamicMutedView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        ImageView imageView = new ImageView(context);
        this.f20276z = imageView;
        imageView.setTag(5);
        addView(this.f20276z, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().p()) {
            return;
        }
        this.f20276z.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.byazt.kn.tt
    public void setSoundMute(boolean z10) {
        z.c(getContext(), z10 ? "tt_mute" : "tt_unmute", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.tm.DynamicMutedView.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                ((ImageView) DynamicMutedView.this.f20276z).setImageDrawable(new BitmapDrawable(DynamicMutedView.this.getContext().getResources(), bitmap));
                if (((ImageView) DynamicMutedView.this.f20276z).getDrawable() != null) {
                    ((ImageView) DynamicMutedView.this.f20276z).getDrawable().setAutoMirrored(true);
                }
            }
        }, 320);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public boolean uj() {
        return true;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        if (com.byazt.sr.uj.c()) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.yp.tt);
        if (!com.byazt.sr.uj.c()) {
            ((ImageView) this.f20276z).setBackgroundDrawable(i.c(0, Integer.valueOf(this.f20273t.md()), new int[]{this.f20275x / 2}, null, null, null));
            return true;
        }
        Drawable drawableC = com.byazt.or.uj.c(getContext(), this.f20273t);
        if (drawableC == null) {
            return true;
        }
        ((ImageView) this.f20276z).setBackground(drawableC);
        return true;
    }
}
