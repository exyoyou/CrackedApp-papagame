package com.qq.e.ads.banner2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.compliance.ApkDownloadComplianceInterface;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IBidding;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class UnifiedBannerView extends FrameLayout implements ApkDownloadComplianceInterface, IBidding, NFBI, IReward {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final UnifiedBannerAD f78133b;

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(activity, str, unifiedBannerADListener, null);
    }

    private void a() {
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    }

    public void destroy() {
        this.f78133b.destroy();
    }

    public String getAdNetWorkName() {
        return this.f78133b.getAdNetWorkName();
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        return this.f78133b.getApkInfoUrl();
    }

    public int getECPM() {
        return this.f78133b.getECPM();
    }

    public String getECPMLevel() {
        return this.f78133b.getECPMLevel();
    }

    public Map<String, Object> getExtraInfo() {
        return this.f78133b.getExtraInfo();
    }

    public boolean isValid() {
        return this.f78133b.isValid();
    }

    public void loadAD() {
        this.f78133b.loadAD();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        this.f78133b.onWindowFocusChanged(z10);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i10, int i11, String str) {
        this.f78133b.sendLossNotification(i10, i11, str);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i10) {
        this.f78133b.sendWinNotification(i10);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i10) {
        this.f78133b.setBidECPM(i10);
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f78133b.setDownloadConfirmListener(downloadConfirmListener);
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f78133b.setLoadAdParams(loadAdParams);
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f78133b.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    public void setRefresh(int i10) {
        this.f78133b.h(i10);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f78133b.setRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78133b.setServerSideVerificationOptions(serverSideVerificationOptions);
    }

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener, Map map) {
        super(activity);
        this.f78133b = new UnifiedBannerAD(activity, this, str, unifiedBannerADListener);
        a();
    }

    @Override // com.qq.e.comm.pi.IBiddingLoss
    public void sendLossNotification(Map<String, Object> map) {
        this.f78133b.sendLossNotification(map);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(Map<String, Object> map) {
        this.f78133b.sendWinNotification(map);
    }

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener, Map map, String str2) {
        super(activity);
        if (TextUtils.isEmpty(str2)) {
            GDTLogger.e(getClass().getSimpleName() + "构造函数中 token 参数不可为空");
        }
        this.f78133b = new UnifiedBannerAD(activity, this, str, str2, unifiedBannerADListener);
        a();
    }
}
