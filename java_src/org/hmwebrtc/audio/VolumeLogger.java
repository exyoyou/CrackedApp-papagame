package org.hmwebrtc.audio;

import android.media.AudioManager;
import androidx.annotation.Nullable;
import com.haima.hmcp.ConstantsInternal;
import java.util.Timer;
import java.util.TimerTask;
import org.hmwebrtc.HmAndroidCallbackDirectly;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
class VolumeLogger {
    private static final String TAG = "VolumeLogger";
    private static final String THREAD_NAME = "WebRtcVolumeLevelLoggerThread";
    private static final int TIMER_PERIOD_IN_SECONDS = 30;
    private final AudioManager audioManager;

    @Nullable
    private Timer timer;

    private class LogVolumeTask extends TimerTask {
        private final int maxMusicVolume;
        private final int maxRingVolume;

        LogVolumeTask(int i10, int i11) {
            this.maxRingVolume = i10;
            this.maxMusicVolume = i11;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                int mode = VolumeLogger.this.audioManager.getMode();
                if (mode == 1) {
                    Logging.d(VolumeLogger.TAG, "STREAM_RING stream volume: " + VolumeLogger.this.audioManager.getStreamVolume(2) + " (max=" + this.maxRingVolume + ")");
                } else if (mode == 0) {
                    Logging.d(VolumeLogger.TAG, "NORMAL stream volume: " + VolumeLogger.this.audioManager.getStreamVolume(3) + " (max=" + this.maxMusicVolume + ")");
                }
            } catch (Exception e10) {
                HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "" + e10);
            }
        }
    }

    public VolumeLogger(AudioManager audioManager) {
        this.audioManager = audioManager;
    }

    public void start() {
        Logging.d(TAG, "start" + WebRtcAudioUtils.getThreadInfo());
        if (this.timer != null) {
            return;
        }
        Logging.d(TAG, "audio mode is: " + WebRtcAudioUtils.modeToString(this.audioManager.getMode()));
        Timer timer = new Timer(THREAD_NAME);
        this.timer = timer;
        timer.schedule(new LogVolumeTask(this.audioManager.getStreamMaxVolume(2), this.audioManager.getStreamMaxVolume(3)), 0L, 30000L);
    }

    public void stop() {
        Logging.d(TAG, ConstantsInternal.STOP + WebRtcAudioUtils.getThreadInfo());
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }
}
