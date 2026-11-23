package com.haima.hmcp.utils.ping;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.websocket.WebSocketConnection;

/* JADX INFO: loaded from: classes5.dex */
public class PingManager implements PingCallback {
    static final int PING_COUNTS_DEFAULT = 15;
    static final int PING_COUNTS_MAX = 60;
    static final int PING_COUNTS_MIN = 1;
    static final int PING_GRAY_ENABLE_PERCENT = 0;
    static final String PING_HOST_DEFAULT = "www.baidu.com";
    static final int PING_INTERVAL_DEFAULT = 1000;
    private static final String TAG = "NetPingManager";
    private static PingManager mPingManager;
    private String mCloudId;
    private Context mContext;
    private PingPara mPingPara;
    private PingTask mPingTask = new PingTask();

    private PingManager() {
    }

    public static PingManager getInstance() {
        if (mPingManager == null) {
            synchronized (PingManager.class) {
                if (mPingManager == null) {
                    mPingManager = new PingManager();
                }
            }
        }
        return mPingManager;
    }

    private PingPara getPingPara() {
        if (this.mPingPara == null) {
            this.mPingPara = new PingPara();
        }
        return this.mPingPara;
    }

    private boolean isEnable(PingPara pingPara) {
        if (TextUtils.isEmpty(this.mCloudId)) {
            LogUtils.d(TAG, "is not enable: cloud id is null");
            return false;
        }
        if (pingPara != null && pingPara.pingGrayPercent > 0) {
            return ((long) (Math.abs(this.mCloudId.hashCode()) % 100)) < pingPara.pingGrayPercent;
        }
        if (pingPara == null) {
            LogUtils.d(TAG, "is not enable: ping para is null");
        } else {
            LogUtils.d(TAG, "is not enable: pingGrayPercent is " + pingPara.pingGrayPercent);
        }
        return false;
    }

    public PingResult getPingResult() {
        return this.mPingTask.getPingResult();
    }

    @Override // com.haima.hmcp.utils.ping.PingCallback
    public void pingFailed(PingPara pingPara) {
        int i10;
        LogUtils.d(TAG, "ping failed and stop, release");
        stop();
        release();
        PingPara pingPara2 = this.mPingPara;
        if (pingPara2 == null || (i10 = pingPara2.type) == 0 || i10 != 1) {
            return;
        }
        LogUtils.d(TAG, "set default ping para and start");
        PingPara pingPara3 = new PingPara();
        pingPara3.type = 0;
        pingPara3.pingGrayPercent = this.mPingPara.pingGrayPercent;
        this.mPingPara = pingPara3;
        this.mPingTask = new PingTask();
        start();
    }

    public void release() {
        LogUtils.e("NetPingManager " + WebSocketConnection.TAG, "ping release");
        this.mPingTask.release();
    }

    public void setCloudId(String str) {
        this.mCloudId = str;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setPingPara(PingPara pingPara) {
        try {
            this.mPingPara = (PingPara) pingPara.clone();
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
            this.mPingPara = new PingPara();
        }
    }

    public void start() {
        LogUtils.e("NetPingManager " + WebSocketConnection.TAG, "ping start");
        PingPara pingPara = getPingPara();
        if (isEnable(pingPara)) {
            this.mPingTask.setContext(this.mContext);
            this.mPingTask.start(pingPara);
            this.mPingTask.setPingCallback(this);
        }
    }

    public void stop() {
        LogUtils.e("NetPingManager " + WebSocketConnection.TAG, "ping stop");
        this.mPingTask.stop();
        this.mPingTask.setPingCallback(null);
    }
}
