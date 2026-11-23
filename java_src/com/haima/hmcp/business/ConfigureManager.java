package com.haima.hmcp.business;

import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.utils.LogUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ConfigureManager {
    private static final String TAG = "ConfigureManager";
    private String mSupportPullUpWXPayForVirtualGamePad;

    private static class ConfigureManagerInstance {
        private static final ConfigureManager INSTANCE = new ConfigureManager();

        private ConfigureManagerInstance() {
        }
    }

    public static ConfigureManager getInstance() {
        return ConfigureManagerInstance.INSTANCE;
    }

    public String getSupportPullUpWXPayForVirtualGamePad() {
        return this.mSupportPullUpWXPayForVirtualGamePad;
    }

    public void parseConfig(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.e(TAG, "metaMap is null");
            return;
        }
        this.mSupportPullUpWXPayForVirtualGamePad = "1";
        if (map.containsKey(ConstantsInternal.KEY_CONFIG_SUPPORT_PULL_UP_WX_PAY_FOR_VIRTUAL_GAME_PAD)) {
            this.mSupportPullUpWXPayForVirtualGamePad = map.get(ConstantsInternal.KEY_CONFIG_SUPPORT_PULL_UP_WX_PAY_FOR_VIRTUAL_GAME_PAD);
        }
        LogUtils.d(TAG, "mSupportPullUpWXPayForVirtualGamePad:" + this.mSupportPullUpWXPayForVirtualGamePad);
    }

    private ConfigureManager() {
    }
}
