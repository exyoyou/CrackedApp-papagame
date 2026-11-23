package com.byazt.sn;

import com.byazt.dw.tt;
import com.byazt.me.da;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1258, 20})
public class c extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public da f19844c;

    public c(da daVar) {
        this.f19844c = daVar;
    }

    @Override // com.byazt.dw.tt
    public int getCallToActionId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.uj;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getDecriptionTextId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.ve;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public Map<String, Integer> getExtras() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.yp;
        }
        return null;
    }

    @Override // com.byazt.dw.tt
    public int getGroupImage1Id() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16887i;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getGroupImage2Id() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16886da;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getGroupImage3Id() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.sl;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getIconImageId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16888n;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getLayoutId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16885c;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getLogoLayoutId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16889t;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getMainImageId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16884a;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getMediaViewId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.sp;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getShakeViewContainerId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16890u;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getSourceId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.f16891x;
        }
        return 0;
    }

    @Override // com.byazt.dw.tt
    public int getTitleId() {
        da daVar = this.f19844c;
        if (daVar != null) {
            return daVar.tt;
        }
        return 0;
    }
}
