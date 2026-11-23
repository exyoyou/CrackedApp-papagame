package com.byazt.lq;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.nc.da;
import com.byazt.nc.n;
import com.byazt.nc.sp;
import com.byazt.nc.t;
import com.byazt.nc.u;
import com.byazt.nr.m;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 51, 13})
public abstract class tt extends da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u f16720c;

    public tt(u uVar) {
        this.f16720c = uVar;
    }

    @Override // com.byazt.nc.u
    public void destroy() {
        this.f16720c.destroy();
    }

    @Override // com.byazt.nc.u
    public Bitmap getAdLogo() {
        return this.f16720c.getAdLogo();
    }

    @Override // com.byazt.nc.u
    public View getAdView() {
        View adView = this.f16720c.getAdView();
        m.uj("wzj", "3-BaseFeedAd:140016:view=".concat(String.valueOf(adView)));
        return adView;
    }

    @Override // com.byazt.nc.u
    public int getAppCommentNum() {
        return this.f16720c.getAppCommentNum();
    }

    @Override // com.byazt.nc.u
    public int getAppScore() {
        return this.f16720c.getAppScore();
    }

    @Override // com.byazt.nc.u
    public int getAppSize() {
        return this.f16720c.getAppSize();
    }

    @Override // com.byazt.nc.u
    public String getButtonText() {
        return this.f16720c.getButtonText();
    }

    @Override // com.byazt.nc.u
    public com.byazt.nc.ve getComplianceInfo() {
        return this.f16720c.getComplianceInfo();
    }

    @Override // com.byazt.nc.u
    public String getDescription() {
        return this.f16720c.getDescription();
    }

    @Override // com.byazt.nc.u
    public sp getDislikeDialog(Activity activity) {
        return this.f16720c.getDislikeDialog(activity);
    }

    @Override // com.byazt.nc.u
    public com.byazt.nc.uj getDislikeInfo() {
        return this.f16720c.getDislikeInfo();
    }

    @Override // com.byazt.nc.u
    public n getDownloadStatusController() {
        return this.f16720c.getDownloadStatusController();
    }

    @Override // com.byazt.nc.u
    public t getIcon() {
        return this.f16720c.getIcon();
    }

    @Override // com.byazt.nc.u
    public List<t> getImageList() {
        return this.f16720c.getImageList();
    }

    @Override // com.byazt.nc.u
    public int getImageMode() {
        return this.f16720c.getImageMode();
    }

    @Override // com.byazt.nc.u
    public int getInteractionType() {
        return this.f16720c.getInteractionType();
    }

    @Override // com.byazt.nc.u
    public Map<String, Object> getMediaExtraInfo() {
        return this.f16720c.getMediaExtraInfo();
    }

    public u getNativeAd() {
        return this.f16720c;
    }

    @Override // com.byazt.nc.u
    public String getSource() {
        return this.f16720c.getSource();
    }

    @Override // com.byazt.nc.u
    public String getTitle() {
        return this.f16720c.getTitle();
    }

    @Override // com.byazt.nc.u
    public t getVideoCoverImage() {
        return this.f16720c.getVideoCoverImage();
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        this.f16720c.loss(d10, str, str2);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.lsp.c cVar) {
        this.f16720c.registerViewForInteraction(viewGroup, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void render() {
        this.f16720c.render();
    }

    @Override // com.byazt.nc.u
    public void setActivityForDownloadApp(Activity activity) {
        this.f16720c.setActivityForDownloadApp(activity);
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        this.f16720c.setAdInteractionListener(ttVar);
    }

    @Override // com.byazt.nc.u
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        this.f16720c.setDislikeCallback(activity, cVar);
    }

    @Override // com.byazt.nc.u
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        this.f16720c.setDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.nc.u
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        this.f16720c.setDownloadListener(veVar);
    }

    @Override // com.byazt.nc.u
    public void setExpressRenderListener(com.byazt.lsp.ve veVar) {
        this.f16720c.setExpressRenderListener(veVar);
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
        this.f16720c.setPrice(d10);
    }

    @Override // com.byazt.nc.u
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.nc.u
    public void uploadDislikeEvent(String str) {
        this.f16720c.uploadDislikeEvent(str);
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
        this.f16720c.win(d10);
    }

    @Override // com.byazt.nc.u
    public sp getDislikeDialog(Dialog dialog, Integer[] numArr) {
        return this.f16720c.getDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.lsp.c cVar) {
        this.f16720c.registerViewForInteraction(viewGroup, list, list2, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.lsp.c cVar) {
        this.f16720c.registerViewForInteraction(viewGroup, list, list2, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.lsp.c cVar) {
        this.f16720c.registerViewForInteraction(viewGroup, list, list2, list3, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.lsp.c cVar) {
        this.f16720c.registerViewForInteraction(viewGroup, list, list2, list3, list4, view, cVar);
    }
}
