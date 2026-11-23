package com.byazt.dqg;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.ete.ic;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.EmptyView;
import com.byazt.omf.d;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.sl;
import com.byazt.rpt.FullRewardExpressView;
import com.byazt.xl.yp;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ic f13108a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.pop.ve f13109c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FullRewardExpressView f13110i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TTBaseVideoActivity f13111n;
    public String sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewGroup f13112x;
    public boolean tt = false;
    public boolean ve = false;
    public boolean uj = false;

    public n(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f13111n = tTBaseVideoActivity;
    }

    public boolean a() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        return (fullRewardExpressView == null || fullRewardExpressView.rl()) ? false : true;
    }

    public byte da() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getShowDLFactorsEventParams();
        }
        return (byte) -1;
    }

    public int i() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getDynamicShowType();
        }
        return 0;
    }

    public void n() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.nu();
        }
    }

    public boolean sl() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null) {
            return true;
        }
        return fullRewardExpressView.u();
    }

    public void sp() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.z();
    }

    public yp t() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null) {
            return null;
        }
        return fullRewardExpressView.getRenderResult();
    }

    public boolean tt() {
        return this.tt;
    }

    public FullRewardExpressView u() {
        return this.f13110i;
    }

    public void uj() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.t();
        }
    }

    public boolean ve() {
        return this.ve;
    }

    public void x() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.m();
            this.f13110i.nu();
        }
    }

    public void yp() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null && fullRewardExpressView.getJsObject() != null) {
            this.f13110i.getJsObject().sp(true);
        }
        c("isVerifyReward", (JSONObject) null);
    }

    public void z() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.rh();
        }
    }

    public void c(ic icVar, com.byazt.dj.tt ttVar, String str, boolean z10, String str2) {
        if (this.uj) {
            return;
        }
        this.uj = true;
        this.f13108a = icVar;
        this.sp = str;
        this.f13110i = new FullRewardExpressView(this.f13111n, icVar, ttVar, str, z10, str2);
        FrameLayout expressFrameContainer = this.f13111n.or().getExpressFrameContainer();
        this.f13112x = expressFrameContainer;
        expressFrameContainer.addView(this.f13110i, new FrameLayout.LayoutParams(-2, -1));
        this.f13110i.setEasyPlayableContainer(this.f13111n.or().getEasyPlayableContainer());
    }

    public void tt(boolean z10) {
        this.ve = z10;
    }

    public void ve(boolean z10) {
        ViewGroup viewGroup = this.f13112x;
        if (viewGroup != null) {
            viewGroup.setVisibility(z10 ? 0 : 8);
        }
    }

    public void uj(boolean z10) {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.ve(z10);
        }
    }

    public void c(CharSequence charSequence, int i10, int i11, boolean z10) {
        if (this.f13110i == null || !a()) {
            return;
        }
        this.f13110i.c(charSequence, i10, i11, z10);
    }

    public FrameLayout c() {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getVideoFrameLayout();
        }
        return null;
    }

    public void c(boolean z10) {
        this.tt = z10;
    }

    public void c(com.byazt.ouz.a aVar, com.byazt.ouz.n nVar) {
        ic icVar;
        if (this.f13110i == null || (icVar = this.f13108a) == null) {
            return;
        }
        com.byazt.pop.ve veVarC = c(icVar);
        this.f13109c = veVarC;
        if (veVarC instanceof com.byazt.wz.c) {
            ((com.byazt.wz.c) veVarC).x().c(new com.byazt.av.c() { // from class: com.byazt.dqg.n.1
                @Override // com.byazt.av.c
                public void c() {
                    n.this.f13111n.uj(true);
                }

                @Override // com.byazt.av.c
                public void tt() {
                    n.this.f13111n.uj(false);
                }

                @Override // com.byazt.av.c
                public void ve() {
                }
            });
        }
        com.byazt.pop.ve veVar = this.f13109c;
        if (veVar != null) {
            veVar.tt();
            if (this.f13110i.getContext() != null && (this.f13110i.getContext() instanceof Activity)) {
                this.f13109c.c((Activity) this.f13110i.getContext(), false);
            }
        }
        com.byazt.ddx.uj.c(this.f13108a);
        EmptyView emptyViewC = c((ViewGroup) this.f13110i);
        if (emptyViewC == null) {
            ic icVar2 = this.f13108a;
            EmptyView emptyView = new EmptyView(this.f13111n, this.f13110i, icVar2 != null ? icVar2.m17if() : 1000);
            emptyView.c(this.f13108a, this.sp);
            this.f13110i.addView(emptyView);
            emptyViewC = emptyView;
        }
        emptyViewC.setNeedCheckingShow(false);
        emptyViewC.setCallback(new EmptyView.c() { // from class: com.byazt.dqg.n.2
            @Override // com.byazt.omf.EmptyView.c
            public void c(View view, Map<String, Object> map) {
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                com.byazt.pop.ve veVar2 = n.this.f13109c;
                if (veVar2 != null) {
                    veVar2.ve();
                }
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z10) {
                com.byazt.pop.ve veVar2 = n.this.f13109c;
                if (veVar2 == null || !z10) {
                    return;
                }
                veVar2.tt();
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                com.byazt.pop.ve veVar2 = n.this.f13109c;
                if (veVar2 != null) {
                    veVar2.c();
                }
            }
        });
        aVar.c(this.f13110i);
        ((com.byazt.nat.c) aVar.c(com.byazt.nat.c.class)).c(this.f13109c);
        this.f13110i.setClickListener(aVar);
        nVar.c(this.f13110i);
        ((com.byazt.nat.c) nVar.c(com.byazt.nat.c.class)).c(this.f13109c);
        this.f13110i.setClickCreativeListener(nVar);
        emptyViewC.setNeedCheckingShow(false);
        c(this.f13109c, this.f13110i);
    }

    private void c(com.byazt.pop.ve veVar, NativeExpressView nativeExpressView) {
        if (veVar == null || nativeExpressView == null) {
            return;
        }
        ic icVar = this.f13108a;
        final String strUj = icVar != null ? icVar.uj() : "";
        veVar.c(new com.byazt.pop.c() { // from class: com.byazt.dqg.n.3
            @Override // com.byazt.pop.c
            public void c() {
                n.this.f13111n.c("点击开始下载");
                com.byazt.nt.c.c(strUj);
            }

            @Override // com.byazt.pop.c
            public void tt(long j10, long j11, String str, String str2) {
                n.this.f13111n.c("下载暂停");
                com.byazt.nt.c.tt(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void ve(long j10, long j11, String str, String str2) {
                n.this.f13111n.c("下载失败");
                com.byazt.nt.c.ve(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void c(long j10, long j11, String str, String str2) {
                if (j10 > 0) {
                    n.this.f13111n.c("已下载" + ((int) ((100 * j11) / j10)) + "%");
                }
                com.byazt.nt.c.c(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void c(long j10, String str, String str2) {
                n.this.f13111n.c("点击安装");
                com.byazt.nt.c.tt(strUj);
            }

            @Override // com.byazt.pop.c
            public void c(String str, String str2) {
                n.this.f13111n.c("点击打开");
                com.byazt.nt.c.ve(strUj);
            }
        });
    }

    private com.byazt.pop.ve c(ic icVar) {
        if (icVar.i() == 4) {
            return com.byazt.yih.x.c(this.f13111n, icVar, this.sp);
        }
        return null;
    }

    private EmptyView c(ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    public void c(sl slVar) {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressVideoListenerProxy(slVar);
    }

    public void c(com.byazt.ouz.c cVar) {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressInteractionListener(cVar);
    }

    public void c(com.byazt.dh.ve veVar) {
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.setVideoController(veVar);
        }
    }

    public void c(String str, JSONObject jSONObject) {
        d jsObject;
        FullRewardExpressView fullRewardExpressView = this.f13110i;
        if (fullRewardExpressView == null || (jsObject = fullRewardExpressView.getJsObject()) == null || this.f13111n.isFinishing()) {
            return;
        }
        jsObject.tt(str, jSONObject);
    }

    public void c(com.byazt.ua.c.InterfaceC0445c interfaceC0445c) {
        com.byazt.pop.ve veVar = this.f13109c;
        if (veVar != null) {
            veVar.c(interfaceC0445c);
        }
    }

    public void c(com.byazt.biq.ve veVar) {
        if (this.f13110i != null) {
            this.f13110i.c((int) (veVar.c() / 1000), veVar.n(), veVar.tt(), veVar.uj());
        }
    }
}
