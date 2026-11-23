package com.byazt.yhr;

import com.byazt.lz.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM, 20})
public class c implements com.byazt.lz.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.dj.uj f22219c;
    public com.byazt.lz.uj tt;
    public da ve;

    public c(com.byazt.dj.uj ujVar) {
        this.f22219c = ujVar;
    }

    @Override // com.byazt.lz.c
    public boolean alist() {
        return this.f22219c.alist();
    }

    @Override // com.byazt.lz.c
    public String getAndroidId() {
        return this.f22219c.getAndroidId();
    }

    @Override // com.byazt.lz.c
    public String getDevImei() {
        return this.f22219c.getDevImei();
    }

    @Override // com.byazt.lz.c
    public String getDevOaid() {
        return this.f22219c.getDevOaid();
    }

    @Override // com.byazt.lz.c
    public String getMacAddress() {
        return this.f22219c.getMacAddress();
    }

    @Override // com.byazt.lz.c
    public da getMediationPrivacyConfig() {
        if (this.ve == null) {
            com.byazt.je.tt mediationPrivacyConfig = this.f22219c.getMediationPrivacyConfig();
            if (mediationPrivacyConfig == null) {
                return null;
            }
            this.ve = new uj(mediationPrivacyConfig);
        }
        return this.ve;
    }

    @Override // com.byazt.lz.c
    public com.byazt.lz.uj getTTLocation() {
        if (this.tt == null) {
            final com.byazt.dj.ve tTLocation = this.f22219c.getTTLocation();
            if (tTLocation == null) {
                return null;
            }
            this.tt = new com.byazt.lz.uj() { // from class: com.byazt.yhr.c.1
                @Override // com.byazt.lz.uj
                public double getLatitude() {
                    return tTLocation.c();
                }

                @Override // com.byazt.lz.uj
                public double getLongitude() {
                    return tTLocation.tt();
                }
            };
        }
        return this.tt;
    }

    @Override // com.byazt.lz.c
    public boolean isCanUseAndroidId() {
        return this.f22219c.isCanUseAndroidId();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUseLocation() {
        return this.f22219c.isCanUseLocation();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUseMessage() {
        return this.f22219c.isCanUseMessage();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUsePermissionRecordAudio() {
        return this.f22219c.isCanUsePermissionRecordAudio();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUsePhoneState() {
        return this.f22219c.isCanUsePhoneState();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUseWifiState() {
        return this.f22219c.isCanUseWifiState();
    }

    @Override // com.byazt.lz.c
    public boolean isCanUseWriteExternal() {
        return this.f22219c.isCanUseWriteExternal();
    }

    @Override // com.byazt.lz.c
    public Map<String, Object> userPrivacyConfig() {
        return this.f22219c.userPrivacyConfig();
    }
}
