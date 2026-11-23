package com.byazt.qzm;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.aas.pf;
import com.byazt.bzd.t;
import com.byazt.dh.ve;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.jzl.a;
import com.byazt.nr.m;
import com.byazt.sa.uj;
import com.byazt.un.NativeVideoTsView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 694, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CONFIG_OPTIMIZE})
public class NativeVideoView extends NativeVideoTsView implements ve.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19389c;
    public boolean qy;
    public uj rl;
    public c tt;

    public NativeVideoView(Context context) {
        super(context);
        ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.c(true);
        }
        this.gt.set(true);
        setNeedNativeVideoPlayBtnVisible(false);
        setEnableBlur(true);
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void H_() {
        super.H_();
    }

    @Override // com.byazt.un.NativeVideoTsView, com.byazt.un.uj.c
    public void I_() {
        pf.c((View) this.f20749da, 8);
        super.I_();
    }

    public void S_() {
        c cVar = this.tt;
        if (cVar != null) {
            cVar.x();
            pf.c((View) this.f20749da, 8);
        }
    }

    @Override // com.byazt.un.NativeVideoTsView
    public ve c(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        c cVar = new c(context, viewGroup, icVar, str, z10, z11, z12);
        this.tt = cVar;
        return cVar;
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void n() {
        super.n();
        pf.c((View) this.f20749da, 0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.rl;
        if (ujVar == null) {
            super.onMeasure(i10, i11);
        } else {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        }
    }

    @Override // com.byazt.un.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (!this.qy && i10 == 8) {
            n();
        }
    }

    public void setExtraMap(Map<String, Object> map) {
        ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.tt(map);
        }
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void setIsAutoPlay(boolean z10) {
        super.setIsAutoPlay(z10);
        pf.c((View) this.f20749da, 0);
    }

    public void setLp(boolean z10) {
        this.qy = z10;
    }

    public void setPlayerType(int i10) {
        this.f19389c = i10;
    }

    @Override // com.byazt.un.NativeVideoTsView, com.byazt.dh.ve.c
    public void tt(long j10, int i10) {
        super.tt(j10, i10);
        pf.c((View) this.f20749da, 0);
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void uj() {
        ve veVar = this.f20756n;
        if (veVar == null) {
            H_();
        } else if ((veVar instanceof com.byazt.un.uj) && !nu()) {
            ((com.byazt.un.uj) this.f20756n).sv();
        }
        if (this.f20756n == null || !this.gt.get()) {
            return;
        }
        this.gt.set(false);
        sp();
        if (!z()) {
            if (this.f20756n.gt()) {
                pf.c((View) this.f20749da, 0);
                return;
            }
            m.c("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
            t();
            pf.c((View) this.f20749da, 0);
            return;
        }
        pf.c((View) this.f20749da, 0);
        ImageView imageView = this.f20760t;
        if (imageView != null) {
            pf.c((View) imageView, 8);
        }
        if (xd.z(this.uj) == null) {
            m.uj("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        a aVarC = xd.c(4, this.uj);
        aVarC.setCid(this.uj.uj());
        aVarC.setWidth(this.f20745a.getWidth());
        aVarC.setHeight(this.f20745a.getHeight());
        aVarC.setLogExtra(this.uj.w_());
        this.uj.q(this.f19389c);
        aVarC.setPlayerType(this.f19389c);
        aVarC.setAudio(t.c(this.uj));
        aVarC.setCurrent(this.f20756n.sl());
        aVarC.setQuiet(this.f20756n.my());
        ((com.byazt.un.uj) this.f20756n).uj(this.f19389c);
        ((com.byazt.un.uj) this.f20756n).tt(this.uj);
        c(aVarC);
        this.f20756n.ve(false);
    }

    public void x() {
        c cVar = this.tt;
        if (cVar != null) {
            cVar.a();
        }
    }

    public void c(boolean z10, boolean z11) {
        t();
        pf.c((View) this.f20749da, 0);
        pf.c((View) this.f20761u, z10 ? 0 : 8);
        pf.c((View) this.sl, z11 ? 0 : 8);
    }

    @Override // com.byazt.un.NativeVideoTsView
    public boolean c(long j10, boolean z10, boolean z11) {
        this.f20745a.setVisibility(0);
        if (this.f20756n == null) {
            this.f20756n = new com.byazt.un.uj(getContext(), this.sp, this.uj, this.f20764z, false, false);
        }
        if (u() || this.f20752i) {
            c(this.ve, 25, xd.tt(this.uj));
        }
        return false;
    }

    public void c(uj ujVar) {
        this.rl = ujVar;
    }
}
