package com.qq.e.ads;

import android.app.Activity;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.pi.LADI;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LiteAbstractAD<T extends LADI> extends AbstractAD<T> implements LADI, DownloadConfirmListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DownloadConfirmListener f78122h;

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        T t10 = this.f78107a;
        if (t10 != null) {
            return t10.getApkInfoUrl();
        }
        a("getApkInfoUrl");
        return null;
    }

    @Override // com.qq.e.comm.pi.LADI
    public int getECPM() {
        T t10 = this.f78107a;
        if (t10 != null) {
            return t10.getECPM();
        }
        a("getECPM");
        return -1;
    }

    @Override // com.qq.e.comm.pi.LADI
    public String getECPMLevel() {
        T t10 = this.f78107a;
        if (t10 != null) {
            return t10.getECPMLevel();
        }
        a("getECPMLevel");
        return null;
    }

    @Override // com.qq.e.comm.pi.LADI
    public Map<String, Object> getExtraInfo() {
        T t10 = this.f78107a;
        if (t10 != null) {
            return t10.getExtraInfo();
        }
        a("getExtraInfo");
        return new HashMap();
    }

    @Override // com.qq.e.comm.pi.LADI
    public boolean isValid() {
        T t10 = this.f78107a;
        if (t10 != null) {
            return t10.isValid();
        }
        a("isValid");
        return false;
    }

    @Override // com.qq.e.comm.compliance.DownloadConfirmListener
    public void onDownloadConfirm(Activity activity, int i10, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
        DownloadConfirmListener downloadConfirmListener = this.f78122h;
        if (downloadConfirmListener != null) {
            downloadConfirmListener.onDownloadConfirm(activity, i10, str, downloadConfirmCallBack);
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i10, int i11, String str) {
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.sendLossNotification(i10, i11, str);
        } else {
            a("sendLossNotification");
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i10) {
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.sendWinNotification(i10);
        } else {
            a("sendWinNotification");
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i10) {
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.setBidECPM(i10);
        } else {
            a("setBidECPM");
        }
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f78122h = downloadConfirmListener;
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.setDownloadConfirmListener(this);
        }
    }

    @Override // com.qq.e.comm.pi.IBiddingLoss
    public void sendLossNotification(Map<String, Object> map) {
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.sendLossNotification(map);
        } else {
            a("sendLossNotification");
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(Map<String, Object> map) {
        T t10 = this.f78107a;
        if (t10 != null) {
            t10.sendWinNotification(map);
        } else {
            a("sendWinNotification");
        }
    }
}
