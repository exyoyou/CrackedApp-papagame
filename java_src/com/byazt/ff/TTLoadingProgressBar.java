package com.byazt.ff;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 2476})
public class TTLoadingProgressBar extends LinearLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f14161c;
    public ImageView tt;
    public View ve;

    private int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public View getProgressBar() {
        return this.f14161c;
    }

    public ImageView getProgressIcon() {
        return this.tt;
    }

    public void setProgress(int i10) {
        if (this.tt.getVisibility() == 0 && i10 > 3) {
            ((LinearLayout.LayoutParams) this.tt.getLayoutParams()).leftMargin = c(this.f14161c.getContext(), -7.0f);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f14161c.getLayoutParams();
        float f10 = i10 / 100.0f;
        layoutParams.weight = f10;
        this.f14161c.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.ve.getLayoutParams();
        layoutParams2.weight = 1.0f - f10;
        this.ve.setLayoutParams(layoutParams2);
        requestLayout();
    }
}
