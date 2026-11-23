package com.byazt.cv;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 42})
public class i extends com.byazt.dw.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.yl.ve f12623c;

    public i(com.byazt.yl.ve veVar) {
        this.f12623c = veVar;
    }

    private com.byazt.yf.tt c(Activity activity, com.byazt.yl.ve veVar) {
        final com.byazt.nc.sp dislikeDialog = veVar.getDislikeDialog(activity);
        return new com.byazt.yf.tt() { // from class: com.byazt.cv.i.1
            @Override // com.byazt.yf.tt
            public void c() {
                com.byazt.nc.sp spVar = dislikeDialog;
                if (spVar != null) {
                    spVar.showDislikeDialog();
                }
            }

            @Override // com.byazt.yf.tt
            public void c(final com.byazt.yf.sp spVar) {
                com.byazt.nc.sp spVar2 = dislikeDialog;
                if (spVar2 != null) {
                    spVar2.setDislikeInteractionCallback(new com.byazt.dhf.c(null) { // from class: com.byazt.cv.i.1.1
                        @Override // com.byazt.dhf.c
                        public void c() {
                            com.byazt.yf.sp spVar3 = spVar;
                            if (spVar3 != null) {
                                spVar3.tt();
                            }
                        }

                        @Override // com.byazt.dhf.c
                        public void tt() {
                            com.byazt.yf.sp spVar3 = spVar;
                            if (spVar3 != null) {
                                spVar3.c();
                            }
                        }

                        @Override // com.byazt.dhf.c
                        public void c(int i10, String str, boolean z10) {
                            com.byazt.yf.sp spVar3 = spVar;
                            if (spVar3 != null) {
                                spVar3.c(i10, str);
                            }
                        }
                    });
                }
            }
        };
    }

    @Override // com.byazt.dw.c
    public String getActionText() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getActionText();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public int getAdImageMode() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.dw.c
    public String getDescription() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getAdDescription();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.ve getDislikeDialog(Activity activity) {
        com.byazt.yl.ve veVar;
        if (activity == null || (veVar = this.f12623c) == null) {
            return null;
        }
        return new com.byazt.xw.tt(c(activity, veVar));
    }

    @Override // com.byazt.dw.c
    public com.byazt.nc.sp getDislikeDialog2(Activity activity) {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public com.byazt.nc.uj getDislikeInfo() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public String getIconUrl() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getIconUrl();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public List<String> getImageList() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getImages();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public String getImageUrl() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getImageUrl();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public int getInteractionType() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getInteractionType();
        }
        return -1;
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.uj getNativeAdAppInfo() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar == null || !veVar.hasAppInfo()) {
            return null;
        }
        com.byazt.me.c cVar = new com.byazt.me.c();
        cVar.uj(this.f12623c.getAppName());
        cVar.n(this.f12623c.getAuthorName());
        cVar.c(this.f12623c.getPackageSizeBytes());
        cVar.a(this.f12623c.getPermissionsUrl());
        cVar.sp(this.f12623c.getPrivacyAgreement());
        cVar.x(this.f12623c.getVersionName());
        cVar.c(this.f12623c.getPermissionsMap());
        cVar.tt(this.f12623c.getAppInfoExtra());
        cVar.ve(this.f12623c.getFunctionDescUrl());
        cVar.c(this.f12623c.getRegUrl());
        cVar.tt(this.f12623c.getRegNumber());
        return new com.byazt.xw.ve(cVar);
    }

    @Override // com.byazt.dw.c
    public String getSource() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getSource();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public double getStarRating() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getStarRating();
        }
        return 0.0d;
    }

    @Override // com.byazt.dw.c
    public String getTitle() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getAdTitle();
        }
        return null;
    }

    @Override // com.byazt.dw.c
    public boolean hasDislike() {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.hasDislike();
        }
        return false;
    }

    @Override // com.byazt.dw.c
    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.am.uj ujVar) {
    }

    @Override // com.byazt.dw.c
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            veVar.setDislikeCallback(activity, cVar);
        }
    }

    @Override // com.byazt.dw.c
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            veVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.dw.c
    public com.byazt.dw.ve getDislikeDialog(Activity activity, Map<String, Object> map) {
        com.byazt.yl.ve veVar;
        if (activity == null || map == null || (veVar = this.f12623c) == null) {
            return null;
        }
        return new com.byazt.xw.tt(c(activity, veVar));
    }

    @Override // com.byazt.dw.c
    public com.byazt.nc.sp getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.yl.ve veVar = this.f12623c;
        if (veVar != null) {
            return veVar.getDislikeDialog(dialog, numArr);
        }
        return null;
    }
}
