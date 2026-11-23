package org.webrtc.haima;

import java.nio.charset.Charset;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcCommandChannel implements HmTransDevice.Observer {
    private static final String TAG = "HmRtcCommandChannel";
    private HmRtcCommandListener mListener;
    private HmTransDevice mTransDevice;

    public boolean init(HmTransDevice hmTransDevice, HmRtcCommandListener hmRtcCommandListener) {
        if (this.mListener != null) {
            release();
        }
        if (hmTransDevice == null || hmRtcCommandListener == null) {
            Logging.e(TAG, "init invaild params ");
            return false;
        }
        this.mListener = hmRtcCommandListener;
        this.mTransDevice = hmTransDevice;
        return true;
    }

    public boolean isValid() {
        return this.mTransDevice != null;
    }

    @Override // org.webrtc.haima.HmTransDevice.Observer
    public void onClose() {
    }

    @Override // org.webrtc.haima.HmTransDevice.Observer
    public void onMessage(byte[] bArr, boolean z10) {
        try {
            if (z10) {
                this.mListener.onReceiveBinary(bArr);
            } else if (bArr != null) {
                this.mListener.onReceiveText(new String(bArr, Charset.forName("UTF-8")));
            } else {
                Logging.e(TAG, "onMessage invalid data");
            }
        } catch (Exception e10) {
            Logging.e(TAG, "onMessage ex =" + e10.toString());
        }
    }

    @Override // org.webrtc.haima.HmTransDevice.Observer
    public void onOpen() {
    }

    public void release() {
        if (this.mListener == null) {
            return;
        }
        this.mListener = null;
        this.mTransDevice = null;
    }

    public boolean sendData(byte[] bArr) {
        try {
            HmTransDevice hmTransDevice = this.mTransDevice;
            if (hmTransDevice != null) {
                return hmTransDevice.sendData(bArr, 0);
            }
            Logging.w(TAG, "sendData failed. transdevice is null ");
            return false;
        } catch (Exception e10) {
            Logging.e(TAG, "sendData failed  ex: " + e10.toString());
        }
    }

    public boolean sendText(String str) {
        try {
            HmTransDevice hmTransDevice = this.mTransDevice;
            if (hmTransDevice != null) {
                return hmTransDevice.sendText(str, 0);
            }
            Logging.w(TAG, "sendText failed. transdevice is null ");
            return false;
        } catch (Exception e10) {
            Logging.e(TAG, "sendText failed  ex: " + e10.toString());
        }
    }
}
