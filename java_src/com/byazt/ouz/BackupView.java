package com.byazt.ouz;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.un.NativeVideoTsView;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 2140})
public abstract class BackupView extends FrameLayout implements com.byazt.xv.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18361a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f18362c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f18363da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18364i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18365n;
    public String sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.ua.c f18366t;
    public ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public NativeVideoTsView f18367u;
    public Dialog uj;
    public com.byazt.dyf.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18368x;

    public BackupView(Context context) {
        super(context);
        this.f18365n = com.byazt.dyf.tt.AD_TAG_FEED;
        this.f18364i = true;
        this.f18363da = true;
        this.f18366t = new com.byazt.ua.c();
        tt();
    }

    private boolean n() {
        return TextUtils.equals(this.f18365n, "splash_ad") || TextUtils.equals(this.f18365n, "cache_splash_ad");
    }

    private void tt() {
        setTag("tt_express_backup_fl_tag_26");
    }

    private boolean uj() {
        com.byazt.jzl.uj ujVarZ;
        ic icVar = this.tt;
        return (icVar == null || icVar.w() == 1 || (ujVarZ = xd.z(this.tt)) == null || TextUtils.isEmpty(ujVarZ.getVideo_url())) ? false : true;
    }

    private boolean ve() {
        if (n()) {
            return uj();
        }
        ic icVar = this.tt;
        return icVar != null && ic.ve(icVar);
    }

    @Override // com.byazt.xv.c
    public void b_(int i10) {
    }

    public void c() {
        Dialog dialog = this.uj;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.byazt.dyf.tt ttVar = this.ve;
        if (ttVar != null) {
            ttVar.showDislikeDialog();
        } else {
            TTDelegateActivity.c(getContext(), this.tt);
        }
    }

    public abstract void c(View view, int i10, com.byazt.ete.gr grVar);

    public String getDescription() {
        if (TextUtils.isEmpty(this.tt.v_())) {
            return !TextUtils.isEmpty(this.tt.op()) ? this.tt.op() : "";
        }
        return this.tt.v_();
    }

    public ic getMeta() {
        return this.tt;
    }

    public String getNameOrSource() {
        ic icVar = this.tt;
        if (icVar == null) {
            return "";
        }
        if (icVar.z() == null || TextUtils.isEmpty(this.tt.z().ve())) {
            return !TextUtils.isEmpty(this.tt.an()) ? this.tt.an() : "";
        }
        return this.tt.z().ve();
    }

    public float getRealHeight() {
        return pf.uj(this.f18362c, this.sp);
    }

    public float getRealWidth() {
        return pf.uj(this.f18362c, this.f18361a);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    public String getTitle() {
        if (this.tt.z() != null && !TextUtils.isEmpty(this.tt.z().ve())) {
            return this.tt.z().ve();
        }
        if (TextUtils.isEmpty(this.tt.an())) {
            return !TextUtils.isEmpty(this.tt.v_()) ? this.tt.v_() : "";
        }
        return this.tt.an();
    }

    public com.byazt.ua.c getVideoModel() {
        return this.f18366t;
    }

    public void setDislikeInner(com.byazt.nc.sp spVar) {
        if (spVar instanceof com.byazt.dyf.tt) {
            this.ve = (com.byazt.dyf.tt) spVar;
        }
    }

    public void setDislikeOuter(Dialog dialog) {
        this.uj = dialog;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }

    public void setThemeChangeReceiver(ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        if (themeStatusBroadcastReceiver == null) {
            return;
        }
        themeStatusBroadcastReceiver.c(this);
    }

    public void tt(int i10) {
        this.f18363da = this.tt.ab() == 1;
        int iA = com.byazt.omf.gt.tt().a(i10);
        if (3 == iA) {
            this.f18364i = false;
            return;
        }
        if (1 != iA || !com.byazt.nr.rh.uj(this.f18362c)) {
            if (2 == iA) {
                if (com.byazt.nr.rh.n(this.f18362c) || com.byazt.nr.rh.uj(this.f18362c) || com.byazt.nr.rh.a(this.f18362c)) {
                    this.f18364i = true;
                    return;
                }
                return;
            }
            if (5 != iA) {
                return;
            }
            if (!com.byazt.nr.rh.uj(this.f18362c) && !com.byazt.nr.rh.a(this.f18362c)) {
                return;
            }
        }
        this.f18364i = true;
    }

    public void c(View view, boolean z10) {
        final com.byazt.hkv.tt ttVar;
        if (view == null) {
            return;
        }
        if (z10) {
            Context context = this.f18362c;
            ic icVar = this.tt;
            String str = this.f18365n;
            ttVar = new com.byazt.hkv.c(context, icVar, str, nb.uj(str));
        } else {
            Context context2 = this.f18362c;
            ic icVar2 = this.tt;
            String str2 = this.f18365n;
            ttVar = new com.byazt.hkv.tt(context2, icVar2, str2, nb.uj(str2));
        }
        view.setOnTouchListener(ttVar);
        view.setOnClickListener(ttVar);
        ve veVar = new ve() { // from class: com.byazt.ouz.BackupView.1
            @Override // com.byazt.ouz.ve
            public void c(View view2, int i10, com.byazt.ete.gr grVar) {
                try {
                    grVar.c().put("click_extra_map", ((com.byazt.vis.c) ttVar.c(com.byazt.vis.c.class)).n());
                } catch (JSONException unused) {
                }
                BackupView.this.c(view2, i10, grVar);
            }
        };
        com.byazt.wdw.c cVar = (com.byazt.wdw.c) ttVar.c(com.byazt.wdw.c.class);
        if (cVar != null) {
            cVar.c(veVar);
            cVar.c(z10 ? 2 : 1);
        }
    }

    public View c(final NativeExpressView nativeExpressView) {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2 = this.f18367u;
        if (nativeVideoTsView2 != null) {
            return nativeVideoTsView2;
        }
        if (this.tt != null && this.f18362c != null) {
            if (ve()) {
                try {
                    NativeVideoTsView nativeVideoTsViewC = c(this.f18362c, this.tt, this.f18365n, true, false);
                    this.f18367u = nativeVideoTsViewC;
                    nativeVideoTsViewC.setAdCreativeClickListener(new NativeVideoTsView.c() { // from class: com.byazt.ouz.BackupView.2
                        @Override // com.byazt.un.NativeVideoTsView.c
                        public void c(View view, int i10) {
                            c expressInteractionListener = nativeExpressView.getExpressInteractionListener();
                            if (expressInteractionListener == null) {
                                return;
                            }
                            expressInteractionListener.c(view, i10);
                        }
                    });
                    this.f18367u.setVideoCacheUrl(this.sl);
                    this.f18367u.setControllerStatusCallBack(new NativeVideoTsView.uj() { // from class: com.byazt.ouz.BackupView.3
                        @Override // com.byazt.un.NativeVideoTsView.uj
                        public void c(boolean z10, long j10, long j11, long j12, boolean z11, boolean z12) {
                            com.byazt.ua.c cVar = BackupView.this.f18366t;
                            cVar.f20527c = z10;
                            cVar.f20528n = j10;
                            cVar.f20526a = j11;
                            cVar.sp = j12;
                            cVar.uj = z11;
                            cVar.f20529x = z12;
                        }
                    });
                    this.f18367u.setIsAutoPlay(this.f18364i);
                    this.f18367u.setIsQuiet(this.f18363da);
                } catch (Throwable unused) {
                    this.f18367u = null;
                }
            }
            if (ve() && (nativeVideoTsView = this.f18367u) != null && nativeVideoTsView.c(0L, true, false)) {
                return this.f18367u;
            }
        }
        return null;
    }

    public NativeVideoTsView c(Context context, ic icVar, String str, boolean z10, boolean z11) {
        return new NativeVideoTsView(context, icVar, str, z10, z11);
    }

    public void c(View view) {
        if (xd.z(this.tt) == null || view == null) {
            return;
        }
        c(view, this.tt.vp() == 1 && this.f18364i);
    }
}
