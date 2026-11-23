package org.webrtc.haima;

import android.os.Handler;
import android.text.TextUtils;
import java.util.List;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmBandWidthController {
    private static final long kDefaultNotityIntervalMs = 5000;
    public static String kModuleName = "bwc";
    public static String kProboStart = "bwc.start";
    public static String kProboStop = "bwc.stop";
    private final long mNotityIntervalMs;
    private final Observer mObserver;
    private final Handler mObserverHandler;
    private long mPrevAvailableBandWidthKbps;
    private long mPrevNotifyTimeMs;
    private List<Request> mRequestList;
    private State mState;
    private final Object mStateLock;

    public interface Observer {
        void onAvailableBandWidth(long j10);
    }

    private static class Request {
        private Request() {
        }
    }

    private enum State {
        kInited,
        kStarted,
        kStoped,
        kRelease
    }

    public HmBandWidthController(Handler handler, Observer observer) {
        Object obj = new Object();
        this.mStateLock = obj;
        this.mNotityIntervalMs = 5000L;
        this.mPrevNotifyTimeMs = 0L;
        this.mPrevAvailableBandWidthKbps = -1L;
        this.mObserverHandler = handler;
        this.mObserver = observer;
        synchronized (obj) {
            this.mState = State.kInited;
        }
    }

    private void internalStart() {
        synchronized (this.mStateLock) {
            this.mState = State.kStarted;
        }
    }

    private void internalStop() {
        synchronized (this.mStateLock) {
            this.mState = State.kStoped;
        }
    }

    public static boolean isMatchedModuleName(String str) {
        return str != null && kModuleName.equalsIgnoreCase(str);
    }

    private boolean isStarted() {
        boolean z10;
        synchronized (this.mStateLock) {
            z10 = this.mState == State.kStarted;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateAvailableBandWidth$0(long j10) {
        this.mObserver.onAvailableBandWidth(j10);
    }

    public boolean executeCommand(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (kProboStart.equalsIgnoreCase(str.trim())) {
            Logging.d(kModuleName, "executeCommand cmd=" + str);
            internalStart();
            return true;
        }
        if (!kProboStop.equalsIgnoreCase(str.trim())) {
            Logging.d(kModuleName, "executeCommand not implemented! cmd=" + str);
            return false;
        }
        Logging.d(kModuleName, "executeCommand cmd=" + str);
        internalStop();
        return true;
    }

    public void onUpdateAvailableBandWidth(final long j10) {
        Handler handler;
        if (!isStarted() || j10 < 0) {
            return;
        }
        Logging.v(kModuleName, "onUpdateAvailableBandWidth bwKbps:" + j10);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = this.mNotityIntervalMs;
        if (j11 > 0) {
            long j12 = this.mPrevNotifyTimeMs;
            if (j12 > 0 && j12 <= jCurrentTimeMillis && j12 + j11 > jCurrentTimeMillis) {
                return;
            }
        }
        this.mPrevAvailableBandWidthKbps = j10;
        if (this.mObserver == null || (handler = this.mObserverHandler) == null) {
            return;
        }
        this.mPrevNotifyTimeMs = jCurrentTimeMillis;
        handler.post(new Runnable() { // from class: org.webrtc.haima.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f96067b.lambda$onUpdateAvailableBandWidth$0(j10);
            }
        });
    }

    public void start() {
        Logging.d(kModuleName, "start " + hashCode());
        internalStart();
    }

    public void stop() {
        Logging.d(kModuleName, "stop " + hashCode());
        internalStop();
    }
}
