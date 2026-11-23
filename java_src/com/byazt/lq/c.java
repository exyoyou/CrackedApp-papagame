package com.byazt.lq;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.nc.da;
import com.byazt.nc.i;
import com.byazt.nc.n;
import com.byazt.nc.sp;
import com.byazt.nc.t;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 51, 20})
public abstract class c extends i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final da f16719c;

    public c(da daVar) {
        this.f16719c = daVar;
    }

    @Override // com.byazt.nc.u
    public void destroy() {
        this.f16719c.destroy();
    }

    @Override // com.byazt.nc.u
    public Bitmap getAdLogo() {
        return this.f16719c.getAdLogo();
    }

    @Override // com.byazt.nc.u
    public View getAdView() {
        return this.f16719c.getAdView();
    }

    @Override // com.byazt.nc.da
    public int getAdViewHeight() {
        return this.f16719c.getAdViewHeight();
    }

    @Override // com.byazt.nc.da
    public int getAdViewWidth() {
        return this.f16719c.getAdViewWidth();
    }

    @Override // com.byazt.nc.u
    public int getAppCommentNum() {
        return this.f16719c.getAppCommentNum();
    }

    @Override // com.byazt.nc.u
    public int getAppScore() {
        return this.f16719c.getAppScore();
    }

    @Override // com.byazt.nc.u
    public int getAppSize() {
        return this.f16719c.getAppSize();
    }

    @Override // com.byazt.nc.u
    public String getButtonText() {
        return this.f16719c.getButtonText();
    }

    @Override // com.byazt.nc.u
    public com.byazt.nc.ve getComplianceInfo() {
        return this.f16719c.getComplianceInfo();
    }

    @Override // com.byazt.nc.da
    public com.byazt.yh.c getCustomVideo() {
        return this.f16719c.getCustomVideo();
    }

    @Override // com.byazt.nc.u
    public String getDescription() {
        return this.f16719c.getDescription();
    }

    @Override // com.byazt.nc.u
    public sp getDislikeDialog(Activity activity) {
        return this.f16719c.getDislikeDialog(activity);
    }

    @Override // com.byazt.nc.u
    public com.byazt.nc.uj getDislikeInfo() {
        return this.f16719c.getDislikeInfo();
    }

    @Override // com.byazt.nc.u
    public n getDownloadStatusController() {
        return this.f16719c.getDownloadStatusController();
    }

    public da getFeedAd() {
        return this.f16719c;
    }

    @Override // com.byazt.nc.u
    public t getIcon() {
        return this.f16719c.getIcon();
    }

    @Override // com.byazt.nc.u
    public List<t> getImageList() {
        return this.f16719c.getImageList();
    }

    @Override // com.byazt.nc.u
    public int getImageMode() {
        return this.f16719c.getImageMode();
    }

    @Override // com.byazt.nc.u
    public int getInteractionType() {
        return this.f16719c.getInteractionType();
    }

    @Override // com.byazt.nc.u
    public Map<String, Object> getMediaExtraInfo() {
        return this.f16719c.getMediaExtraInfo();
    }

    @Override // com.byazt.nc.u
    public String getSource() {
        return this.f16719c.getSource();
    }

    @Override // com.byazt.nc.u
    public String getTitle() {
        return this.f16719c.getTitle();
    }

    @Override // com.byazt.nc.u
    public t getVideoCoverImage() {
        return this.f16719c.getVideoCoverImage();
    }

    @Override // com.byazt.nc.da
    public double getVideoDuration() {
        return this.f16719c.getVideoDuration();
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        this.f16719c.loss(d10, str, str2);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.lsp.c cVar) {
        this.f16719c.registerViewForInteraction(viewGroup, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void render() {
        this.f16719c.render();
    }

    @Override // com.byazt.nc.u
    public void setActivityForDownloadApp(Activity activity) {
        this.f16719c.setActivityForDownloadApp(activity);
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        this.f16719c.setAdInteractionListener(ttVar);
    }

    @Override // com.byazt.nc.u
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        this.f16719c.setDislikeCallback(activity, cVar);
    }

    @Override // com.byazt.nc.u
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        this.f16719c.setDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.nc.u
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        this.f16719c.setDownloadListener(veVar);
    }

    @Override // com.byazt.nc.u
    public void setExpressRenderListener(com.byazt.lsp.ve veVar) {
        this.f16719c.setExpressRenderListener(veVar);
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
        this.f16719c.setPrice(d10);
    }

    @Override // com.byazt.nc.da
    public void setVideoAdListener(com.byazt.bf.c cVar) {
        this.f16719c.setVideoAdListener(cVar);
    }

    @Override // com.byazt.nc.da
    public void setVideoRewardListener(com.byazt.bf.tt ttVar) {
        this.f16719c.setVideoRewardListener(ttVar);
    }

    @Override // com.byazt.nc.u
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.nc.u
    public void uploadDislikeEvent(String str) {
        this.f16719c.uploadDislikeEvent(str);
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
        this.f16719c.win(d10);
    }

    @Override // com.byazt.nc.u
    public sp getDislikeDialog(Dialog dialog, Integer[] numArr) {
        return this.f16719c.getDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.lsp.c cVar) {
        this.f16719c.registerViewForInteraction(viewGroup, list, list2, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.lsp.c cVar) {
        this.f16719c.registerViewForInteraction(viewGroup, list, list2, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.lsp.c cVar) {
        this.f16719c.registerViewForInteraction(viewGroup, list, list2, list3, view, cVar);
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.lsp.c cVar) {
        this.f16719c.registerViewForInteraction(viewGroup, list, list2, list3, list4, view, cVar);
    }
}
