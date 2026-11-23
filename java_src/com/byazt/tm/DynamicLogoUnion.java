package com.byazt.tm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import com.byazt.aq.x;
import com.byazt.nr.z;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2402})
public class DynamicLogoUnion extends DynamicBaseWidgetImp {
    public DynamicLogoUnion(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        ImageView imageView = new ImageView(context);
        this.f20276z = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        if (com.byazt.sr.uj.c()) {
            this.f20275x = Math.max(dynamicRootView.getLogoUnionHeight(), this.f20275x);
        }
        addView(this.f20276z, getWidgetLayoutParams());
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        if (com.byazt.sr.uj.c()) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        z.c(getContext(), "tt_ad_logo", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.tm.DynamicLogoUnion.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                ((ImageView) DynamicLogoUnion.this.f20276z).setImageDrawable(new BitmapDrawable(DynamicLogoUnion.this.getContext().getResources(), bitmap));
                DynamicLogoUnion dynamicLogoUnion = DynamicLogoUnion.this;
                ((ImageView) dynamicLogoUnion.f20276z).setColorFilter(dynamicLogoUnion.f20273t.sp(), PorterDuff.Mode.SRC_IN);
            }
        }, 320);
        return true;
    }
}
