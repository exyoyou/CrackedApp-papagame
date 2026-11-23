package org.webrtc.haima;

import java.util.HashMap;
import java.util.Iterator;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;

/* JADX INFO: loaded from: classes10.dex */
public class HmTransDeviceManager {
    private static final String TAG = "HmTransDeviceManager";
    private HashMap<String, HmTransDeviceImpl> mDeviceMap = new HashMap<>();

    public HmTransDevice createDevice(PeerConnection peerConnection, String str, int i10, HmTransDevice.Observer observer) {
        HmTransDeviceImpl hmTransDeviceImpl = new HmTransDeviceImpl();
        if (!hmTransDeviceImpl.init(peerConnection, str, i10, observer)) {
            return null;
        }
        this.mDeviceMap.put(str, hmTransDeviceImpl);
        Logging.d(TAG, "Add transport device " + str + " to manager");
        return hmTransDeviceImpl;
    }

    public void release() {
        Iterator<HmTransDeviceImpl> it2 = this.mDeviceMap.values().iterator();
        while (it2.hasNext()) {
            it2.next().release();
        }
        this.mDeviceMap.clear();
        Logging.d(TAG, "Release all trnasport device");
    }
}
