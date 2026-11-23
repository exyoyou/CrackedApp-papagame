package org.webrtc.haima;

import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcCommandFilter implements HmRtcCommandListener {
    public static final int STATE_CLOSE = 2;
    public static final int STATE_OPEN = 1;
    public static final String TAG = "HmRtcCommandFilter";
    private static int mGeneratedId = 1;
    private boolean mLastOnAvailableState = false;
    private Listener mListener;
    private ProcessThread mProcessThread;

    static class ChannelState {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public int f96063id;
        public boolean opened;

        public ChannelState(int i10, boolean z10) {
            this.f96063id = i10;
            this.opened = z10;
        }
    }

    static abstract class ChannelStateRunnable implements Runnable {
        public ChannelState state;

        public ChannelStateRunnable(ChannelState channelState) {
            this.state = channelState;
        }
    }

    public interface Listener {
        void onBinMessage(byte[] bArr);

        void onInputTransportState(int i10);

        void onTextMessage(String str);
    }

    public interface ProcessThread {
        void postRunnable(Runnable runnable, long j10);
    }

    public HmRtcCommandFilter(ProcessThread processThread, Listener listener) {
        this.mProcessThread = processThread;
        this.mListener = listener;
        Logging.w(TAG, "HmRtcCommandFilter ctor ");
    }

    void handleCommandChannelAvailable(ChannelState channelState) {
        if (channelState == null) {
            Logging.e(TAG, "handleCommandChannelAvailable state is null");
            return;
        }
        if (channelState.f96063id != mGeneratedId) {
            Logging.e(TAG, "handleCommandChannelAvailable rtc closed " + channelState.f96063id + " " + mGeneratedId);
            return;
        }
        boolean z10 = channelState.opened;
        if (z10 != this.mLastOnAvailableState) {
            Logging.e(TAG, "handleCommandChannelAvailable channel closed");
            return;
        }
        int i10 = z10 ? 1 : 2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleCommandChannelAvailable notify ");
        sb2.append(channelState.opened ? "open" : "close");
        Logging.i(TAG, sb2.toString());
        try {
            this.mListener.onInputTransportState(i10);
        } catch (Exception e10) {
            Logging.w(TAG, "onInputTransportState ex:" + e10.toString());
        }
    }

    public void init() {
        mGeneratedId++;
    }

    @Override // org.webrtc.haima.HmRtcCommandListener
    public void onAvailable(boolean z10) {
        this.mLastOnAvailableState = z10;
        if (z10) {
            Logging.i(TAG, "post delay onAvailable(100ms) mGeneratedId:" + mGeneratedId);
            this.mProcessThread.postRunnable(new ChannelStateRunnable(new ChannelState(mGeneratedId, true)) { // from class: org.webrtc.haima.HmRtcCommandFilter.3
                @Override // java.lang.Runnable
                public void run() {
                    HmRtcCommandFilter.this.handleCommandChannelAvailable(this.state);
                }
            }, 100L);
        }
    }

    @Override // org.webrtc.haima.HmRtcCommandListener
    public void onReceiveBinary(final byte[] bArr) {
        this.mProcessThread.postRunnable(new Runnable() { // from class: org.webrtc.haima.HmRtcCommandFilter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HmRtcCommandFilter.this.mListener.onBinMessage(bArr);
                } catch (Exception e10) {
                    Logging.w(HmRtcCommandFilter.TAG, "onBinMessage ex:" + e10.toString());
                }
            }
        }, 0L);
    }

    @Override // org.webrtc.haima.HmRtcCommandListener
    public void onReceiveText(final String str) {
        this.mProcessThread.postRunnable(new Runnable() { // from class: org.webrtc.haima.HmRtcCommandFilter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HmRtcCommandFilter.this.mListener.onTextMessage(str);
                } catch (Exception e10) {
                    Logging.w(HmRtcCommandFilter.TAG, "onTextMessage ex:" + e10.toString());
                }
            }
        }, 0L);
    }

    public void uninit() {
        mGeneratedId++;
    }
}
