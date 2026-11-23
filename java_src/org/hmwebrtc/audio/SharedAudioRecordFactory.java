package org.hmwebrtc.audio;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class SharedAudioRecordFactory implements AudioRecordFactory {
    private static final String TAG = "SharedAudioRecordFactory";
    private boolean mInitMute;
    private boolean mSupportTimeout;

    static class SharedAudioRecord extends WrappedAudioRecord {
        private boolean mIsTimeout;
        private AtomicBoolean mMuteAudio;
        private Object mSignalObj;
        private boolean mSupportTimeout;

        public SharedAudioRecord(int i10, int i11, int i12, int i13, int i14, boolean z10, boolean z11) {
            super(i10, i11, i12, i13, i14);
            this.mSignalObj = new Object();
            this.mIsTimeout = false;
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.mMuteAudio = atomicBoolean;
            atomicBoolean.set(z10);
            this.mSupportTimeout = z11;
            if (z10) {
                return;
            }
            initRecord();
        }

        private void CheckReCreate() {
            Logging.v(SharedAudioRecordFactory.TAG, "muted: " + this.mMuteAudio.get() + ", systemAudioRecord: " + getSystemAudioRecord());
            if (this.mMuteAudio.get() && getSystemAudioRecord() != null) {
                super.stop();
                super.release();
                Logging.d(SharedAudioRecordFactory.TAG, "mute release record!");
            }
            if (this.mMuteAudio.get() || getSystemAudioRecord() != null) {
                return;
            }
            initRecord();
            super.startRecording();
            Logging.d(SharedAudioRecordFactory.TAG, "mute startRecording record!");
        }

        private void notifyCheck() {
            synchronized (this.mSignalObj) {
                this.mSignalObj.notify();
            }
        }

        @Override // org.hmwebrtc.audio.WrappedAudioRecord, org.hmwebrtc.audio.IAudioRecord
        public boolean isTimeout() {
            if (this.mSupportTimeout) {
                return this.mIsTimeout;
            }
            return false;
        }

        @Override // org.hmwebrtc.audio.WrappedAudioRecord, org.hmwebrtc.audio.IAudioRecord
        public int read(ByteBuffer byteBuffer, int i10) {
            CheckReCreate();
            this.mIsTimeout = false;
            if (!this.mMuteAudio.get()) {
                return super.read(byteBuffer, i10);
            }
            try {
                synchronized (this.mSignalObj) {
                    this.mSignalObj.wait(10L);
                }
            } catch (Exception unused) {
            }
            this.mIsTimeout = true;
            return -1;
        }

        @Override // org.hmwebrtc.audio.WrappedAudioRecord, org.hmwebrtc.audio.IAudioRecord
        public boolean setMicrophoneMute(boolean z10) {
            Logging.d(SharedAudioRecordFactory.TAG, "setMicrophoneMute " + z10);
            this.mMuteAudio.set(z10);
            notifyCheck();
            return true;
        }
    }

    public SharedAudioRecordFactory(boolean z10, boolean z11) {
        this.mInitMute = z10;
        this.mSupportTimeout = z11;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public IAudioRecord create(int i10, int i11, int i12, int i13, int i14) {
        return new SharedAudioRecord(i10, i11, i12, i13, i14, this.mInitMute, this.mSupportTimeout);
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAecSupported() {
        return true;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAgcSupported() {
        return true;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isNSSupported() {
        return true;
    }

    public SharedAudioRecordFactory() {
        this(true, true);
    }
}
