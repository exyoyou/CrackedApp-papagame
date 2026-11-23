package com.byazt.xw;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.me.da;
import com.byazt.nc.sp;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 226, 15})
public class uj extends com.byazt.dw.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.oc.ve f22102c;

    public uj(com.byazt.oc.ve veVar) {
        this.f22102c = veVar;
    }

    @Override // com.byazt.dw.c
    public String getActionText() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.uj();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public int getAdImageMode() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.x();
        }
        return 0;
    }

    @Override // com.byazt.dw.c
    public String getDescription() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.c();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.ve getDislikeDialog(Activity activity) {
        com.byazt.oc.ve veVar;
        if (activity == null || (veVar = this.f22102c) == null) {
            return null;
        }
        return new tt(activity, null, veVar);
    }

    @Override // com.byazt.dw.c
    public sp getDislikeDialog2(Activity activity) {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.tt(activity);
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public com.byazt.nc.uj getDislikeInfo() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.t();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public String getIconUrl() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.tt();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public List<String> getImageList() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.a();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public String getImageUrl() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.ve();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public int getInteractionType() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.i();
        }
        return 0;
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.uj getNativeAdAppInfo() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar == null || veVar.da() == null) {
            return null;
        }
        return new ve(this.f22102c.da());
    }

    @Override // com.byazt.dw.c
    public String getSource() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.sp();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public double getStarRating() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.n();
        }
        return 0.0d;
    }

    @Override // com.byazt.dw.c
    public String getTitle() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.c();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public boolean hasDislike() {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.sl();
        }
        return false;
    }

    @Override // com.byazt.dw.c
    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.am.uj ujVar) {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            veVar.c(activity, viewGroup, list, list2, list3, da.c(ujVar));
        }
    }

    @Override // com.byazt.dw.c
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            veVar.c(activity, cVar);
        }
    }

    @Override // com.byazt.dw.c
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            veVar.c(dialog, numArr);
        }
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.ve getDislikeDialog(Activity activity, Map<String, Object> map) {
        com.byazt.oc.ve veVar;
        if (activity == null || map == null || (veVar = this.f22102c) == null) {
            return null;
        }
        return new tt(activity, map, veVar);
    }

    @Override // com.byazt.dw.c
    public sp getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.oc.ve veVar = this.f22102c;
        if (veVar != null) {
            return veVar.tt(dialog, numArr);
        }
        return null;
    }
}
