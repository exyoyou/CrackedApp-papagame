package com.byazt.fcd;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.pf;
import com.byazt.dna.u;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.to;
import com.byazt.ete.xd;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 42})
public class i extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f14091d;
    public boolean eo;

    public i(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
        this.f14091d = false;
        this.eo = false;
        this.eo = com.byazt.glq.tt.c(icVar) == 1;
    }

    public static int c(ic icVar) {
        return 9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f14091d) {
            return;
        }
        this.f14091d = true;
        i(false);
        this.f14070c.finish();
    }

    @Override // com.byazt.fcd.c
    public boolean a() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return c(this.tt);
    }

    @Override // com.byazt.fcd.c
    public View i() {
        FrameLayout frameLayout = new FrameLayout(this.f14070c);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public void s() {
    }

    @Override // com.byazt.fcd.c, com.byazt.fcd.tt
    public void ve() {
        com.byazt.dqg.n nVar;
        this.f14070c.tt(true, true);
        this.f14074i.ve(true);
        this.f14072da.ve(false);
        this.rh.c(false);
        int displayDpi = ((u) com.byazt.ut.uj.getService("device_info_new")).getDisplayDpi();
        com.byazt.ete.i.c cVarTt = new com.byazt.ete.i.c().a(-1.0f).n(-1.0f).uj(-1.0f).ve(-1.0f).tt(-1L).c(-1L).uj(-1).n(-1).a(-1024).ve(com.byazt.omf.x.m().tt() ? 1 : 2).tt(displayDpi).c(pf.a(gt.getContext())).tt(pf.sp(gt.getContext()));
        ic icVar = this.tt;
        if (icVar != null && icVar.by() == 1 && (nVar = this.f14072da) != null) {
            cVarTt.c(nVar.a() ? this.f14072da.da() : (byte) 0);
        }
        cVarTt.c(com.byazt.wz.x.tt(this.tt));
        com.byazt.ddx.uj.c("click", this.tt, cVarTt.c(), this.f14078t, true, this.f14070c.ic(), -1, false, false);
    }

    public static boolean c(Context context, ic icVar) {
        long jSp;
        if (!to.uj(icVar)) {
            return false;
        }
        if (bx.c(icVar)) {
            jSp = ((long) bx.tt(icVar)) * 1000;
        } else {
            jSp = xd.z(icVar) != null ? (long) (xd.sp(icVar) * 1000.0d) : 0L;
        }
        long jMin = Math.min(kp.c(), (long) (jSp * (icVar.cs() / 100.0f)));
        HashMap map = new HashMap(3);
        map.put("reward_countdown", Long.valueOf(jMin));
        map.put("event_tag", "rewarded_video");
        map.put("reward_live_scene", Integer.valueOf(com.byazt.glq.tt.c(icVar)));
        return com.byazt.apd.tt.c().c(context, icVar, (Map<String, Object>) map) == 0;
    }

    private void i(final boolean z10) {
        if (this.f14074i instanceof com.byazt.dqg.i) {
            com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.fcd.i.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.dqg.tt ttVar = i.this.f14074i;
                    if (ttVar == null) {
                        return;
                    }
                    com.byazt.dqg.i iVar = (com.byazt.dqg.i) ttVar;
                    if (z10) {
                        iVar.tt();
                    } else {
                        iVar.ve();
                    }
                }
            });
        }
    }

    @Override // com.byazt.fcd.c
    public com.byazt.dqg.tt c(boolean z10) {
        com.byazt.dqg.i iVar = new com.byazt.dqg.i(this.f14070c, this.tt, z10);
        this.f14074i = iVar;
        return iVar;
    }

    @Override // com.byazt.fcd.c
    public void c(int i10, int i11, Intent intent) {
        super.c(i10, i11, intent);
        if (i10 != 1) {
            this.f14070c.finish();
            return;
        }
        if (intent == null || intent.getExtras() == null) {
            this.f14070c.finish();
            return;
        }
        if (intent.getExtras().getLong("csj.reward_countdown_duration_ms") <= 0) {
            int i12 = intent.getExtras().getInt("csj.reward_auth_status", 0);
            if (this.eo && i12 == 1) {
                this.f14070c.finish();
                return;
            }
            m.uj("rewardAuthFlag", "verify rew....");
            this.f14070c.uj(0);
            i(true);
            this.f14070c.nb().postDelayed(new Runnable() { // from class: com.byazt.fcd.i.1
                @Override // java.lang.Runnable
                public void run() {
                    i.this.j();
                }
            }, 2000L);
            return;
        }
        this.f14070c.finish();
    }

    @Override // com.byazt.fcd.c
    public void c(int i10) {
        super.c(i10);
        if (i10 == 0) {
            j();
        }
    }
}
