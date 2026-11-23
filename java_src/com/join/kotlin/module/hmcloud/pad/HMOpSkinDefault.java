package com.join.kotlin.module.hmcloud.pad;

import android.view.View;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;", "Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;", "<init>", "()V", "gamepad", "", "", "", "getGamepad", "()Ljava/util/Map;", "shoulder", "", "getShoulder", "()Ljava/util/Set;", "mouseMap", "getMouseMap", "load", "", "view", "Landroid/view/View;", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMOpSkinDefault implements HMOpSkinWrapper {

    @NotNull
    private final Map<String, Integer> gamepad;

    @NotNull
    private final Map<String, Integer> mouseMap;

    @NotNull
    private final Set<String> shoulder;

    public HMOpSkinDefault() {
        HMKeyData hMKeyData = HMKeyData.BtnLT;
        HMKeyData hMKeyData2 = HMKeyData.BtnLB;
        HMKeyData hMKeyData3 = HMKeyData.BtnLS;
        HMKeyData hMKeyData4 = HMKeyData.BtnRT;
        HMKeyData hMKeyData5 = HMKeyData.BtnRB;
        HMKeyData hMKeyData6 = HMKeyData.BtnRS;
        this.gamepad = MapsKt__MapsKt.mapOf(TuplesKt.to(hMKeyData.getKey(), Integer.valueOf(R.drawable.hm_key_lt_selector)), TuplesKt.to(hMKeyData2.getKey(), Integer.valueOf(R.drawable.hm_key_lb_selector)), TuplesKt.to(hMKeyData3.getKey(), Integer.valueOf(R.drawable.hm_key_ls_selector)), TuplesKt.to(hMKeyData4.getKey(), Integer.valueOf(R.drawable.hm_key_rt_selector)), TuplesKt.to(hMKeyData5.getKey(), Integer.valueOf(R.drawable.hm_key_rb_selector)), TuplesKt.to(hMKeyData6.getKey(), Integer.valueOf(R.drawable.hm_key_rs_selector)), TuplesKt.to(HMKeyData.BtnA.getKey(), Integer.valueOf(R.drawable.hm_key_a_selector)), TuplesKt.to(HMKeyData.BtnB.getKey(), Integer.valueOf(R.drawable.hm_key_b_selector)), TuplesKt.to(HMKeyData.BtnX.getKey(), Integer.valueOf(R.drawable.hm_key_x_selector)), TuplesKt.to(HMKeyData.BtnY.getKey(), Integer.valueOf(R.drawable.hm_key_y_selector)), TuplesKt.to(HMKeyData.BtnSelect.getKey(), Integer.valueOf(R.drawable.hm_key_screenshot_selector)), TuplesKt.to(HMKeyData.BtnStart.getKey(), Integer.valueOf(R.drawable.hm_key_menu_selector)));
        this.shoulder = SetsKt__SetsKt.setOf((Object[]) new String[]{hMKeyData.getKey(), hMKeyData2.getKey(), hMKeyData3.getKey(), hMKeyData4.getKey(), hMKeyData5.getKey(), hMKeyData6.getKey()});
        this.mouseMap = MapsKt__MapsKt.mapOf(TuplesKt.to(HMKeyData.MouseLeft.getKey(), Integer.valueOf(R.drawable.hm_key_mouse_l)), TuplesKt.to(HMKeyData.MouseRight.getKey(), Integer.valueOf(R.drawable.hm_key_mouse_r)), TuplesKt.to(HMKeyData.MouseMiddle.getKey(), Integer.valueOf(R.drawable.hm_key_mouse_mid)), TuplesKt.to(HMKeyData.MouseMoveUp.getKey(), Integer.valueOf(R.drawable.hm_key_mouse_mu)), TuplesKt.to(HMKeyData.MouseMoveDown.getKey(), Integer.valueOf(R.drawable.hm_key_mouse_md)));
    }

    @NotNull
    public final Map<String, Integer> getGamepad() {
        return this.gamepad;
    }

    @NotNull
    public final Map<String, Integer> getMouseMap() {
        return this.mouseMap;
    }

    @NotNull
    public final Set<String> getShoulder() {
        return this.shoulder;
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMOpSkinWrapper
    public void load(@NotNull View view, @NotNull HMKeyItem item) {
        String key;
        String key2;
        String key3;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(item, "item");
        if (view instanceof HMAnalogView) {
            if (Intrinsics.areEqual(item.getKey(), HMKeyData.JoyL.getKey())) {
                ((HMAnalogView) view).setStickResource(R.drawable.hm_ana_stick_l);
                return;
            } else {
                if (Intrinsics.areEqual(item.getKey(), HMKeyData.JoyR.getKey())) {
                    ((HMAnalogView) view).setStickResource(R.drawable.hm_ana_stick_r);
                    return;
                }
                return;
            }
        }
        if (!(view instanceof HMButtonView)) {
            if (view instanceof ImageView) {
                if (this.gamepad.containsKey(item.getKey())) {
                    Integer num = this.gamepad.get(item.getKey());
                    Intrinsics.checkNotNull(num);
                    ((ImageView) view).setImageResource(num.intValue());
                    return;
                } else if (Intrinsics.areEqual(item.getKey(), HMKeyData.MouseMoveUp.getKey())) {
                    ((ImageView) view).setImageResource(R.drawable.hm_key_mouse_mu_selector);
                    return;
                } else {
                    if (Intrinsics.areEqual(item.getKey(), HMKeyData.MouseMoveDown.getKey())) {
                        ((ImageView) view).setImageResource(R.drawable.hm_key_mouse_md_selector);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        List<HMKeyItem> combine = item.getCombine();
        if (combine != null && (combine.isEmpty() ^ true)) {
            HMButtonView hMButtonView = (HMButtonView) view;
            String nickname = item.getNickname();
            if (nickname == null && (nickname = item.getName()) == null) {
                nickname = "组合键";
            }
            hMButtonView.setTextButton("组合键", nickname);
            return;
        }
        if (!this.mouseMap.containsKey(item.getKey())) {
            if (this.shoulder.contains(item.getKey())) {
                HMKeyData hMKeyData = HMKeyData.INSTANCE.parse(item.getKey());
                if (hMKeyData == null || (key3 = hMKeyData.getNickname()) == null) {
                    key3 = item.getKey();
                }
                HMButtonView hMButtonView2 = (HMButtonView) view;
                String name = item.getName();
                if (name != null) {
                    key3 = name;
                }
                hMButtonView2.setTextButton(key3, item.getNickname());
                return;
            }
            if (!this.gamepad.keySet().contains(item.getKey())) {
                HMKeyData hMKeyData2 = HMKeyData.INSTANCE.parse(item.getKey());
                if (hMKeyData2 == null || (key = hMKeyData2.getNickname()) == null) {
                    key = item.getKey();
                }
                HMButtonView hMButtonView3 = (HMButtonView) view;
                String name2 = item.getName();
                if (name2 != null) {
                    key = name2;
                }
                hMButtonView3.setTextButton(key, item.getNickname());
                return;
            }
            String nickname2 = item.getNickname();
            if (nickname2 == null || nickname2.length() == 0) {
                Integer num2 = this.gamepad.get(item.getKey());
                Intrinsics.checkNotNull(num2);
                ((HMButtonView) view).setImageButton(num2.intValue());
                return;
            }
            HMKeyData hMKeyData3 = HMKeyData.INSTANCE.parse(item.getKey());
            if (hMKeyData3 == null || (key2 = hMKeyData3.getNickname()) == null) {
                key2 = item.getKey();
            }
            HMButtonView hMButtonView4 = (HMButtonView) view;
            String name3 = item.getName();
            if (name3 != null) {
                key2 = name3;
            }
            hMButtonView4.setTextButton(key2, item.getNickname());
            return;
        }
        String key4 = item.getKey();
        if (Intrinsics.areEqual(key4, HMKeyData.MouseMoveUp.getKey())) {
            if (item.getNickname() == null) {
                ((HMButtonView) view).setImageButton(R.drawable.hm_key_mouse_mu_selector);
                return;
            }
            HMButtonView hMButtonView5 = (HMButtonView) view;
            Integer num3 = this.mouseMap.get(item.getKey());
            Intrinsics.checkNotNull(num3);
            int iIntValue = num3.intValue();
            String nickname3 = item.getNickname();
            if (nickname3 == null && (nickname3 = item.getName()) == null) {
                nickname3 = item.getNickname();
            }
            hMButtonView5.setIconButton(iIntValue, nickname3);
            return;
        }
        if (!Intrinsics.areEqual(key4, HMKeyData.MouseMoveDown.getKey())) {
            HMButtonView hMButtonView6 = (HMButtonView) view;
            Integer num4 = this.mouseMap.get(item.getKey());
            Intrinsics.checkNotNull(num4);
            int iIntValue2 = num4.intValue();
            String nickname4 = item.getNickname();
            if (nickname4 == null && (nickname4 = item.getName()) == null) {
                nickname4 = item.getNickname();
            }
            hMButtonView6.setIconButton(iIntValue2, nickname4);
            return;
        }
        if (item.getNickname() == null) {
            ((HMButtonView) view).setImageButton(R.drawable.hm_key_mouse_md_selector);
            return;
        }
        HMButtonView hMButtonView7 = (HMButtonView) view;
        Integer num5 = this.mouseMap.get(item.getKey());
        Intrinsics.checkNotNull(num5);
        int iIntValue3 = num5.intValue();
        String nickname5 = item.getNickname();
        if (nickname5 == null && (nickname5 = item.getName()) == null) {
            nickname5 = item.getNickname();
        }
        hMButtonView7.setIconButton(iIntValue3, nickname5);
    }
}
