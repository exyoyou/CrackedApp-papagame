package com.byazt.wdw;

import android.content.Context;
import android.view.View;
import com.byazt.aas.pf;
import com.byazt.ete.da;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_BEGIN_TIME, 20})
public class c extends tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f21480a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ouz.ve f21481n;

    public c() {
    }

    public void c(com.byazt.ouz.ve veVar) {
        this.f21481n = veVar;
    }

    public c(ic icVar, Context context) {
        this.f22932c = icVar;
        this.tt = context;
    }

    public void c(int i10) {
        this.f21480a = i10;
    }

    @Override // com.byazt.zo.c
    public void c(View view) {
        this.uj = view;
    }

    @Override // com.byazt.zo.c
    public int c(Map<String, Object> map, com.byazt.zo.ve veVar) {
        if (this.f21481n == null) {
            return 0;
        }
        if (this.ve == null) {
            this.ve = new da();
        }
        View viewI = this.ve.i();
        int[] iArrC = new int[2];
        int[] iArrVe = new int[2];
        if (viewI != null) {
            iArrC = pf.c(viewI);
            iArrVe = pf.ve(viewI);
        }
        this.f21481n.c(this.uj, this.f21480a, new gr.c().uj(this.ve.nu()).ve(this.ve.rh()).tt(this.ve.my()).c(this.ve.gt()).tt(this.ve.z()).c(this.ve.m()).c(iArrC[0]).tt(iArrC[1]).ve(iArrVe[0]).uj(iArrVe[1]).c(this.ve.x()).c(this.ve.u()).c());
        return 1;
    }
}
