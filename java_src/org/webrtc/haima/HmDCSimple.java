package org.webrtc.haima;

import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCSimple extends HmDCBase {
    private static final String TAG = "HmDCSimple";
    private Observer mObserver;
    private Object mUserdata;

    public interface Observer {
        void onReceiveMessage(Object obj, String str);
    }

    public HmDCSimple(String str, DataChannel dataChannel, Observer observer, Object obj) {
        super(str, dataChannel);
        this.mObserver = observer;
        this.mUserdata = obj;
    }

    @Override // org.webrtc.haima.HmDCBase
    public void onReceiveMessage(String str) {
        Logging.v(TAG, str);
        Observer observer = this.mObserver;
        if (observer != null) {
            observer.onReceiveMessage(this.mUserdata, str);
        }
    }
}
