package com.haima.hmcp.model;

import android.os.Bundle;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.BaseVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class TokenTimeStampModel {
    private static final String TAG = "TokenTimeStampModel";
    private Long cTokenTimeStamp;
    private boolean isWaitForUpdate;

    public boolean callbackUpdateToken(HmcpPlayerListener hmcpPlayerListener) {
        if (hmcpPlayerListener == null) {
            return false;
        }
        hmcpPlayerListener.onUpdateCToken();
        LogUtils.i(TAG, "update cToken callback");
        return true;
    }

    public long getTokenTimeStamp() {
        Long l10 = this.cTokenTimeStamp;
        if (l10 == null) {
            return -1L;
        }
        return l10.longValue();
    }

    public boolean isWait() {
        return this.isWaitForUpdate;
    }

    public boolean needUpdateTimeStamp() {
        return this.cTokenTimeStamp != null;
    }

    public Long parseTokenTimeStamp(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        long j10 = bundle.containsKey(BaseVideoView.C_TOKEN_TIME_STAMP) ? bundle.getLong(BaseVideoView.C_TOKEN_TIME_STAMP, -1L) : -1L;
        if (j10 != -1) {
            return Long.valueOf(j10);
        }
        return null;
    }

    public void updateTimeStamp(Long l10) {
        this.cTokenTimeStamp = l10;
    }

    public void wait(boolean z10) {
        this.isWaitForUpdate = z10;
    }
}
