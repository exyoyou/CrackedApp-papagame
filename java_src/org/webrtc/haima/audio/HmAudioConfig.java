package org.webrtc.haima.audio;

import org.hmwebrtc.Logging;
import org.hmwebrtc.audio.AudioDeviceModule;
import org.hmwebrtc.audio.AudioRecordFactory;
import org.hmwebrtc.audio.InputAudioRecordFactory;
import org.hmwebrtc.audio.InputAudioWriter;
import org.hmwebrtc.audio.SharedAudioRecordFactory;

/* JADX INFO: loaded from: classes10.dex */
public class HmAudioConfig {

    /* JADX INFO: Access modifiers changed from: package-private */
    public interface AudioConroller {
        public static final int RECORD_DISABLE = 0;
        public static final int RECORD_EXCLUSIVE = 3;
        public static final int RECORD_EXTERNAL = 1;
        public static final int RECORD_SHARED = 2;

        public static class Config {
            public Integer mAudioInputAudioFormat;
            public Integer mAudioInputSampleRate;
            public Boolean mAudioInputStereo;
            public boolean mInitMuted;
            public int mRecordType;
        }

        boolean mute(boolean z10);

        boolean setParameters(Config config);

        int writePcm(byte[] bArr, int i10, int i11);
    }

    static class AudioConrollerImpl implements AudioConroller {
        private AudioDeviceModule mAdm;
        AudioRecordFactory mAudioFactory;
        AudioConroller.Config mConfig;
        private boolean mInited = false;
        private InputAudioWriter mInputAudioWriter;
        private boolean mMuted;
        private boolean mPreMuteSetted;

        AudioConrollerImpl() {
        }

        private void createFactory() {
            AudioConroller.Config config = this.mConfig;
            int i10 = config.mRecordType;
            if (i10 == 1) {
                InputAudioRecordFactory inputAudioRecordFactory = new InputAudioRecordFactory();
                this.mAudioFactory = inputAudioRecordFactory;
                this.mInputAudioWriter = inputAudioRecordFactory;
            } else if (i10 == 2) {
                this.mAudioFactory = new SharedAudioRecordFactory(config.mInitMuted, true);
            } else {
                if (i10 != 3) {
                    return;
                }
                this.mAudioFactory = null;
            }
        }

        @Override // org.webrtc.haima.audio.HmAudioConfig.AudioConroller
        public boolean mute(boolean z10) {
            this.mMuted = z10;
            if (!this.mInited) {
                this.mPreMuteSetted = true;
            }
            AudioDeviceModule audioDeviceModule = this.mAdm;
            if (audioDeviceModule == null) {
                return false;
            }
            audioDeviceModule.setMicrophoneMute(z10);
            return true;
        }

        public void reset() {
            this.mInited = false;
            this.mAdm = null;
            this.mPreMuteSetted = false;
        }

        public void setAdm(AudioDeviceModule audioDeviceModule) {
            Logging.i("AudioConrollerImpl", "setAdm, mAdm: " + this.mAdm + ", adm: " + audioDeviceModule + ", mMuted: " + this.mMuted);
            this.mAdm = audioDeviceModule;
            mute(this.mMuted);
        }

        public void setInited() {
            this.mInited = true;
        }

        @Override // org.webrtc.haima.audio.HmAudioConfig.AudioConroller
        public boolean setParameters(AudioConroller.Config config) {
            if (this.mInited) {
                return false;
            }
            this.mConfig = config;
            if (this.mPreMuteSetted) {
                config.mInitMuted = this.mMuted;
            } else {
                this.mMuted = config.mInitMuted;
            }
            this.mPreMuteSetted = false;
            createFactory();
            return true;
        }

        @Override // org.webrtc.haima.audio.HmAudioConfig.AudioConroller
        public int writePcm(byte[] bArr, int i10, int i11) {
            InputAudioWriter inputAudioWriter = this.mInputAudioWriter;
            if (inputAudioWriter == null || !this.mInited) {
                return -1;
            }
            return inputAudioWriter.write(bArr, i10, i11);
        }
    }
}
