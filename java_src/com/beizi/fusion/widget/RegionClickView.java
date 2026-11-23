package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.au;

/* JADX INFO: loaded from: classes6.dex */
public class RegionClickView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    GradientDrawable f10822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f10823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f10824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f10825d;

    public RegionClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10824c = false;
        init(context);
    }

    private void a(Context context, int i10) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f10822a = gradientDrawable;
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        if (i10 == 1) {
            this.f10822a.setStroke(1, Color.parseColor("#E8E8E8"));
        }
        this.f10822a.setCornerRadius(au.a(context, 30.0f));
        setBackgroundDrawable(this.f10822a);
    }

    public void init(Context context) {
        if (this.f10824c) {
            return;
        }
        this.f10824c = true;
        a(context, 1);
        TextView textView = new TextView(context);
        this.f10823b = textView;
        textView.setLines(1);
        this.f10823b.setTextSize(2, 18.0f);
        this.f10823b.setTextColor(Color.parseColor("#949494"));
        this.f10823b.setText("点击跳转详情页或第三方应用     >");
        this.f10823b.setGravity(17);
        setGravity(17);
        setOrientation(1);
        addView(this.f10823b);
    }

    public void setBackGroundAlpha(double d10) {
        GradientDrawable gradientDrawable = this.f10822a;
        if (gradientDrawable == null || d10 <= 0.0d) {
            return;
        }
        gradientDrawable.setAlpha((int) (d10 * 255.0d));
    }

    public void setBackgroundColor(String str) {
        GradientDrawable gradientDrawable = this.f10822a;
        if (gradientDrawable == null || str == null) {
            return;
        }
        try {
            gradientDrawable.setColor(Color.parseColor(str));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setDownloadApp(Boolean bool) {
        this.f10825d = bool;
    }

    public void setRegionalClickViewBean(AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean) {
        String downloadTitle;
        if (regionalClickViewBean == null) {
            return;
        }
        if (this.f10825d.booleanValue()) {
            downloadTitle = regionalClickViewBean.getDownloadTitle();
            if (TextUtils.isEmpty(downloadTitle)) {
                downloadTitle = "点击下载应用";
            }
        } else {
            downloadTitle = regionalClickViewBean.getTitle();
        }
        setTitle(downloadTitle);
        setTitleColor(regionalClickViewBean.getTitleColor());
        setBackGroundAlpha(regionalClickViewBean.getBackgroundAlpha());
        setBackgroundColor(regionalClickViewBean.getBackgroundColor());
    }

    public void setTitle(String str) {
        TextView textView = this.f10823b;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setText(str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setTitleColor(String str) {
        TextView textView = this.f10823b;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setTextColor(Color.parseColor(str));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public RegionClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10824c = false;
        init(context);
    }

    public RegionClickView(Context context) {
        super(context);
        this.f10824c = false;
        init(context);
    }
}
