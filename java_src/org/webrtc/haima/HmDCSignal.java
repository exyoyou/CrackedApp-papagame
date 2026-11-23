package org.webrtc.haima;

import org.hmwebrtc.DataChannel;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCSignal extends HmDCDevice {
    public HmDCSignal(DataChannel dataChannel) {
        super(dataChannel);
    }

    @Override // org.webrtc.haima.HmDCDevice, org.hmwebrtc.DataChannel.Observer
    public void onBufferedAmountChange(long j10) {
    }

    @Override // org.webrtc.haima.HmDCDevice, org.hmwebrtc.DataChannel.Observer
    public void onStateChange() {
        try {
            DataChannel.State state = this.mDataChannel.state();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Data channel ");
            sb2.append(this.mDeviceName);
            sb2.append(" state changed: ");
            sb2.append(state);
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Data channel ");
            sb3.append(this.mDeviceName);
            sb3.append(" state exception: ");
            sb3.append(e10);
        }
    }
}
