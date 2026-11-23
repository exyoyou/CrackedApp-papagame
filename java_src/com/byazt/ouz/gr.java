package com.byazt.ouz;

import android.content.Context;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 196})
public class gr extends zm {
    public gr(Context context, ic icVar, com.byazt.dj.tt ttVar, int i10) {
        super(context, icVar, ttVar, i10);
    }

    @Override // com.byazt.ouz.zm, com.byazt.ouz.gu
    public void initExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        this.uj = "draw_ad";
        NativeExpressDrawVideoView nativeExpressDrawVideoView = new NativeExpressDrawVideoView(context, icVar, ttVar, "draw_ad");
        ((gu) this).f18442c = nativeExpressDrawVideoView;
        c(nativeExpressDrawVideoView, this.ve);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setCanInterruptVideoPlay(boolean z10) {
        NativeExpressView nativeExpressView = ((gu) this).f18442c;
        if (nativeExpressView != null) {
            ((NativeExpressVideoView) nativeExpressView).setCanInterruptVideoPlay(z10);
        }
    }
}
