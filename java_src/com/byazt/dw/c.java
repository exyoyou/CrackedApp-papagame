package com.byazt.dw;

import android.app.Activity;
import android.app.Dialog;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.nc.sp;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import n0.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 513, 20})
public abstract class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f13200c;

    private PluginValueSet c() {
        com.byazt.rl.c cVarC = com.byazt.rl.c.c();
        cVarC.c(268101, com.byazt.lq.uj.c(new Supplier<uj>() { // from class: com.byazt.dw.c.1
            @Override // java.util.function.Supplier
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public uj get() {
                return c.this.getNativeAdAppInfo();
            }
        }));
        return cVarC.tt();
    }

    public abstract String getActionText();

    public abstract int getAdImageMode();

    public abstract String getDescription();

    public abstract ve getDislikeDialog(Activity activity);

    public abstract ve getDislikeDialog(Activity activity, Map<String, Object> map);

    public abstract sp getDislikeDialog(Dialog dialog, Integer[] numArr);

    public abstract sp getDislikeDialog2(Activity activity);

    public abstract com.byazt.nc.uj getDislikeInfo();

    public abstract String getIconUrl();

    public abstract List<String> getImageList();

    public abstract String getImageUrl();

    public abstract int getInteractionType();

    public abstract uj getNativeAdAppInfo();

    public abstract String getSource();

    public abstract double getStarRating();

    public abstract String getTitle();

    public abstract boolean hasDislike();

    public abstract void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.am.uj ujVar);

    public abstract void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar);

    public abstract void setDislikeDialog(Dialog dialog, Integer[] numArr);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.f13200c;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetC = c();
        this.f13200c = pluginValueSetC;
        return pluginValueSetC;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        pluginValueSetTt.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        switch (iIntValue) {
            case 268001:
                return getTitle();
            case 268002:
                return getDescription();
            case 268003:
                return getIconUrl();
            case 268004:
                return getImageUrl();
            case 268005:
                return getActionText();
            case 268006:
                return Double.class.cast(Double.valueOf(getStarRating()));
            case 268007:
                return getImageList();
            case 268008:
                return getSource();
            case 268009:
                return Integer.class.cast(Integer.valueOf(getAdImageMode()));
            case 268010:
                return Integer.class.cast(Integer.valueOf(getInteractionType()));
            case 268011:
                registerView((Activity) pluginValueSetTt.objectValue(0, Activity.class), (ViewGroup) pluginValueSetTt.objectValue(1, ViewGroup.class), (List) pluginValueSetTt.objectValue(2, List.class), (List) pluginValueSetTt.objectValue(3, List.class), (List) pluginValueSetTt.objectValue(4, List.class), new com.byazt.am.uj(n0.c.a(pluginValueSetTt.objectValue(5, a.a()))));
                return null;
            case 268012:
                return Boolean.class.cast(Boolean.valueOf(hasDislike()));
            default:
                switch (iIntValue) {
                    case 268016:
                        setDislikeCallback((Activity) pluginValueSetTt.objectValue(0, Activity.class), new com.byazt.dhf.c(n0.c.a(pluginValueSetTt.objectValue(1, a.a()))));
                        return null;
                    case 268017:
                        setDislikeDialog((Dialog) pluginValueSetTt.objectValue(0, Dialog.class), (Integer[]) pluginValueSetTt.arrayValue(1, Integer.class));
                        return null;
                    case 268018:
                        return getDislikeDialog2((Activity) pluginValueSetTt.objectValue(0, Activity.class));
                    case 268019:
                        return getDislikeDialog((Dialog) pluginValueSetTt.objectValue(0, Dialog.class), (Integer[]) pluginValueSetTt.arrayValue(1, Integer.class));
                    case 268020:
                        return getDislikeInfo();
                    default:
                        switch (iIntValue) {
                            case 268102:
                                return getDislikeDialog((Activity) pluginValueSetTt.objectValue(0, Activity.class));
                            case 268103:
                                return getDislikeDialog((Activity) pluginValueSetTt.objectValue(0, Activity.class), (Map<String, Object>) pluginValueSetTt.objectValue(1, Map.class));
                            default:
                                return null;
                        }
                }
        }
    }
}
