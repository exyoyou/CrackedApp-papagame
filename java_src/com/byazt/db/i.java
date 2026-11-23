package com.byazt.db;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 734, 42})
public class i extends uj {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.zq.a f12657da;

    public i(com.byazt.dv.c cVar) {
        super(cVar);
    }

    private com.byazt.zq.n c() {
        return (com.byazt.zq.n) this.sp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.db.uj
    public <T> T callMethod(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        String strStringValue;
        if (i10 == 8143) {
            return (T) Double.valueOf(getCpm());
        }
        int iIntValue = 0;
        if (i10 == 1009) {
            if (!(pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false)) {
                if (c() == null) {
                    return null;
                }
                c().uj();
                return null;
            }
            com.byazt.zq.a aVar = this.f12657da;
            if (!(aVar instanceof com.byazt.ko.tt)) {
                return null;
            }
            ((com.byazt.ko.tt) aVar).uj();
            return null;
        }
        if (i10 == 1017) {
            if (c() == null) {
                return null;
            }
            if (pluginValueSet != null) {
                iIntValue = pluginValueSet.intValue(8014, 0);
                strStringValue = pluginValueSet.stringValue(8015);
            } else {
                strStringValue = "";
            }
            c().c(new com.byazt.pp.c(iIntValue, strStringValue));
            return null;
        }
        if (i10 == 1011) {
            boolean zBooleanValue = pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false;
            if (pluginValueSet != null) {
                pluginValueSet.intValue(8552);
            }
            if (!zBooleanValue) {
                if (c() == null) {
                    return null;
                }
                c().tt(2);
                return null;
            }
            com.byazt.zq.a aVar2 = this.f12657da;
            if (!(aVar2 instanceof com.byazt.ko.tt)) {
                return null;
            }
            ((com.byazt.ko.tt) aVar2).tt(2);
            return null;
        }
        if (i10 == 1008) {
            if (!(pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false)) {
                if (c() == null) {
                    return null;
                }
                c().n();
                return null;
            }
            com.byazt.zq.a aVar3 = this.f12657da;
            if (!(aVar3 instanceof com.byazt.ko.tt)) {
                return null;
            }
            ((com.byazt.ko.tt) aVar3).n();
            return null;
        }
        if (i10 == 1019) {
            boolean zBooleanValue2 = pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false;
            if (pluginValueSet != null) {
                pluginValueSet.intValue(8552);
            }
            if (!zBooleanValue2) {
                if (c() == null) {
                    return null;
                }
                c().c(1);
                return null;
            }
            com.byazt.zq.a aVar4 = this.f12657da;
            if (!(aVar4 instanceof com.byazt.ko.tt)) {
                return null;
            }
            ((com.byazt.ko.tt) aVar4).c(1);
            return null;
        }
        if (i10 == 1074) {
            if (c() != null) {
                return (T) c().getActivity();
            }
            return null;
        }
        if (i10 == 1051) {
            c();
            return null;
        }
        if (i10 == 1052) {
            c();
            return null;
        }
        if (i10 == 6156) {
            if (c() == null) {
                return null;
            }
            c().l_();
            return null;
        }
        if (i10 != 8111) {
            return null;
        }
        setCpm(pluginValueSet.doubleValue(8016));
        return null;
    }

    @Override // com.byazt.yl.ve
    public String getReqId() {
        if (((uj) this).f12664x == null) {
            return super.getReqId();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8147).c(String.class).tt());
        if (objApply instanceof String) {
            return objApply.toString();
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public Bitmap getSplashBitMap() {
        if (((uj) this).f12664x != null) {
            Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6163).c(Bitmap.class).tt());
            if (objApply instanceof Bitmap) {
                return (Bitmap) objApply;
            }
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public void hideSkipBtn() {
        super.hideSkipBtn();
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6165).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public Integer isReadyStatus() {
        return uj.isReadyStatus(((uj) this).f12664x);
    }

    @Override // com.byazt.yl.ve
    public void showMinWindow(Rect rect, com.byazt.zq.a aVar) {
        super.showMinWindow(rect, aVar);
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6161).c(Void.class).c(20067, rect).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void showSplashAd(ViewGroup viewGroup) {
        super.showSplashAd(viewGroup);
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6152).c(Void.class).c(20060, viewGroup).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        super.showSplashCardView(viewGroup, activity);
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6154).c(Void.class).c(20060, viewGroup).c(20033, activity).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void splashMinWindowAnimationFinish() {
        super.splashMinWindowAnimationFinish();
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6162).c(Void.class).tt());
        }
    }
}
