package com.haima.hmcp.utils.ping;

import android.text.TextUtils;
import com.qq.e.comm.constants.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class PingPara implements Cloneable {
    public final int[] UNKNOW_HOST_RETRY_INTERVALS = {1000, 3000, ErrorCode.PrivateError.LOAD_TIME_OUT};
    public long pingGrayPercent = 0;
    public long pingInterval = 1000;
    public long pingCount = 15;
    public String pingHost = "www.baidu.com";
    public int type = 1;

    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void paraCheck() {
        if (this.pingGrayPercent < 0) {
            this.pingGrayPercent = 0L;
        }
        if (this.pingInterval < 1000) {
            this.pingInterval = 1000L;
        }
        if (this.pingCount < 1) {
            this.pingCount = 1L;
        }
        if (TextUtils.isEmpty(this.pingHost)) {
            this.pingHost = "www.baidu.com";
        }
    }
}
