package com.byazt.tm;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aq.sp;
import com.byazt.aq.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2103})
public class DynamicPrivacyView extends DynamicBaseWidgetImp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f20302c;
    public TextView gt;
    public LinearLayout gu;
    public TextView qy;
    public TextView rl;
    public TextView tt;

    public DynamicPrivacyView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.f20302c = new TextView(this.sl);
        this.tt = new TextView(this.sl);
        this.gt = new TextView(this.sl);
        this.gu = new LinearLayout(this.sl);
        this.rl = new TextView(this.sl);
        this.qy = new TextView(this.sl);
        this.f20302c.setTag(9);
        this.tt.setTag(10);
        this.gt.setTag(12);
        this.gu.addView(this.gt);
        this.gu.addView(this.qy);
        this.gu.addView(this.tt);
        this.gu.addView(this.rl);
        this.gu.addView(this.f20302c);
        addView(this.gu, getWidgetLayoutParams());
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.sp, this.f20275x);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public boolean ve() {
        this.f20302c.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.f20302c.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.tt.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.tt.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.gt.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.gt.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        this.gt.setText("功能");
        this.tt.setText("权限");
        this.rl.setText(" | ");
        this.qy.setText(" | ");
        this.f20302c.setText("隐私");
        sp spVar = this.f20273t;
        if (spVar != null) {
            this.gt.setTextColor(spVar.sp());
            this.gt.setTextSize(this.f20273t.n());
            this.tt.setTextColor(this.f20273t.sp());
            this.tt.setTextSize(this.f20273t.n());
            this.rl.setTextColor(this.f20273t.sp());
            this.qy.setTextColor(this.f20273t.sp());
            this.f20302c.setTextColor(this.f20273t.sp());
            this.f20302c.setTextSize(this.f20273t.n());
            return false;
        }
        this.gt.setTextColor(-1);
        this.gt.setTextSize(12.0f);
        this.tt.setTextColor(-1);
        this.tt.setTextSize(12.0f);
        this.rl.setTextColor(-1);
        this.qy.setTextColor(-1);
        this.f20302c.setTextColor(-1);
        this.f20302c.setTextSize(12.0f);
        return false;
    }
}
