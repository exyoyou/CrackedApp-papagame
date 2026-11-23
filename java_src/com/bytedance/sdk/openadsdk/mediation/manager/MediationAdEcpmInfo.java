package com.bytedance.sdk.openadsdk.mediation.manager;

import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME})
public class MediationAdEcpmInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23590a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23591c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private String f23592da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f23593i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f23594m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23595n;
    private Map<String, String> nu;
    private String sl;
    private String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f23596t;
    private String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f23597u;
    private String uj;
    private String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f23598x;
    private String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f23599z;

    public MediationAdEcpmInfo() {
        this.nu = new HashMap();
    }

    public String getAbTestId() {
        return this.yp;
    }

    public String getChannel() {
        return this.f23596t;
    }

    public Map<String, String> getCustomData() {
        return this.nu;
    }

    public String getCustomSdkName() {
        return this.tt;
    }

    public String getDiscount() {
        return this.f23594m;
    }

    public String getEcpm() {
        return this.f23595n;
    }

    public String getErrorMsg() {
        return this.sp;
    }

    public String getLevelTag() {
        return this.uj;
    }

    public int getReqBiddingType() {
        return this.f23590a;
    }

    public String getRequestId() {
        return this.f23598x;
    }

    public String getRitType() {
        return this.f23593i;
    }

    public String getScenarioId() {
        return this.f23599z;
    }

    public String getSdkName() {
        return this.f23591c;
    }

    public String getSegmentId() {
        return this.sl;
    }

    public String getSlotId() {
        return this.ve;
    }

    public String getSubChannel() {
        return this.f23597u;
    }

    public String getSubRitType() {
        return this.f23592da;
    }

    public MediationAdEcpmInfo(String str, String str2, String str3, String str4, String str5, int i10, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map, String str15) {
        HashMap map2 = new HashMap();
        this.nu = map2;
        this.f23591c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = str4;
        this.f23595n = str5;
        this.f23590a = i10;
        this.sp = str6;
        this.f23598x = str7;
        this.f23593i = str8;
        this.f23592da = str9;
        this.sl = str10;
        this.f23596t = str11;
        this.f23597u = str12;
        this.yp = str13;
        this.f23599z = str14;
        this.f23594m = str15;
        if (map != null) {
            this.nu = map;
        } else {
            map2.clear();
        }
    }
}
