package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.byazt.aq.x;
import com.byazt.du.sl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1373})
public class DynamicLogoAd extends DynamicBaseWidgetImp {
    public DynamicLogoAd(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        TextView textView = new TextView(context);
        this.f20276z = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.f20276z, getWidgetLayoutParams());
    }

    private boolean i() {
        if (com.byazt.sr.uj.c()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.f20273t.tt) && this.f20273t.tt.contains("adx:")) || sl.tt();
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        this.f20276z.setTextAlignment(this.f20273t.x());
        ((TextView) this.f20276z).setTextColor(this.f20273t.sp());
        ((TextView) this.f20276z).setTextSize(this.f20273t.n());
        if (com.byazt.sr.uj.c()) {
            ((TextView) this.f20276z).setIncludeFontPadding(false);
            ((TextView) this.f20276z).setTextSize(Math.min(((com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), this.f20275x) - this.f20273t.tt()) - this.f20273t.c()) - 0.5f, this.f20273t.n()));
            ((TextView) this.f20276z).setText("AD");
            return true;
        }
        if (!i()) {
            ((TextView) this.f20276z).setText("广告");
            return true;
        }
        if (sl.tt()) {
            ((TextView) this.f20276z).setText(sl.c());
            return true;
        }
        ((TextView) this.f20276z).setText(sl.c(this.f20273t.tt));
        return true;
    }
}
