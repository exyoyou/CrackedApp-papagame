package com.byazt.tm;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aq.x;
import com.sigmob.sdk.archives.tar.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 504})
public class DynamicVideoView extends DynamicBaseWidgetImp implements com.byazt.kn.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f20327c;
    public boolean gt;
    public FrameLayout tt;

    public DynamicVideoView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.gt = false;
        View view = new View(context);
        this.f20276z = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.f20327c = new TextView(context);
        this.tt = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.byazt.or.x.c(context, 40.0f), (int) com.byazt.or.x.c(context, 15.0f));
        layoutParams.gravity = 8388693;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.f20327c.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f20327c.setBackground(gradientDrawable);
        this.f20327c.setTextSize(10.0f);
        this.f20327c.setGravity(17);
        this.f20327c.setTextColor(-1);
        this.f20327c.setVisibility(8);
        if (com.byazt.sr.uj.c()) {
            addView(this.tt, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.f20327c);
        addView(this.f20276z, getWidgetLayoutParams());
        if (!com.byazt.sr.uj.c()) {
            addView(this.tt, getWidgetLayoutParams());
        }
        dynamicRootView.ve = this.tt;
        dynamicRootView.setVideoListener(this);
    }

    private void ve(View view) {
        if (view == this.f20327c || view == ((DynamicBaseWidgetImp) this).my) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.byazt.kn.c.f16304a)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i10 = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 >= viewGroup.getChildCount()) {
                return;
            }
            ve(viewGroup.getChildAt(i10));
            i10++;
        }
    }

    @Override // com.byazt.kn.n
    public void setTimeUpdate(int i10) {
        if (!this.f20274u.da().n().w() || i10 <= 0 || this.gt) {
            this.gt = true;
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                ve(getChildAt(i11));
            }
            this.f20327c.setVisibility(8);
            return;
        }
        String str = (i10 >= 60 ? "0" + (i10 / 60) : "" + e.V) + ":";
        int i12 = i10 % 60;
        this.f20327c.setText(i12 > 9 ? str + i12 : str + "0" + i12);
        this.f20327c.setVisibility(0);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public boolean uj() {
        return true;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        double dN = 0.0d;
        double dUj = 0.0d;
        for (x xVarT = this.f20274u; xVarT != null; xVarT = xVarT.t()) {
            double dA = dUj + ((double) xVarT.a());
            double dSp = dN + ((double) xVarT.sp());
            dUj = dA - ((double) xVarT.uj());
            dN = dSp - ((double) xVarT.n());
        }
        try {
            float f10 = (float) dUj;
            int iC = (int) com.byazt.or.x.c(getContext(), f10);
            int iC2 = (int) com.byazt.or.x.c(getContext(), f10 + this.f20272n);
            if (com.byazt.or.ve.c(getContext())) {
                int dynamicWidth = ((DynamicRoot) this.yp.getChildAt(0)).getDynamicWidth();
                int i10 = dynamicWidth - iC2;
                iC2 = dynamicWidth - iC;
                iC = i10;
            }
            if ("open_ad".equals(this.yp.getRenderRequest().a())) {
                this.yp.ve = this.tt;
            } else {
                float f11 = (float) dN;
                ((DynamicRoot) this.yp.getChildAt(0)).f20303c.update(iC, (int) com.byazt.or.x.c(getContext(), f11), iC2, (int) com.byazt.or.x.c(getContext(), f11 + this.f20267a));
            }
        } catch (Exception unused) {
        }
        this.yp.c(dUj, dN, this.f20272n, this.f20267a, this.f20273t.z());
        return true;
    }
}
