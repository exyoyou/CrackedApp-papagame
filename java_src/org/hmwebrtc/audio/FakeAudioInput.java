package org.hmwebrtc.audio;

import android.os.Handler;
import android.os.HandlerThread;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class FakeAudioInput {
    private static final long FILL_INTERVAL_MS = 10;
    private static final String TAG = "FakeAudioInput";
    private byte[] mAudioBuffer;
    private int mAudioBufferCapacity;
    private SimplePcmFile mAudioFile;
    private Handler mAudiohandler;
    private HandlerThread mAudiohandlerThread;
    private Runnable mFillData = new Runnable() { // from class: org.hmwebrtc.audio.FakeAudioInput.1
        @Override // java.lang.Runnable
        public void run() {
            FakeAudioInput.this.fillPcm();
        }
    };
    private long mNextFillTimeMs;
    private OnInputObserver mOnInputObserver;
    private boolean mOpenLog;

    public interface OnInputObserver {
        void OnAudio(byte[] bArr, int i10, int i11);
    }

    public FakeAudioInput(int i10, int i11, int i12, String str, OnInputObserver onInputObserver, boolean z10) {
        this.mAudioFile = new SimplePcmFile(str);
        int iB = (int) ((a.b(i10, i11, i12) * 10) / 1000);
        this.mAudioBufferCapacity = iB;
        this.mAudioBuffer = new byte[iB];
        this.mOnInputObserver = onInputObserver;
        this.mNextFillTimeMs = 0L;
        this.mOpenLog = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillPcm() {
        int i10;
        while (true) {
            SimplePcmFile.Reader reader = this.mAudioFile.getReader();
            if (reader != null) {
                i10 = reader.read(this.mAudioBuffer, 0, this.mAudioBufferCapacity);
                if (i10 >= 0) {
                    break;
                } else {
                    reader.seekBegin();
                }
            } else {
                Logging.d(TAG, "FakeAudioInput read error!  reader==null");
            }
        }
        int i11 = this.mAudioBufferCapacity;
        if (i10 == i11) {
            OnInputObserver onInputObserver = this.mOnInputObserver;
            if (onInputObserver != null) {
                onInputObserver.OnAudio(this.mAudioBuffer, 0, i11);
            }
        } else if (i10 != 0) {
            Logging.d(TAG, "FakeAudioInput read error!  size=" + i10);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = this.mNextFillTimeMs;
        long j11 = j10 < jCurrentTimeMillis ? 10 - (jCurrentTimeMillis - j10) : 10L;
        if (j11 < 0) {
            j11 = 0;
        }
        if (this.mOpenLog) {
            Logging.d(TAG, "FakeAudioInput read pcm  delayedMs:" + j11 + " jitterMs:" + (jCurrentTimeMillis - this.mNextFillTimeMs));
        }
        this.mNextFillTimeMs = jCurrentTimeMillis + j11;
        this.mAudiohandler.postDelayed(this.mFillData, j11);
    }

    public void start() {
        if (this.mAudiohandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread("audio-input-fake");
            this.mAudiohandlerThread = handlerThread;
            handlerThread.start();
            this.mAudiohandler = new Handler(this.mAudiohandlerThread.getLooper());
        }
        this.mNextFillTimeMs = System.currentTimeMillis();
        this.mAudiohandler.postDelayed(this.mFillData, 0L);
    }

    public void stop() {
        if (this.mAudiohandlerThread != null) {
            this.mAudiohandler.removeCallbacks(this.mFillData);
            this.mAudioFile.close();
            this.mAudiohandlerThread.quit();
        }
        this.mAudiohandlerThread = null;
        this.mAudiohandler = null;
    }
}
