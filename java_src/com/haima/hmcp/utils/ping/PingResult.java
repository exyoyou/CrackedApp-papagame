package com.haima.hmcp.utils.ping;

import android.text.TextUtils;
import com.haima.hmcp.utils.LogUtils;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class PingResult implements Cloneable {
    private static final String LINE_SEP = System.getProperty("line.separator");
    private static final String TAG = "PingResult";
    private String mDelayString;
    private String mTimeOutString;
    public double min = -1.0d;
    public double avg = -1.0d;
    public double max = -1.0d;
    public double mdev = -1.0d;
    private int packetsTransmitted = 0;
    private int received = 0;
    private int packetLoss = 0;
    private StringBuilder successMsg = new StringBuilder();
    private StringBuilder errorMsg = new StringBuilder();

    private void checkDelay(String str) {
        if (str.contains("avg")) {
            this.mDelayString = str;
            String[] strArrSplit = str.split(" ");
            if (strArrSplit == null || strArrSplit.length == 0) {
                return;
            }
            parseData(strArrSplit[3]);
        }
    }

    private void checkTimeOut(String str) {
        if (str.contains("packet loss")) {
            this.mTimeOutString = str;
            String[] strArrSplit = str.split(",");
            if (strArrSplit == null || strArrSplit.length == 0 || strArrSplit.length <= 3) {
                return;
            }
            this.packetsTransmitted = getPacketsTransmitted(strArrSplit[0]);
            this.received = getReceived(strArrSplit[1]);
            this.packetLoss = getPacketLoss(strArrSplit[2]);
        }
    }

    private double formatDelay(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return -1.0d;
            }
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return -1.0d;
    }

    private int getPacketLoss(String str) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.trim().split(" ")) != null && strArrSplit.length != 0) {
            String strSubstring = strArrSplit[0];
            if (TextUtils.isEmpty(strSubstring)) {
                return 0;
            }
            try {
                if (strSubstring.contains("%")) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
                return Integer.parseInt(strSubstring);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    private int getPacketsTransmitted(String str) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.trim().split(" ")) != null && strArrSplit.length != 0) {
            try {
                return Integer.parseInt(strArrSplit[0]);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    private int getReceived(String str) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.trim().split(" ")) != null && strArrSplit.length != 0) {
            try {
                return Integer.parseInt(strArrSplit[0]);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void errorAppend(String str) {
        StringBuilder sb2 = this.errorMsg;
        sb2.append(LINE_SEP);
        sb2.append(str);
    }

    public String getDelayMsg() {
        return this.mDelayString;
    }

    public String getErrorMsg() {
        return this.errorMsg.toString();
    }

    public String getSuccessMsg() {
        return this.successMsg.toString();
    }

    public String getTimeOutMsg() {
        return this.mTimeOutString;
    }

    public boolean isTimeout() {
        return this.packetsTransmitted > this.received && this.packetLoss > 0;
    }

    public boolean isValidate() {
        return this.min > -1.0d && this.avg > -1.0d && this.max > -1.0d && this.mdev > -1.0d;
    }

    public boolean parseData(String str) {
        String[] strArrSplit = str.split(e.F0);
        if (strArrSplit == null || strArrSplit.length == 0) {
            LogUtils.d(TAG, "delay is null");
            return false;
        }
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            double delay = formatDelay(strArrSplit[i10]);
            if (i10 == 0) {
                this.min = delay;
            } else if (i10 == 1) {
                this.avg = delay;
            } else if (i10 == 2) {
                this.max = delay;
            } else {
                if (i10 != 3) {
                    return false;
                }
                this.mdev = delay;
            }
        }
        return true;
    }

    public void successAppend(String str) {
        StringBuilder sb2 = this.successMsg;
        sb2.append(LINE_SEP);
        sb2.append(str);
        checkTimeOut(str);
        checkDelay(str);
    }

    public String toReportString() {
        return this.min + "-" + this.avg + "-" + this.max + "-" + this.mdev;
    }

    public String toString() {
        return this.min + "|" + this.avg + "|" + this.max + "|" + this.mdev;
    }
}
