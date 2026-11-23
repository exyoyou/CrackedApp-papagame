package org.webrtc.haima.audio;

import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.hmwebrtc.AudioTrack;
import org.hmwebrtc.Logging;
import org.hmwebrtc.MediaConstraints;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.PeerConnectionFactory;
import org.hmwebrtc.audio.JavaAudioDeviceModule;

/* JADX INFO: loaded from: classes10.dex */
public class HmAudioManager {
    private static final String AUDIO_TRACK_ID = "ARDAMSa0";
    private static HmAudioManager mInstance;
    private String TAG = "HmAudioManager";
    HmAudioConfig.AudioConrollerImpl mAudioConroller = new HmAudioConfig.AudioConrollerImpl();

    private HmAudioManager() {
    }

    public static HmAudioManager getInstance() {
        HmAudioManager hmAudioManager = mInstance;
        if (hmAudioManager != null) {
            return hmAudioManager;
        }
        HmAudioManager hmAudioManager2 = new HmAudioManager();
        mInstance = hmAudioManager2;
        return hmAudioManager2;
    }

    public void addPeerConnectTrack(PeerConnection peerConnection, MediaConstraints mediaConstraints, PeerConnectionFactory peerConnectionFactory) {
        List<String> listSingletonList = Collections.singletonList("ARDAMS_AUDIO" + new Random().nextInt());
        AudioTrack audioTrackCreateAudioTrack = peerConnectionFactory.createAudioTrack("ARDAMSa0", peerConnectionFactory.createAudioSource(mediaConstraints));
        audioTrackCreateAudioTrack.setEnabled(true);
        peerConnection.addTrack(audioTrackCreateAudioTrack, listSingletonList);
    }

    public void prepare(HmAudioConfig.AudioConroller.Config config, JavaAudioDeviceModule.Builder builder) {
        if (config == null) {
            config = new HmAudioConfig.AudioConroller.Config();
            config.mInitMuted = true;
            config.mRecordType = 2;
        }
        this.mAudioConroller.setParameters(config);
        if (config.mAudioInputSampleRate != null) {
            builder.setInputSampleRate(this.mAudioConroller.mConfig.mAudioInputSampleRate.intValue());
        }
        Boolean bool = this.mAudioConroller.mConfig.mAudioInputStereo;
        if (bool != null) {
            builder.setUseStereoInput(bool.booleanValue());
        }
        Integer num = this.mAudioConroller.mConfig.mAudioInputAudioFormat;
        if (num != null) {
            builder.setAudioFormat(num.intValue());
        }
        builder.setAudioRecordFactory(this.mAudioConroller.mAudioFactory);
        this.mAudioConroller.setInited();
    }

    public void release() {
        this.mAudioConroller.reset();
    }

    public void setAdm(JavaAudioDeviceModule javaAudioDeviceModule) {
        this.mAudioConroller.setAdm(javaAudioDeviceModule);
    }

    public void startRecord() {
        Logging.i(this.TAG, "Microphone mute = false");
        this.mAudioConroller.mute(false);
    }

    public void stopRecord() {
        this.mAudioConroller.mute(true);
        Logging.i(this.TAG, "Microphone mute = true");
    }
}
