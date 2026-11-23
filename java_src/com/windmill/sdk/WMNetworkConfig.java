package com.windmill.sdk;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class WMNetworkConfig {
    public static final int ADMATE = 35;
    public static final int ADMOB = 11;
    public static final int ADSCOPE = 27;
    public static final int APPLOVIN = 5;
    public static final int APPLOVIN_MAX = 31;
    public static final int BAIDU = 21;
    public static final int BILLOWLINK = 39;
    public static final int FACEBOOK = 15;
    public static final int GDT = 16;
    public static final int GROMORE = 22;
    public static final int HONOR = 36;
    public static final int HUAWEI_INNR = 25;
    public static final int HUAWEI_LITE = 43;
    public static final int INMOBI = 37;
    public static final int IRONSOURCE = 7;
    public static final int KLEVIN = 20;
    public static final int KUAISHOU = 19;
    public static final int MERCURY = 42;
    public static final int MOBVISTA = 1;
    public static final int OCTOPUS = 41;
    public static final int OPPO_ADN = 34;
    public static final int PANGLE = 30;
    public static final int QUMENG = 28;
    public static final int REKLAMUP = 33;
    public static final int SIGMOB = 9;
    public static final int TAPJOY = 12;
    public static final int TAPTAP = 29;
    public static final int TOBID_ADX = 999;
    public static final int TOUTIAO = 13;
    public static final int UNITYADS = 6;
    public static final int VIVOADN = 38;
    public static final int VUNGLE = 4;
    List<WMAdnInit> mInitConfigList;

    public static class Builder {
        List<WMAdnInit> mInitConfigs = new ArrayList();

        public Builder addInitConfig(WMAdnInit initConfig) {
            this.mInitConfigs.add(initConfig);
            return this;
        }

        public WMNetworkConfig build() {
            WMNetworkConfig wMNetworkConfig = new WMNetworkConfig();
            wMNetworkConfig.mInitConfigList = this.mInitConfigs;
            return wMNetworkConfig;
        }
    }

    public interface WMAdnInit {
        int getAdnId();

        String getAppId();

        String getAppKey();
    }

    public interface WMInnerAdnInit extends WMAdnInit {
        String getVersion();
    }

    public List<WMAdnInit> getAdnInitConfigList() {
        return this.mInitConfigList;
    }
}
