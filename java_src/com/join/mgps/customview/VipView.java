package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class VipView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f66001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f66002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f66003d;

    public VipView(Context context) {
        super(context);
        this.f66001b = context;
    }

    private int a(int number) {
        switch (number) {
            case 2:
                return R.drawable.vip_gold_number_2;
            case 3:
                return R.drawable.vip_gold_number_3;
            case 4:
                return R.drawable.vip_gold_number_4;
            case 5:
                return R.drawable.vip_gold_number_5;
            case 6:
                return R.drawable.vip_gold_number_6;
            case 7:
                return R.drawable.vip_gold_number_7;
            case 8:
                return R.drawable.vip_gold_number_8;
            case 9:
                return R.drawable.vip_gold_number_9;
            default:
                return R.drawable.vip_gold_number_1;
        }
    }

    public void setSize(int w10, int h10) {
        this.f66002c = w10;
        this.f66003d = h10;
    }

    public void setVipData(int vip, int sVip) {
        int i10;
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f66001b);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        int i11 = this.f66002c;
        if (i11 == 0 || (i10 = this.f66003d) == 0) {
            layoutParams.height = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
            layoutParams.width = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        } else {
            layoutParams.height = i10;
            layoutParams.width = i11;
        }
        imageView.setImageResource(17170445);
        if (sVip > 0) {
            setVisibility(0);
            imageView.setVisibility(0);
            imageView.setImageResource(a(sVip));
        } else if (vip > 0) {
            setVisibility(0);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.vip_red_back);
            com.join.mgps.Util.r0.W0(imageView);
        } else {
            setVisibility(8);
            imageView.setVisibility(8);
        }
        invalidate();
    }

    public void setVipDataForUserCenter(int vip, int sVip) {
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f66001b);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        layoutParams.height = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        layoutParams.width = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        if (sVip > 0) {
            imageView.setImageResource(a(sVip));
        } else if (vip > 0) {
            imageView.setImageResource(R.drawable.vip_red_back);
            com.join.mgps.Util.r0.W0(imageView);
        } else {
            imageView.setImageResource(R.drawable.vip_defalut_image);
        }
        invalidate();
    }

    public VipView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66001b = context;
    }

    public VipView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66001b = context;
    }

    public void setVipDataForUserCenter(int vip, int sVip, boolean isDdefalueGod) {
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f66001b);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        layoutParams.height = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        layoutParams.width = this.f66001b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        if (sVip > 0) {
            imageView.setImageResource(a(sVip));
        } else if (vip > 0) {
            imageView.setImageResource(R.drawable.vip_red_back);
        } else {
            imageView.setImageResource(R.drawable.vip_defalut_image_god);
        }
        invalidate();
    }
}
