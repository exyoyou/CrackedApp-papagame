package org.hmwebrtc;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.utils.Assert;
import org.hmwebrtc.utils.FiledStringParser;
import org.hmwebrtc.utils.PathUtils;
import org.hmwebrtc.utils.SimpleWorkThread;
import org.hmwebrtc.utils.TimeDiff;

/* JADX INFO: loaded from: classes10.dex */
public class AndroidVideoDecodeSwapBuffer {
    private static final String HMRTC_HWDECODE_BUFFER_V1_CFG = "enable:false,mode:1,bufferSize:1,stat:false";
    private static final String HMRTC_HWDECODE_BUFFER_V1_CFG_FILENAME = "HMRTC-Hw-Swapbuffer-V1.cfg";
    private static final boolean KDebug = false;
    private static final int K_BUFFER_MAX_SIZE = 3;
    private static final long K_DECODE_TIMEOUT_FAST_US = 100;
    private static final long K_DECODE_TIMEOUT_US = 100000;
    public static final int MODE_MAX_VALUE = 3;
    public static final int MODE_MULTI_THREAD_SWAP = 2;
    public static final int MODE_SINGLE_THREAD_SWAP = 1;
    public static final int MODE_STANDARD_SWAP = 0;
    public static final String TAG = "VideoDecodeSwapBuffer";
    private Config mConfig;
    private DecodeFrameBuffer mFrameBuffer;
    private TimeDiff mFrameDropStat;
    private TimeDiff mFrameRenderStat;
    private BaseInput mInput;
    private TimeDiff mInputDiffStat;
    private long mLastLogTimeMs;
    private Output mOutput;

    private abstract class BaseInput implements Input {
        private BaseInput() {
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public long onDecodedFrame(int i10, int i11, int i12, int i13, long j10, Integer num) {
            if (AndroidVideoDecodeSwapBuffer.this.mInputDiffStat == null) {
                return AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
            }
            AndroidVideoDecodeSwapBuffer.this.mInputDiffStat.add();
            AndroidVideoDecodeSwapBuffer.this.getStats();
            return AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
        }

        boolean start() {
            return true;
        }

        void stop() {
        }
    }

    private static class DecodeFrameBuffer {
        private int mCapacity;
        private ArrayList<DecodeFrameInfo> mFrameBuffer = new ArrayList<>();
        private int mReadIndex;
        private int mSize;
        private int mWriteIndex;

        public DecodeFrameBuffer(int i10) {
            i10 = i10 > 3 ? 3 : i10;
            this.mCapacity = i10;
            this.mCapacity = i10 < 0 ? 0 : i10;
            this.mSize = 0;
            this.mWriteIndex = 0;
            this.mReadIndex = 0;
            Logging.d(AndroidVideoDecodeSwapBuffer.TAG, "DecodeFrameInfo capacity:" + this.mCapacity);
            while (this.mFrameBuffer.size() < this.mCapacity) {
                this.mFrameBuffer.add(new DecodeFrameInfo());
            }
        }

        public int capacity() {
            return this.mCapacity;
        }

        public DecodeFrameInfo getReadedFrame(DecodeFrameInfo decodeFrameInfo) {
            if (this.mSize == 0 && decodeFrameInfo == null) {
                return null;
            }
            DecodeFrameInfo decodeFrameInfo2 = this.mFrameBuffer.get(this.mReadIndex);
            this.mReadIndex = (this.mReadIndex + 1) % this.mCapacity;
            this.mSize--;
            if (decodeFrameInfo == null) {
                decodeFrameInfo = new DecodeFrameInfo();
            }
            decodeFrameInfo.outputIndex = decodeFrameInfo2.outputIndex;
            decodeFrameInfo.widht = decodeFrameInfo2.widht;
            decodeFrameInfo.height = decodeFrameInfo2.height;
            decodeFrameInfo.rotation = decodeFrameInfo2.rotation;
            decodeFrameInfo.createTimeMs = decodeFrameInfo2.createTimeMs;
            decodeFrameInfo.presentationTimeUs = decodeFrameInfo2.presentationTimeUs;
            decodeFrameInfo.decodeTimeMs = decodeFrameInfo2.decodeTimeMs;
            return decodeFrameInfo;
        }

        public DecodeFrameInfo getWritedFrame() {
            if (this.mSize >= this.mCapacity) {
                return null;
            }
            DecodeFrameInfo decodeFrameInfo = this.mFrameBuffer.get(this.mWriteIndex);
            int i10 = this.mWriteIndex + 1;
            int i11 = this.mCapacity;
            this.mWriteIndex = i10 % i11;
            int i12 = this.mSize + 1;
            this.mSize = i12;
            if (i12 > i11) {
                this.mSize = i11;
            }
            return decodeFrameInfo;
        }

        public boolean isFull() {
            return this.mSize >= this.mCapacity;
        }

        public int size() {
            return this.mSize;
        }
    }

    private static class DecodeFrameInfo {
        long createTimeMs;
        Integer decodeTimeMs;
        int height;
        int outputIndex;
        long presentationTimeUs;
        int rotation;
        int widht;

        private DecodeFrameInfo() {
        }
    }

    public interface Input {
        long onDecodedFrame(int i10, int i11, int i12, int i13, long j10, Integer num);

        long onDecodedTimeout();

        void onRenderComplete();
    }

    class MultiThreadInput extends BaseInput {
        private SimpleWorkThread mRenderThread;
        private AtomicBoolean mStarted;

        public MultiThreadInput() {
            super();
            Assert.that(AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.capacity() > 0, "MultiThreadInput buffer must greater than 0!");
            Logging.d(AndroidVideoDecodeSwapBuffer.TAG, "new MultiThreadInput:" + hashCode());
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.mStarted = atomicBoolean;
            atomicBoolean.set(false);
            this.mRenderThread = new SimpleWorkThread("renderThread", 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void nextRender() {
            DecodeFrameInfo decodeFrameInfoSyncReadFrame = AndroidVideoDecodeSwapBuffer.this.syncReadFrame();
            if (decodeFrameInfoSyncReadFrame == null || RenderResult.FRAME_STORE != AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(decodeFrameInfoSyncReadFrame) || AndroidVideoDecodeSwapBuffer.this.syncWriteFrame(decodeFrameInfoSyncReadFrame.outputIndex, decodeFrameInfoSyncReadFrame.widht, decodeFrameInfoSyncReadFrame.height, decodeFrameInfoSyncReadFrame.rotation, decodeFrameInfoSyncReadFrame.presentationTimeUs, decodeFrameInfoSyncReadFrame.decodeTimeMs)) {
                return;
            }
            AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(decodeFrameInfoSyncReadFrame.outputIndex);
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.BaseInput, org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public long onDecodedFrame(int i10, int i11, int i12, int i13, long j10, Integer num) {
            DecodeFrameInfo decodeFrameInfoSyncReadFrame;
            super.onDecodedFrame(i10, i11, i12, i13, j10, num);
            if (AndroidVideoDecodeSwapBuffer.this.syncFrameBufferSize() == 0) {
                if (RenderResult.FRAME_STORE != AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(i10, i11, i12, i13, j10, num)) {
                    return AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
                }
            } else if (AndroidVideoDecodeSwapBuffer.this.syncFrameBufferIsFull() && (decodeFrameInfoSyncReadFrame = AndroidVideoDecodeSwapBuffer.this.syncReadFrame()) != null) {
                AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(decodeFrameInfoSyncReadFrame);
            }
            if (AndroidVideoDecodeSwapBuffer.this.syncWriteFrame(i10, i11, i12, i13, j10, num)) {
                this.mRenderThread.setEvent();
            } else {
                AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(i10);
            }
            return AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public long onDecodedTimeout() {
            return AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public void onRenderComplete() {
            if (AndroidVideoDecodeSwapBuffer.this.syncFrameBufferSize() != 0) {
                this.mRenderThread.setEvent();
            }
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.BaseInput
        boolean start() {
            if (this.mStarted.compareAndSet(false, true)) {
                this.mRenderThread.start(new SimpleWorkThread.Work() { // from class: org.hmwebrtc.AndroidVideoDecodeSwapBuffer.MultiThreadInput.1
                    @Override // org.hmwebrtc.utils.SimpleWorkThread.Work
                    public void done() {
                        if (MultiThreadInput.this.mStarted.get()) {
                            MultiThreadInput.this.nextRender();
                        }
                    }
                });
            }
            return true;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.BaseInput
        void stop() {
            this.mStarted.set(false);
            this.mRenderThread.stop();
        }
    }

    public interface Output {
        void dropFrame(int i10);

        RenderResult renderFrame(int i10, int i11, int i12, int i13, long j10, Integer num);
    }

    public enum RenderResult {
        FRAME_DROP,
        FRAME_RENDER,
        FRAME_STORE
    }

    class SingleThreadInput extends BaseInput {
        private final long mDefaultTimeOutUs;
        private final long mFastTimeOutUs;

        public SingleThreadInput() {
            super();
            Logging.d(AndroidVideoDecodeSwapBuffer.TAG, "new SingleThreadInput:" + hashCode());
            this.mDefaultTimeOutUs = AndroidVideoDecodeSwapBuffer.K_DECODE_TIMEOUT_US;
            this.mFastTimeOutUs = AndroidVideoDecodeSwapBuffer.this.mConfig.fastTimeoutUs;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.BaseInput, org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public long onDecodedFrame(int i10, int i11, int i12, int i13, long j10, Integer num) {
            DecodeFrameInfo readedFrame;
            super.onDecodedFrame(i10, i11, i12, i13, j10, num);
            if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.capacity() == 0) {
                if (RenderResult.FRAME_STORE == AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(i10, i11, i12, i13, j10, num)) {
                    AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(i10);
                }
                return this.mDefaultTimeOutUs;
            }
            if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.size() == 0) {
                if (RenderResult.FRAME_STORE != AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(i10, i11, i12, i13, j10, num)) {
                    return this.mDefaultTimeOutUs;
                }
                if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.isFull()) {
                    AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(i10);
                }
            } else if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.isFull() && (readedFrame = AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.getReadedFrame(null)) != null) {
                AndroidVideoDecodeSwapBuffer.this.cancelDecodedFrame(readedFrame);
            }
            if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.size() == 0 && RenderResult.FRAME_STORE != AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(i10, i11, i12, i13, j10, num)) {
                return this.mDefaultTimeOutUs;
            }
            DecodeFrameInfo writedFrame = AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.getWritedFrame();
            writedFrame.outputIndex = i10;
            writedFrame.widht = i11;
            writedFrame.height = i12;
            writedFrame.rotation = i13;
            writedFrame.presentationTimeUs = j10;
            writedFrame.decodeTimeMs = num;
            return this.mFastTimeOutUs;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public long onDecodedTimeout() {
            if (AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.size() == 0) {
                return this.mDefaultTimeOutUs;
            }
            DecodeFrameInfo readedFrame = AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.getReadedFrame(null);
            if (readedFrame == null) {
                return this.mDefaultTimeOutUs;
            }
            if (RenderResult.FRAME_STORE != AndroidVideoDecodeSwapBuffer.this.renderDecodedFrame(readedFrame)) {
                return this.mDefaultTimeOutUs;
            }
            DecodeFrameInfo writedFrame = AndroidVideoDecodeSwapBuffer.this.mFrameBuffer.getWritedFrame();
            writedFrame.outputIndex = readedFrame.outputIndex;
            writedFrame.widht = readedFrame.widht;
            writedFrame.height = readedFrame.height;
            writedFrame.rotation = readedFrame.rotation;
            writedFrame.presentationTimeUs = readedFrame.presentationTimeUs;
            writedFrame.decodeTimeMs = readedFrame.decodeTimeMs;
            return this.mFastTimeOutUs;
        }

        @Override // org.hmwebrtc.AndroidVideoDecodeSwapBuffer.Input
        public void onRenderComplete() {
        }
    }

    public AndroidVideoDecodeSwapBuffer(Config config, Output output) {
        Assert.that(config != null, "AndroidVideoDecodeSwapBuffer config is null!");
        this.mOutput = output;
        initialize(config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelDecodedFrame(DecodeFrameInfo decodeFrameInfo) {
        cancelDecodedFrame(decodeFrameInfo.outputIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getStats() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mLastLogTimeMs == 0) {
            this.mLastLogTimeMs = jCurrentTimeMillis;
        }
        if (jCurrentTimeMillis >= this.mLastLogTimeMs + 10000) {
            Logging.v(TAG, this.mInputDiffStat.ToString());
            Logging.v(TAG, this.mFrameRenderStat.ToString());
            Logging.v(TAG, this.mFrameDropStat.ToString());
            this.mLastLogTimeMs = jCurrentTimeMillis;
        }
    }

    private void initialize(Config config) {
        this.mConfig = config;
        this.mFrameBuffer = new DecodeFrameBuffer(config.bufferSize);
        if (config.stat) {
            this.mInputDiffStat = new TimeDiff("HMRtc.swapbuffer.input");
            this.mFrameDropStat = new TimeDiff("HMRtc.swapbuffer.drop");
            this.mFrameRenderStat = new TimeDiff("HMRtc.swapbuffer.render");
        }
        this.mLastLogTimeMs = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RenderResult renderDecodedFrame(DecodeFrameInfo decodeFrameInfo) {
        return renderDecodedFrame(decodeFrameInfo.outputIndex, decodeFrameInfo.widht, decodeFrameInfo.height, decodeFrameInfo.rotation, decodeFrameInfo.presentationTimeUs, decodeFrameInfo.decodeTimeMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean syncFrameBufferIsFull() {
        boolean zIsFull;
        synchronized (this.mFrameBuffer) {
            zIsFull = this.mFrameBuffer.isFull();
        }
        return zIsFull;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int syncFrameBufferSize() {
        int size;
        synchronized (this.mFrameBuffer) {
            size = this.mFrameBuffer.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DecodeFrameInfo syncReadFrame() {
        DecodeFrameInfo readedFrame;
        synchronized (this.mFrameBuffer) {
            readedFrame = this.mFrameBuffer.getReadedFrame(null);
        }
        return readedFrame;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean syncWriteFrame(int i10, int i11, int i12, int i13, long j10, Integer num) {
        synchronized (this.mFrameBuffer) {
            DecodeFrameInfo writedFrame = this.mFrameBuffer.getWritedFrame();
            if (writedFrame == null) {
                return false;
            }
            writedFrame.outputIndex = i10;
            writedFrame.widht = i11;
            writedFrame.height = i12;
            writedFrame.rotation = i13;
            writedFrame.presentationTimeUs = j10;
            writedFrame.decodeTimeMs = num;
            return true;
        }
    }

    public Input createInput(int i10) {
        Logging.d(TAG, "createInput mode：" + i10 + " capacity:" + this.mFrameBuffer.capacity());
        if (i10 == 0) {
            Assert.that(this.mFrameBuffer.size() == 0, "standard mode buffer size must = 0 !");
            this.mInput = new SingleThreadInput();
        } else if (1 == i10) {
            this.mInput = new SingleThreadInput();
        } else if (2 == i10) {
            Logging.d(TAG, "createInput MultiThreadInput");
            this.mInput = new MultiThreadInput();
        } else {
            Assert.that(false, " createInput mode invalid!");
        }
        return this.mInput;
    }

    public Config getConfig() {
        return this.mConfig;
    }

    public Input getInput() {
        return this.mInput;
    }

    public void start() {
        Assert.that(this.mInput != null, " input must not null!");
        this.mInput.start();
    }

    public void stop() {
        Assert.that(this.mInput != null, " input must not null!");
        this.mInput.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelDecodedFrame(int i10) {
        this.mOutput.dropFrame(i10);
        TimeDiff timeDiff = this.mFrameDropStat;
        if (timeDiff != null) {
            timeDiff.add();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RenderResult renderDecodedFrame(int i10, int i11, int i12, int i13, long j10, Integer num) {
        RenderResult renderResultRenderFrame = this.mOutput.renderFrame(i10, i11, i12, i13, j10, num);
        TimeDiff timeDiff = this.mFrameRenderStat;
        if (timeDiff != null && renderResultRenderFrame == RenderResult.FRAME_RENDER) {
            timeDiff.add();
        }
        return renderResultRenderFrame;
    }

    public static class Config {
        private int bufferSize;
        public boolean enable;
        private int fallbackMode;
        private long fastTimeoutUs;
        public int mode;
        private boolean stat;

        public Config() {
            Logging.d(AndroidVideoDecodeSwapBuffer.TAG, "load config file:HMRTC-Hw-Swapbuffer-V1.cfg");
            extractValue(new FiledStringParser(PathUtils.Inject.getConfigFile(AndroidVideoDecodeSwapBuffer.HMRTC_HWDECODE_BUFFER_V1_CFG_FILENAME), AndroidVideoDecodeSwapBuffer.HMRTC_HWDECODE_BUFFER_V1_CFG));
        }

        public static boolean HasInjectConfgFile() {
            return PathUtils.Inject.isExistConfigFile(AndroidVideoDecodeSwapBuffer.HMRTC_HWDECODE_BUFFER_V1_CFG_FILENAME);
        }

        private void extractValue(FiledStringParser filedStringParser) {
            this.enable = filedStringParser.getBoolValue("enable", false);
            int intValue = filedStringParser.getIntValue("bufferSize", 0);
            this.bufferSize = intValue;
            if (intValue > 3) {
                this.bufferSize = 3;
            }
            if (this.bufferSize < 0) {
                this.bufferSize = 0;
            }
            int intValue2 = filedStringParser.getIntValue("mode", 0);
            this.mode = intValue2;
            if (intValue2 >= 3 || intValue2 < 0) {
                this.mode = 0;
                this.bufferSize = 0;
            }
            int intValue3 = filedStringParser.getIntValue("fallbackMode", 0);
            this.fallbackMode = intValue3;
            if (intValue3 >= 3 || this.mode < 0) {
                this.fallbackMode = 0;
                this.bufferSize = 0;
            }
            this.stat = filedStringParser.getBoolValue("stat", true);
            this.fastTimeoutUs = filedStringParser.getLongValue("fastTimeoutUs", 100L);
        }

        public int getMode() {
            return this.mode;
        }

        public boolean isEnable() {
            return this.enable;
        }

        public Config(String str) {
            extractValue(new FiledStringParser(str));
        }

        public Config(int i10) {
            extractValue(new FiledStringParser("enable:true,bufferSize:1,stat:false,mode:" + i10));
        }
    }

    public AndroidVideoDecodeSwapBuffer(int i10, Output output, boolean z10) {
        Assert.that(i10 >= 0, "AndroidVideoDecodeSwapBuffer buffersize must >=0");
        Config config = new Config("");
        config.bufferSize = i10;
        config.stat = z10;
        config.enable = true;
        this.mOutput = output;
        initialize(config);
    }
}
