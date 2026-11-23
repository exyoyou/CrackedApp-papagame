package com.byazt.hj;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 67})
public class u implements TTNativeExpressAd {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f14927c;
    public ValueSet tt;

    public u(Function<SparseArray<Object>, Object> function) {
        this.tt = com.byazt.rl.ve.f19472c;
        function = function == null ? com.byazt.rl.ve.ve : function;
        this.f14927c = function;
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            this.tt = com.byazt.rl.ve.c((SparseArray<Object>) objApply).tt();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 150105);
        sparseArray.put(-99999985, Void.class);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150108);
        sparseArray.put(-99999985, n0.a.a());
        sparseArray.put(0, activity);
        return new sp(z.c(this.f14927c.apply(sparseArray)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public DislikeInfo getDislikeInfo() {
        return new uj(n0.c.a(this.tt.objectValue(150003, n0.a.a())));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return (View) this.tt.objectValue(150001, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        return this.tt.intValue(150002);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        return this.tt.intValue(150004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.tt.objectValue(150005, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public MediationNativeManager getMediationManager() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 150113);
        sparseArray.put(-99999985, n0.a.a());
        return new com.byazt.qo.uj(z.c(this.f14927c.apply(sparseArray)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d10, String str, String str2) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(-99999987, 210102);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d10);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void registerClickableRects(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150115);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 150104);
        sparseArray.put(-99999985, Void.class);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setAdInteractionListener(TTAdInteractionListener tTAdInteractionListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 210104);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.ph.tt(tTAdInteractionListener));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setCanInterruptVideoPlay(boolean z10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150112);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Boolean.valueOf(z10));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(-99999987, 150106);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, activity);
        sparseArray.put(1, new com.byazt.ebk.c(dislikeInteractionCallback));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(-99999987, 150107);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, tTDislikeDialogAbstract);
        sparseArray.put(1, z.c(tTDislikeDialogAbstract.getTTDislikeListViewIds()));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.ph.ve(tTAppDownloadListener));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.yk.tt(expressAdInteractionListener));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 210103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d10);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setSlideIntervalTime(int i10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150110);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Integer.valueOf(i10));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150111);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.yk.ve(expressVideoAdListener));
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void showInteractionExpressAd(Activity activity) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150109);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, activity);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void unRegisterRects() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 150116);
        sparseArray.put(-99999985, Void.class);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void uploadDislikeEvent(String str) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150114);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, str);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 210101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d10);
        this.f14927c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 150102);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.yk.c(adInteractionListener));
        this.f14927c.apply(sparseArray);
    }
}
