package org.hmwebrtc.log;

import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
class LogAdapter {
    public static final int DEFAULT_LOG_LEVEL = 2;
    private static final long LOG_THREAD_MAX_LOGSIZE = 50;
    private static final long LOG_THREAD_TIMEOUTMS = 5000;
    private static final String TAG = "LogAdapter";
    private static long mCacheSize = 50;
    private static long mFlushTime = 5000;
    private String[] mDebugTagList;
    private LogThread mLogThread;
    private final long mPid = Process.myPid();
    private int mLevel = 2;
    private volatile boolean mInitializeted = false;
    private SinkAdapter mSinkAdapter = new SinkAdapter();

    static class LogThread extends WorkThread {
        private int mIndex;
        private List<LogApi.LogMessage> mMessages;
        private SinkAdapter mSinks;
        private int sumLogSizeInBytes;

        public LogThread(SinkAdapter sinkAdapter) {
            super(LogAdapter.mFlushTime);
            this.mSinks = sinkAdapter;
            this.mMessages = new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeLogs() {
            ArrayList arrayList = new ArrayList();
            synchronized (this.mMessages) {
                arrayList.addAll(this.mMessages);
                this.mMessages.clear();
                this.sumLogSizeInBytes = 0;
            }
            this.mSinks.onLog(arrayList);
        }

        public void onLog(int i10, LogApi.LogMessage logMessage) {
            synchronized (this.mMessages) {
                this.mMessages.add(logMessage);
                this.sumLogSizeInBytes += logMessage.msg.length();
                this.mMessages.size();
            }
            if (this.sumLogSizeInBytes >= LogAdapter.mCacheSize) {
                setEvent();
            }
        }

        public void start() {
            super.start(new Work() { // from class: org.hmwebrtc.log.LogAdapter.LogThread.1
                @Override // org.hmwebrtc.log.LogAdapter.Work
                public void done() {
                    LogThread.this.writeLogs();
                }
            });
        }
    }

    interface Work {
        void done();
    }

    static class WorkThread {
        private Thread mThread;
        private long mTimeoutMs;
        private Work mWork;
        private final Object mSignal = new Object();
        private AtomicBoolean mExitFlag = new AtomicBoolean(true);

        public WorkThread(long j10) {
            this.mTimeoutMs = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OnExitThread() {
            Work work = this.mWork;
            if (work != null) {
                work.done();
            }
        }

        private void createTread() {
            Thread thread = new Thread("writeLogThread") { // from class: org.hmwebrtc.log.LogAdapter.WorkThread.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (!WorkThread.this.mExitFlag.get()) {
                        try {
                            synchronized (WorkThread.this.mSignal) {
                                try {
                                    if (WorkThread.this.mTimeoutMs > 0) {
                                        WorkThread.this.mSignal.wait(WorkThread.this.mTimeoutMs);
                                    } else {
                                        WorkThread.this.mSignal.wait();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            WorkThread.this.done();
                        } catch (Exception e10) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("wait exception, msg:");
                            sb2.append(e10.toString());
                        }
                    }
                    WorkThread.this.OnExitThread();
                }
            };
            this.mThread = thread;
            thread.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void done() {
            Work work = this.mWork;
            if (work != null) {
                work.done();
            }
        }

        public void setEvent() {
            try {
                synchronized (this.mSignal) {
                    this.mSignal.notify();
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("setEvent exception, msg:");
                sb2.append(e10.toString());
            }
        }

        public void start(Work work) {
            if (this.mExitFlag.get()) {
                this.mWork = work;
                this.mExitFlag.set(false);
                createTread();
            }
        }

        public void stop() {
            try {
                try {
                    this.mExitFlag.set(true);
                    Thread thread = this.mThread;
                    if (thread != null) {
                        thread.stop();
                    }
                } catch (Exception e10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("stop exception, msg:");
                    sb2.append(e10.toString());
                }
            } finally {
                this.mThread = null;
            }
        }
    }

    private boolean onFilter(String str) {
        String[] strArr = this.mDebugTagList;
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        int i10 = 0;
        while (true) {
            String[] strArr2 = this.mDebugTagList;
            if (i10 >= strArr2.length) {
                return true;
            }
            if (strArr2[i10].equals(str)) {
                return false;
            }
            i10++;
        }
    }

    public void addSink(LogApi.LogSink logSink) {
        this.mSinkAdapter.addSink(logSink);
    }

    public int getLevel(int i10) {
        return this.mLevel;
    }

    public int getSinkCount() {
        return this.mSinkAdapter.mSinks.size();
    }

    public boolean initializate(boolean z10) {
        if (this.mInitializeted) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("invalid initializate!  singleThread:");
            sb2.append(z10);
            return false;
        }
        if (!z10) {
            LogThread logThread = new LogThread(this.mSinkAdapter);
            this.mLogThread = logThread;
            logThread.start();
        }
        this.mInitializeted = true;
        return true;
    }

    public void log(int i10, String str, String str2) {
        if (this.mInitializeted && i10 >= this.mLevel && !onFilter(str)) {
            if (str2.length() > 1 && !str2.endsWith("\n")) {
                str2 = str2 + "\n";
            }
            LogApi.LogMessage logMessage = new LogApi.LogMessage();
            logMessage.msg = str2;
            logMessage.tag = str;
            logMessage.time = System.currentTimeMillis();
            logMessage.tid = Thread.currentThread().getId();
            logMessage.pid = this.mPid;
            logMessage.level = i10;
            LogThread logThread = this.mLogThread;
            if (logThread != null) {
                logThread.onLog(i10, logMessage);
            } else {
                this.mSinkAdapter.onLog(i10, logMessage);
            }
        }
    }

    public void removeAll() {
        this.mSinkAdapter.removeAll();
    }

    public void removeSink(LogApi.LogSink logSink) {
        this.mSinkAdapter.removeSink(logSink);
    }

    public void setLevel(int i10) {
        this.mLevel = i10;
    }

    public void terminate() {
        this.mInitializeted = false;
        LogThread logThread = this.mLogThread;
        if (logThread != null) {
            logThread.setEvent();
            this.mLogThread.stop();
        }
        this.mSinkAdapter.removeAll();
    }

    public class SinkAdapter extends LogApi.LogSink {
        List<LogApi.LogSink> mSinks = new ArrayList();

        public SinkAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSink(LogApi.LogSink logSink) {
            synchronized (this.mSinks) {
                try {
                    if (logSink == null) {
                        return;
                    }
                    Iterator<LogApi.LogSink> it2 = this.mSinks.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == logSink) {
                            return;
                        }
                    }
                    this.mSinks.add(logSink);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private List<LogApi.LogSink> getValidSinks() {
            ArrayList arrayList = new ArrayList();
            synchronized (this.mSinks) {
                arrayList.addAll(this.mSinks);
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAll() {
            synchronized (this.mSinks) {
                this.mSinks.clear();
            }
        }

        @Override // org.hmwebrtc.log.LogApi.LogSink
        public void onLog(int i10, LogApi.LogMessage logMessage) {
            Iterator<LogApi.LogSink> it2 = getValidSinks().iterator();
            while (it2.hasNext()) {
                it2.next().onLog(i10, logMessage);
            }
        }

        public void removeSink(LogApi.LogSink logSink) {
            synchronized (this.mSinks) {
                if (logSink != null) {
                    this.mSinks.remove(logSink);
                }
            }
        }

        @Override // org.hmwebrtc.log.LogApi.LogSink
        public void onLog(List<LogApi.LogMessage> list) {
            Iterator<LogApi.LogSink> it2 = getValidSinks().iterator();
            while (it2.hasNext()) {
                it2.next().onLog(list);
            }
        }
    }

    public boolean initializate(boolean z10, long j10, long j11, String[] strArr) {
        if (this.mInitializeted) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("invalid initializate!  singleThread:");
            sb2.append(z10);
            return false;
        }
        mCacheSize = j10;
        mFlushTime = j11;
        this.mDebugTagList = strArr;
        if (!z10) {
            LogThread logThread = new LogThread(this.mSinkAdapter);
            this.mLogThread = logThread;
            logThread.start();
        }
        this.mInitializeted = true;
        return true;
    }
}
