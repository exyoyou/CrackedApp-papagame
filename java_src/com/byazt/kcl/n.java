package com.byazt.kcl;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.byazt.dn.UgenBanner;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.ff.TopProxyLayout;
import com.byazt.ge.RewardBrowserMixTopLayoutImpl;
import com.byazt.ge.TopLayoutImpl;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.hkv.tt f16133a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f16134c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.ge.n f16135i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public UgenBanner f16136n;
    public com.byazt.ge.a sp;
    public ic tt;
    public TextView uj;
    public com.byazt.ge.c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.ge.uj f16137x;

    public n(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f16134c = tTBaseVideoActivity;
    }

    private void x() {
        TopProxyLayout topProxyLayout = (TopProxyLayout) this.f16134c.findViewById(2114387721);
        if (topProxyLayout != null) {
            c(topProxyLayout);
        }
        this.uj = (TextView) this.f16134c.findViewById(2114387801);
        this.f16136n = (UgenBanner) this.f16134c.findViewById(2114387901);
    }

    public void a(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setShowBack(z10);
        }
    }

    public void n(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setShowSound(z10);
        }
    }

    public void sp(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setShowAgain(z10);
        }
    }

    public void tt(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setShowDislike(z10);
        }
    }

    public void uj(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setSoundMute(z10);
        }
    }

    public void ve(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setDislikeLeft(z10);
        }
    }

    public void c(ic icVar, tt ttVar, boolean z10, com.byazt.hkv.tt ttVar2) {
        this.tt = icVar;
        this.f16133a = ttVar2;
        x();
        this.sp = new com.byazt.ge.a(this.f16134c, this.tt, ttVar, this, z10);
        this.f16135i = new com.byazt.ge.n(this.f16134c, this.tt, ttVar, this, z10);
        this.f16137x = new com.byazt.ge.uj(this.f16134c, this.tt, ttVar, this, z10);
        c(1);
    }

    public void a() {
        UgenBanner ugenBanner = this.f16136n;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.c(this.tt, this.f16133a);
    }

    public boolean n() {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            return cVar.getSkipOrCloseVisible();
        }
        return false;
    }

    public void sp() {
        UgenBanner ugenBanner = this.f16136n;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.c();
    }

    public void tt() {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.tt();
        }
    }

    public View uj() {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            return cVar.getCloseButton();
        }
        return null;
    }

    public void ve() {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.ve();
        }
    }

    public void tt(String str) {
        TextView textView = this.uj;
        if (textView != null) {
            textView.setText(str);
            this.uj.setVisibility(0);
            this.uj.postDelayed(new Runnable() { // from class: com.byazt.kcl.n.1
                @Override // java.lang.Runnable
                public void run() {
                    n.this.uj.setVisibility(8);
                }
            }, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View, com.byazt.ge.c] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.byazt.kcl.n] */
    public void c(TopProxyLayout topProxyLayout) {
        TopLayoutImpl topLayoutImplC;
        ?? r10;
        RewardBrowserMixTopLayoutImpl rewardBrowserMixTopLayoutImplC;
        if (my.u(this.tt)) {
            rewardBrowserMixTopLayoutImplC = new RewardBrowserMixTopLayoutImpl(topProxyLayout.getContext()).c(this.tt);
        } else {
            topLayoutImplC = new TopLayoutImpl(topProxyLayout.getContext()).c(this.tt);
        }
        if (r10 != 0) {
            r10 = topLayoutImplC;
            r10 = rewardBrowserMixTopLayoutImplC;
            this.ve = r10;
        } else {
            r10 = topLayoutImplC;
            r10 = rewardBrowserMixTopLayoutImplC;
            m.uj("RewardFullTopProxyManager", "view not implements ITopLayout interface");
        }
        ViewParent parent = topProxyLayout.getParent();
        if (parent instanceof ViewGroup) {
            c(topProxyLayout, r10, (ViewGroup) parent);
        }
    }

    private void c(TopProxyLayout topProxyLayout, View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(topProxyLayout);
        viewGroup.removeViewInLayout(topProxyLayout);
        ViewGroup.LayoutParams layoutParams = topProxyLayout.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    public void c(boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setVisible(z10);
        }
    }

    public void c(boolean z10, String str, String str2, boolean z11, boolean z12) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.c(z10, str, str2, z11, z12);
        }
    }

    public void c(String str, String str2, boolean z10) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.c(str, str2, z10);
        }
    }

    public void c() {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.c();
        }
    }

    public void c(int i10) {
        if (i10 == 2) {
            c(this.f16137x);
        } else if (i10 != 4) {
            c(this.sp);
        } else {
            c(this.f16135i);
        }
    }

    public void c(com.byazt.ge.tt ttVar) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setListener(ttVar);
        }
    }

    public void c(String str) {
        com.byazt.ge.c cVar = this.ve;
        if (cVar != null) {
            cVar.setPlayAgainEntranceText(str);
        }
    }

    public void c(ic icVar) {
        com.byazt.ge.a aVar = this.sp;
        if (aVar != null) {
            aVar.c(icVar);
        }
        com.byazt.ge.uj ujVar = this.f16137x;
        if (ujVar != null) {
            ujVar.c(icVar);
        }
        com.byazt.ge.n nVar = this.f16135i;
        if (nVar != null) {
            nVar.c(icVar);
        }
    }
}
