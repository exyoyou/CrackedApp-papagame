package com.byazt.ouz;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 2482})
public class FullRewardExpressBackupView extends BackupView {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f18373u;
    public NativeExpressView yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public FrameLayout f18374z;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.f18362c = context;
    }

    private void tt() {
        this.f18361a = pf.ve(this.f18362c, this.yp.getExpectExpressWidth());
        this.sp = pf.ve(this.f18362c, this.yp.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f18361a, this.sp);
        }
        layoutParams.width = this.f18361a;
        layoutParams.height = this.sp;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        ve();
    }

    private void ve() {
        FrameLayout frameLayout = new FrameLayout(this.f18362c);
        this.f18373u = frameLayout;
        frameLayout.setId(2114387734);
        addView(this.f18373u);
        FrameLayout frameLayout2 = (FrameLayout) this.f18373u.findViewById(2114387734);
        this.f18374z = frameLayout2;
        frameLayout2.removeAllViews();
    }

    public void c(ic icVar, NativeExpressView nativeExpressView) {
        setBackgroundColor(-1);
        this.tt = icVar;
        this.yp = nativeExpressView;
        if (nb.sl(icVar) == 7) {
            this.f18365n = "rewarded_video";
        } else {
            this.f18365n = "fullscreen_interstitial_ad";
        }
        tt();
        this.yp.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public FrameLayout getVideoContainer() {
        return this.f18374z;
    }

    @Override // com.byazt.ouz.BackupView
    public void c(View view, int i10, com.byazt.ete.gr grVar) {
        NativeExpressView nativeExpressView = this.yp;
        if (nativeExpressView != null) {
            nativeExpressView.c(view, i10, grVar, -1);
        }
    }
}
