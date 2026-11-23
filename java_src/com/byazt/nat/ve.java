package com.byazt.nat;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.bzd.x;
import com.byazt.ete.ic;
import com.byazt.hv.TTDownloadField;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.rl;
import com.byazt.ukr.yp;
import com.byazt.un.NativeVideoTsView;
import com.byazt.un.sp;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1196, 54})
public class ve extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17068a;
    public sp sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f17069x;

    private boolean da() {
        return this.f17069x;
    }

    private boolean i() {
        if (this.f22932c == null || da() || !ic.ve(this.f22932c)) {
            return false;
        }
        if (this.f17068a == 0) {
            this.f17068a = nb.sl(this.f22932c);
        }
        n();
        sp();
        a();
        if (this.f17068a == 5 && sl() && sp() && !n() && !a()) {
            return false;
        }
        int i10 = this.f17068a;
        return i10 == 1 || i10 == 2 || i10 == 5;
    }

    private boolean sl() {
        ic icVar = this.f22932c;
        return icVar != null && icVar.vp() == 1 && ic.ve(this.f22932c);
    }

    private boolean tt(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof NativeVideoTsView) || view.getId() == 2114387961 || view.getId() == 2114387664 || view.getId() == 2114387957 || view.getId() == 2114387764 || view.getId() == 2114387686 || view.getId() == 2114387626) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        int i10 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 >= viewGroup.getChildCount()) {
                return false;
            }
            if (tt(viewGroup.getChildAt(i10))) {
                return true;
            }
            i10++;
        }
    }

    private boolean x() {
        return i() && tt(this.uj) && !this.f17057n.tt();
    }

    public boolean a() {
        sp spVar = this.sp;
        if (spVar == null) {
            return false;
        }
        return spVar.tt();
    }

    public boolean n() {
        sp spVar = this.sp;
        if (spVar == null) {
            return false;
        }
        return spVar.c();
    }

    public boolean sp() {
        ic icVar = this.f22932c;
        if (icVar == null) {
            return true;
        }
        int iA = gt.tt().a(nb.t(icVar));
        if (iA == 1) {
            return rh.uj(this.tt);
        }
        if (iA == 2) {
            return rh.n(this.tt) || rh.uj(this.tt) || rh.a(this.tt);
        }
        if (iA != 3) {
            return iA != 5 || rh.uj(this.tt) || rh.a(this.tt);
        }
        return false;
    }

    @Override // com.byazt.nat.c, com.byazt.zo.c
    public int c(Map<String, Object> map, com.byazt.zo.ve veVar) {
        boolean z10;
        tt(this.f22932c.i());
        ve();
        final c.InterfaceC0376c interfaceC0376cC = this.f17057n.c();
        x.c(new Runnable() { // from class: com.byazt.nat.ve.1
            @Override // java.lang.Runnable
            public void run() {
                c.InterfaceC0376c interfaceC0376c = interfaceC0376cC;
                if (interfaceC0376c != null) {
                    interfaceC0376c.c(ve.this.uj, ve.this.f17057n.ve());
                }
            }
        });
        Map<String, Object> mapX = this.f17057n.x();
        String strGr = this.ve.gr();
        if (TextUtils.isEmpty(strGr)) {
            strGr = "clickEvent";
        }
        String str = strGr;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        mapX.put("click_from_uchain", 1);
        mapX.put("event_type", str);
        nb.md();
        HashMap map2 = new HashMap();
        map2.put("material_meta", this.f22932c);
        map2.put("click_chain", veVar);
        map2.put("dpa_tag", this.ve.gu());
        map2.put("context", this.tt);
        map2.put("event_tag", this.f17057n.i());
        map2.put("landing_page_source", Integer.valueOf(this.f17057n.sp()));
        map2.put("view", this.uj);
        View view = this.uj;
        if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            z10 = text != null && (text.toString().contains("下载") || text.toString().contains("安装"));
            if (this.uj instanceof Button) {
                z10 = true;
            }
        } else {
            z10 = false;
        }
        map2.put("handle_chain_data", map);
        com.byazt.pop.ve veVarA = this.f17057n.a();
        if (veVarA != null) {
            map2.put("download_adapter", veVarA);
            map2.put("is_market_covert", Boolean.valueOf(veVarA.uj()));
            map2.put("has_show_dl_factors", Boolean.valueOf(veVarA.sp()));
            Map<String, Object> mapA = veVarA.a();
            if (mapA != null && !(mapA.get(TTDownloadField.TT_ACTIVITY) instanceof Activity) && com.byazt.ete.gt.my(this.f22932c)) {
                try {
                    Activity activityC = com.byazt.wz.tt.c(this.uj);
                    if (activityC != null) {
                        veVarA.c(activityC, true);
                        mapA.put(TTDownloadField.TT_ACTIVITY, activityC);
                    }
                } catch (Exception e10) {
                    yp.c().c("openMarketInApp", e10);
                }
            }
            if (mapA != null) {
                map2.putAll(mapA);
            }
        } else {
            map2.put("has_show_dl_factors", Boolean.FALSE);
        }
        map2.put("is_click_button", Boolean.valueOf(z10 || this.ve.uj()));
        Map<String, Object> mapC = com.byazt.rv.c.c().c(this.f22932c.hashCode() + this.f22932c.qy());
        this.sp = (sp) rl.ve(this.f22932c.lw(), sp.class);
        Object objRemove = mapC.remove("is_express_ad");
        if (objRemove instanceof Boolean) {
            this.f17069x = ((Boolean) objRemove).booleanValue();
        }
        map2.put("is_video_lp", Boolean.valueOf(x()));
        map2.putAll(mapC);
        Boolean bool = Boolean.FALSE;
        map2.put("convert_from_downloader", bool);
        map2.put("convert_from_landing_page", Boolean.valueOf(this.f17057n.tt()));
        map2.put("pip_controller", this.f17057n.t());
        map2.put("open_video_detail_page_direct", Boolean.valueOf(!x() && this.f17057n.uj()));
        map2.put("is_from_video_layout", Boolean.valueOf(this.f17057n.da()));
        map2.put("is_open_web_page", bool);
        map2.put("is_feed_register_direct_download", Boolean.valueOf(this.ve.uj()));
        com.byazt.ppf.ve.c(this.f22932c, mapX, str, map2, this.f17057n.i(), new HashMap(), veVar.c());
        uj();
        return 0;
    }
}
