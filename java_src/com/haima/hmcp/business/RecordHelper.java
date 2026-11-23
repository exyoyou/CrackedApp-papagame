package com.haima.hmcp.business;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Handler;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import com.haima.hmcp.beans.RecordParameter;
import com.haima.hmcp.beans.SdkRecordParameter;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.Source;
import com.haima.hmcp.listeners.AudioRecordSourceCallback;
import com.haima.hmcp.utils.LogUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RecordHelper {
    public static final String FILTER = "Audio-Record: ";
    public static final String TAG = "RecordHelper";
    private static volatile RecordHelper sInstance;
    private AudioRecordSourceCallback mAudioRecordSourceCallback;
    private AudioRecordThread mAudioRecordThread;
    private SdkRecordParameter mCurrentConfig;
    private RecordDataListener recordDataListener;
    private volatile RecordState mState = RecordState.IDLE;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private Source mSource = Source.SDK;
    private boolean mEnable = false;

    private class AudioRecordThread extends Thread {
        private AudioRecord audioRecord;
        private final int bufferSize;

        AudioRecordThread() {
            int minBufferSize = AudioRecord.getMinBufferSize(RecordHelper.this.mCurrentConfig.getSampleRate(), RecordHelper.this.mCurrentConfig.getChannel(), RecordHelper.this.mCurrentConfig.getEncoding());
            this.bufferSize = minBufferSize;
            this.audioRecord = new AudioRecord(1, RecordHelper.this.mCurrentConfig.getSampleRate(), RecordHelper.this.mCurrentConfig.getChannel(), RecordHelper.this.mCurrentConfig.getEncoding(), minBufferSize);
        }

        private void startPcmRecorder() {
            RecordHelper.this.mState = RecordState.RECORDING;
            LogUtils.d(RecordHelper.TAG, "Audio-Record: AudioRecordThread start record: Pcm");
            try {
                this.audioRecord.startRecording();
                int i10 = this.bufferSize;
                byte[] bArr = new byte[i10];
                while (RecordHelper.this.mState == RecordState.RECORDING) {
                    this.audioRecord.read(bArr, 0, i10);
                    RecordHelper.this.notifyData(bArr);
                }
                this.audioRecord.stop();
            } catch (Exception e10) {
                LogUtils.e(RecordHelper.TAG, e10.getMessage());
            }
            LogUtils.d(RecordHelper.TAG, "Audio-Record: 录音结束");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            startPcmRecorder();
        }
    }

    public interface RecordDataListener {
        void onData(byte[] bArr);
    }

    public enum RecordState {
        IDLE,
        RECORDING,
        STOP,
        ERROR
    }

    public static RecordHelper getsInstance() {
        if (sInstance == null) {
            synchronized (RecordHelper.class) {
                if (sInstance == null) {
                    sInstance = new RecordHelper();
                }
            }
        }
        return sInstance;
    }

    private void internalStart(SdkRecordParameter sdkRecordParameter) {
        if (!this.mEnable) {
            LogUtils.e(TAG, "Audio-Record: ROM AudioFlinger is not prepared!");
            return;
        }
        if (sdkRecordParameter == null) {
            LogUtils.e(TAG, "Audio-Record: AudioConfig is null!");
            return;
        }
        if (this.mState != RecordState.IDLE && this.mState != RecordState.STOP) {
            LogUtils.e(TAG, "Audio-Record: 状态异常, 当前状态：" + this.mState.name());
            return;
        }
        LogUtils.d(TAG, "Audio-Record: ----------------开始录制------------------------");
        if (this.mSource != Source.APP) {
            this.mCurrentConfig = sdkRecordParameter;
            AudioRecordThread audioRecordThread = new AudioRecordThread();
            this.mAudioRecordThread = audioRecordThread;
            audioRecordThread.start();
            return;
        }
        if (this.mAudioRecordSourceCallback != null) {
            RecordParameter recordParameter = new RecordParameter();
            recordParameter.setSampleRate(sdkRecordParameter.getSampleRate());
            recordParameter.setChannel(sdkRecordParameter.getChannel());
            this.mAudioRecordSourceCallback.onAudioRecordStart(recordParameter);
            this.mState = RecordState.RECORDING;
            return;
        }
        LogUtils.e(TAG, FILTER + "start audio record failed cause AudioRecordSourceCallback is null");
        CountlyUtil.recordErrorEvent("start audio record failed cause AudioRecordSourceCallback is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyData(final byte[] bArr) {
        if (this.recordDataListener == null) {
            return;
        }
        this.mainHandler.post(new Runnable() { // from class: com.haima.hmcp.business.RecordHelper.1
            @Override // java.lang.Runnable
            public void run() {
                if (RecordHelper.this.recordDataListener != null) {
                    RecordHelper.this.recordDataListener.onData(bArr);
                }
            }
        });
    }

    public Source getSource() {
        return this.mSource;
    }

    public RecordState getState() {
        return this.mState;
    }

    public boolean isPermissionAllowed(Context context) {
        if (this.mSource == Source.APP) {
            return true;
        }
        boolean z10 = ContextCompat.checkSelfPermission(context, "android.permission.RECORD_AUDIO") == 0;
        LogUtils.i(TAG, "Audio-Record: ====isPermissionAllowed=====" + z10);
        return z10;
    }

    public void release() {
        this.recordDataListener = null;
        sInstance = null;
    }

    public void setAudioRecordCallback(AudioRecordSourceCallback audioRecordSourceCallback) {
        this.mAudioRecordSourceCallback = audioRecordSourceCallback;
    }

    public void setEnable(boolean z10) {
        LogUtils.e(TAG, "Audio-Record: set enable: " + z10);
        this.mEnable = z10;
    }

    public void setRecordDataListener(RecordDataListener recordDataListener) {
        this.recordDataListener = recordDataListener;
    }

    public void setSource(Source source) {
        this.mSource = source;
    }

    public void start(List<Integer> list) {
        SdkRecordParameter sdkRecordParameter = new SdkRecordParameter();
        if (list.size() < 4) {
            LogUtils.e(TAG, "Audio-Record: parms is Less than 4!");
            return;
        }
        sdkRecordParameter.setSampleRate(list.get(0).intValue());
        sdkRecordParameter.setChannel(list.get(1).intValue());
        LogUtils.d(TAG, "Audio-Record: Record source：" + this.mSource);
        LogUtils.d(TAG, "Audio-Record: RecordConfig：" + sdkRecordParameter.toString());
        internalStart(sdkRecordParameter);
    }

    public void stop(boolean z10) {
        if (this.mState == RecordState.IDLE) {
            LogUtils.e(TAG, "Audio-Record: stop 状态异常当前状态：" + this.mState.name());
            return;
        }
        LogUtils.d(TAG, "Audio-Record: ----------------停止录制------------------------");
        this.mState = RecordState.STOP;
        if (z10 && this.mSource == Source.APP) {
            AudioRecordSourceCallback audioRecordSourceCallback = this.mAudioRecordSourceCallback;
            if (audioRecordSourceCallback != null) {
                audioRecordSourceCallback.onAudioRecordStop();
                return;
            }
            LogUtils.e(TAG, FILTER + "callback app stop record failed, cause AudioRecordSourceCallback is null");
            CountlyUtil.recordErrorEvent("callback app stop record failed, cause AudioRecordSourceCallback is null");
        }
    }
}
