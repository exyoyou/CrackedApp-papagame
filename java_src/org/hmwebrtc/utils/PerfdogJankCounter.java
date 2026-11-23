package org.hmwebrtc.utils;

import java.util.ArrayList;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class PerfdogJankCounter {
    private static final String TAG = "PerfdogJankCounter";
    private static final int kLastFrameMaxCount = 3;
    private ArrayList<Interval> jankIntervalList;
    private int mBigJankCount;
    private long mBigJankTimeMs;
    private Object mDataLock;
    private long mDurationMs;
    private boolean mEnableLog;
    private int mFrameIndex;
    private long mFrameTimeStandardDeviationMs;
    private int mJankCount;
    private JankLog mJankLog;
    private long mJankTimeMs;
    private int mLastFrameCount;
    private int mLastFrameNextIndex;
    private long mLastFrameTimeMs;
    private long[] mLastFrames;
    private String mName;
    private int mSkipSampleCount;
    private long mSkipStartDurationMs;

    public static class Interval {
        public long end;
        public long start;

        public Interval(long j10, long j11) {
            this.start = j10;
            this.end = j11;
        }
    }

    public static class JankInfo {
        public long bigJankCount;
        public long bigJankDuration;
        public long duration;
        public long frameCount;
        public long jankCount;
        public long jankDuration;
        public String jankIntervals;
        public float stutter;
        public long timestampMs;
    }

    class JankLog {
        private int mFirstFrameIndex;
        private int mLastFrameIndex;
        private long mDurationMs = 0;
        private long mJankDurationMs = 0;
        private String mFrameTimeMsList = "";
        private String mBigJankList = "";
        private String mJankList = "";
        private int mJankCount = 0;
        private int mBigJankCount = 0;
        public float mLast1SecondFps = 0.0f;
        public float mLast1SecondStutter = 0.0f;

        public JankLog() {
        }

        private void check() {
            long j10 = this.mDurationMs;
            if (j10 > 1000) {
                this.mLast1SecondFps = ((this.mLastFrameIndex - this.mFirstFrameIndex) * 1000.0f) / j10;
                this.mLast1SecondStutter = this.mJankDurationMs / j10;
                log();
                this.mFirstFrameIndex = 0;
                this.mDurationMs = 0L;
                this.mJankDurationMs = 0L;
                this.mFrameTimeMsList = "";
                this.mBigJankList = "";
                this.mJankList = "";
                this.mJankCount = 0;
                this.mBigJankCount = 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void log() {
            String str = "PerfdogJankCounter-" + PerfdogJankCounter.this.mName;
            Logging.d(str, "Jank:" + this.mJankCount + " bigJank:" + this.mBigJankCount + " JankDurationMs:" + this.mJankDurationMs + " DrationMs:" + this.mDurationMs + " fps:" + this.mLast1SecondFps + " stutter:" + (this.mJankDurationMs / this.mDurationMs) + " indexRange : " + this.mFirstFrameIndex + " - " + this.mLastFrameIndex + " count:" + (this.mLastFrameIndex - this.mFirstFrameIndex));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("        frames: ");
            sb2.append(this.mFrameTimeMsList);
            Logging.d(str, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Jank    frames: ");
            sb3.append(this.mJankList);
            Logging.d(str, sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Bigjank frames: ");
            sb4.append(this.mBigJankList);
            Logging.d(str, sb4.toString());
        }

        public void onBigJank(int i10, long j10) {
            this.mBigJankList += i10 + ",";
            this.mBigJankCount++;
            this.mJankDurationMs += j10;
        }

        public void onJank(int i10, long j10) {
            this.mJankList += i10 + ",";
            this.mJankCount++;
            this.mJankDurationMs += j10;
        }

        public void onRenderFrame(int i10, long j10) {
            if (this.mFrameTimeMsList.length() != 0) {
                this.mFrameTimeMsList += ",";
            } else {
                this.mFirstFrameIndex = i10;
            }
            this.mLastFrameIndex = i10;
            this.mFrameTimeMsList += j10;
            this.mDurationMs += j10;
            check();
        }
    }

    public PerfdogJankCounter(long j10, long j11, boolean z10, String str) {
        this.mDataLock = new Object();
        this.jankIntervalList = new ArrayList<>();
        this.mEnableLog = z10;
        this.mSkipStartDurationMs = j10;
        this.mFrameTimeStandardDeviationMs = j11;
        this.mLastFrameCount = 0;
        this.mLastFrameNextIndex = 0;
        this.mLastFrameTimeMs = 0L;
        this.mLastFrames = new long[3];
        this.mName = str;
        if (str == null || str.length() == 0) {
            this.mName += hashCode();
        }
        this.mFrameTimeStandardDeviationMs = j11;
        reset();
    }

    private long getAvgFrameTimeMs() {
        if (this.mLastFrameCount != 3) {
            return -1L;
        }
        long j10 = 0;
        for (long j11 : this.mLastFrames) {
            j10 += j11;
        }
        return (j10 / 3) + ((long) (j10 % 3 != 0 ? 1 : 0));
    }

    private boolean isBigJank(long j10, long j11) {
        return j10 > this.mFrameTimeStandardDeviationMs + 125 && j10 > j11 * 2;
    }

    private boolean isJank(long j10, long j11) {
        return j10 >= this.mFrameTimeStandardDeviationMs + 84 && j10 > j11 * 2;
    }

    private boolean skipJankCalc() {
        long j10 = this.mSkipStartDurationMs;
        if (j10 > 0 && this.mDurationMs < j10) {
            return true;
        }
        int i10 = this.mSkipSampleCount;
        if (i10 == 0) {
            return false;
        }
        int i11 = i10 - 1;
        this.mSkipSampleCount = i11;
        return i11 > 0;
    }

    private void updateAvgFrameTimeMs(long j10) {
        long[] jArr = this.mLastFrames;
        int i10 = this.mLastFrameNextIndex;
        jArr[i10] = j10;
        int i11 = this.mLastFrameCount;
        if (i11 < 3) {
            this.mLastFrameCount = i11 + 1;
        }
        int i12 = i10 + 1;
        this.mLastFrameNextIndex = i12;
        if (i12 >= 3) {
            this.mLastFrameNextIndex = 0;
        }
    }

    public JankInfo getJankInfo(JankInfo jankInfo) {
        if (jankInfo == null) {
            jankInfo = new JankInfo();
        }
        jankInfo.timestampMs = System.currentTimeMillis();
        synchronized (this.mDataLock) {
            long j10 = this.mDurationMs;
            long j11 = this.mSkipStartDurationMs;
            jankInfo.duration = j10 - j11;
            long j12 = this.mJankTimeMs;
            jankInfo.jankDuration = j12;
            long j13 = this.mBigJankTimeMs;
            jankInfo.bigJankDuration = j13;
            jankInfo.jankCount = this.mJankCount;
            jankInfo.bigJankCount = this.mBigJankCount;
            jankInfo.frameCount = this.mFrameIndex;
            long j14 = j10 - j11;
            if (j14 <= 0) {
                jankInfo.stutter = 0.0f;
            } else {
                jankInfo.stutter = (j12 + j13) / j14;
            }
            String str = "";
            if (this.jankIntervalList.size() > 0) {
                StringBuffer stringBuffer = new StringBuffer();
                for (Interval interval : this.jankIntervalList) {
                    stringBuffer.append(str);
                    stringBuffer.append(interval.start);
                    str = ";";
                    stringBuffer.append(":");
                    stringBuffer.append(interval.end);
                    jankInfo.jankIntervals = stringBuffer.toString();
                }
                this.jankIntervalList.clear();
            } else {
                jankInfo.jankIntervals = "-1:-1";
            }
        }
        return jankInfo;
    }

    public void log() {
        JankLog jankLog = this.mJankLog;
        if (jankLog == null) {
            return;
        }
        jankLog.log();
        Logging.e("PerfdogJankCounter-" + this.mName, "durationMs:" + this.mDurationMs + ",skipStartTimeMs:" + this.mSkipStartDurationMs + ",jankTimeMs:" + (this.mJankTimeMs + this.mBigJankTimeMs) + ",jankCount:" + this.mJankCount + ",bigJankCount:" + this.mBigJankCount + ",sampleCount:" + this.mFrameIndex);
    }

    public void onRenderFrame() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mLastFrameTimeMs == 0) {
            this.mLastFrameTimeMs = jCurrentTimeMillis;
        }
        onRenderFrame(jCurrentTimeMillis - this.mLastFrameTimeMs);
        this.mLastFrameTimeMs = jCurrentTimeMillis;
    }

    public void onRenderFrameTimestamp(long j10) {
        if (this.mLastFrameTimeMs == 0) {
            this.mLastFrameTimeMs = j10;
        }
        onRenderFrame(j10 - this.mLastFrameTimeMs);
        this.mLastFrameTimeMs = j10;
    }

    public void reset() {
        this.mDurationMs = 0L;
        this.mJankCount = 0;
        this.mBigJankCount = 0;
        this.mJankTimeMs = 0L;
        this.mBigJankTimeMs = 0L;
        this.mSkipSampleCount = 0;
        this.mFrameIndex = 0;
        if (this.mEnableLog) {
            this.mJankLog = new JankLog();
        }
    }

    public void onRenderFrame(long j10) {
        synchronized (this.mDataLock) {
            this.mDurationMs += j10;
            this.mFrameIndex++;
            long avgFrameTimeMs = getAvgFrameTimeMs();
            if (avgFrameTimeMs > 0 && !skipJankCalc() && isJank(j10, avgFrameTimeMs)) {
                if (isBigJank(j10, avgFrameTimeMs)) {
                    this.mBigJankCount++;
                    this.mBigJankTimeMs += j10;
                    JankLog jankLog = this.mJankLog;
                    if (jankLog != null) {
                        jankLog.onBigJank(this.mFrameIndex, j10);
                    }
                } else {
                    this.mJankCount++;
                    this.mJankTimeMs += j10;
                    JankLog jankLog2 = this.mJankLog;
                    if (jankLog2 != null) {
                        jankLog2.onJank(this.mFrameIndex, j10);
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.jankIntervalList.add(new Interval(jCurrentTimeMillis - j10, jCurrentTimeMillis));
                this.mSkipSampleCount = 4;
            }
            updateAvgFrameTimeMs(j10);
            JankLog jankLog3 = this.mJankLog;
            if (jankLog3 != null) {
                jankLog3.onRenderFrame(this.mFrameIndex, j10);
            }
        }
    }

    public PerfdogJankCounter() {
        this(0L, 8L, false, "");
    }
}
