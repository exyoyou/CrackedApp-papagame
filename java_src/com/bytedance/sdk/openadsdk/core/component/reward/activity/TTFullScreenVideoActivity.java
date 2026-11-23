package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.os.Bundle;
import com.byazt.cf.tt;
import com.byazt.ete.kp;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.gt;
import com.byazt.rob.c;

/* JADX INFO: loaded from: classes9.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void bm() {
        String str;
        super.bm();
        if (kp.nu(this.qp) || this.f16609zb.d()) {
            return;
        }
        if (this.cu.eo()) {
            this.eo.c(false, null, null, true, true);
            return;
        }
        int iH = ((int) this.cu.h()) / 1000;
        String str2 = this.bx.a(false) + "s";
        boolean z10 = iH >= this.bx.lo();
        if (z10 || !gt.tt().n(String.valueOf(this.f16592ic))) {
            str = null;
        } else {
            str = (this.bx.lo() - iH) + "s后可跳过";
        }
        this.eo.c(false, str2, str, z10, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void p() {
        if (this.ve.getAndSet(true)) {
            return;
        }
        c cVar = this.to;
        if (cVar == null || !cVar.ve()) {
            c("onAdClose", (Bundle) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void ve(boolean z10) {
        byte b10 = -1;
        if (this.gu) {
            if (gt.tt().hz() == 1) {
                b10 = 2000;
            }
        } else if (z10) {
            b10 = 0;
        }
        if (b10 < 0 || this.gt.get()) {
            return;
        }
        if (b10 != 0) {
            this.tt.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TTFullScreenVideoActivity.this.gt.getAndSet(true)) {
                        return;
                    }
                    tt.c().c(TTFullScreenVideoActivity.this.qp, String.valueOf(TTFullScreenVideoActivity.this.f16592ic));
                }
            }, 2000L);
        } else {
            if (this.gt.getAndSet(true)) {
                return;
            }
            tt.c().c(this.qp, String.valueOf(this.f16592ic));
        }
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public boolean yv() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void c(String str, Bundle bundle) {
        com.byazt.yi.c.c(1, this.f16590hd, str, bundle);
    }
}
