package com.byazt.dqg;

import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.msx.FullSwiperView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 72})
public class da extends tt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FullSwiperView f13104m;
    public float yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f13105z;

    public da(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, boolean z10) {
        super(tTBaseVideoActivity, icVar, z10);
    }

    public void a() {
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            fullSwiperView.sp();
        }
    }

    public void c(float[] fArr) {
        this.yp = fArr[0];
        this.f13105z = fArr[1];
    }

    @Override // com.byazt.dqg.tt
    public void da() {
        super.da();
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            fullSwiperView.n();
        }
    }

    public int n() {
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            return fullSwiperView.getCurrentPosition();
        }
        return 0;
    }

    public void tt() {
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            fullSwiperView.tt();
        }
    }

    public void uj() {
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            fullSwiperView.uj();
        }
    }

    public void ve() {
        FullSwiperView fullSwiperView = this.f13104m;
        if (fullSwiperView != null) {
            fullSwiperView.ve();
        }
    }

    @Override // com.byazt.dqg.tt
    public void c() {
        super.c();
        this.sp.setBackgroundColor(0);
        this.f13104m = new FullSwiperView(this.tt);
    }

    public void c(List<com.byazt.msx.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f13104m.c(list).c(this.yp).tt(this.f13105z).c(String.valueOf(nb.t(this.ve))).c();
        this.sp.addView(this.f13104m, new FrameLayout.LayoutParams(-1, -1));
    }
}
