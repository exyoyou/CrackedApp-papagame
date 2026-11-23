package org.webrtc.haima;

import org.hmwebrtc.HaimaPropertyNames;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCObserverFectl implements HmDCSimple.Observer {
    private static final String TAG = "fec_chn";
    private static final String kClose = "close";
    private static final String kOpen = "open";
    private PeerConnection mPc;

    public HmDCObserverFectl(PeerConnection peerConnection) {
        this.mPc = peerConnection;
    }

    private void handleOpenFec(String str) {
        Logging.d(TAG, "handleOpenFec:" + str);
        if ("open".equalsIgnoreCase(str)) {
            this.mPc.setPropertyLong(HaimaPropertyNames.FEC_CTRL_OPEN, 1L);
        } else if ("close".equalsIgnoreCase(str)) {
            this.mPc.setPropertyLong(HaimaPropertyNames.FEC_CTRL_OPEN, 0L);
        }
    }

    @Override // org.webrtc.haima.HmDCSimple.Observer
    public void onReceiveMessage(Object obj, String str) {
        Logging.v(TAG, str);
        handleOpenFec(str);
    }
}
