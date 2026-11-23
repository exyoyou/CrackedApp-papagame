package io.netty.handler.traffic;

import com.bykv.vk.component.ttvideo.player.C;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class TrafficCounter {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) TrafficCounter.class);
    final AtomicLong checkInterval;
    private final AtomicLong cumulativeReadBytes;
    private final AtomicLong cumulativeWrittenBytes;
    private final AtomicLong currentReadBytes;
    private final AtomicLong currentWrittenBytes;
    final ScheduledExecutorService executor;
    private long lastCumulativeTime;
    private volatile long lastReadBytes;
    private long lastReadThroughput;
    private volatile long lastReadingTime;
    final AtomicLong lastTime;
    private long lastWriteThroughput;
    private volatile long lastWritingTime;
    private volatile long lastWrittenBytes;
    Runnable monitor;
    volatile boolean monitorActive;
    final String name;
    private long readingTime;
    private long realWriteThroughput;
    private final AtomicLong realWrittenBytes;
    volatile ScheduledFuture<?> scheduledFuture;
    final AbstractTrafficShapingHandler trafficShapingHandler;
    private long writingTime;

    private final class TrafficMonitoringTask implements Runnable {
        private TrafficMonitoringTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TrafficCounter.this.monitorActive) {
                TrafficCounter.this.resetAccounting(TrafficCounter.milliSecondFromNano());
                TrafficCounter trafficCounter = TrafficCounter.this;
                AbstractTrafficShapingHandler abstractTrafficShapingHandler = trafficCounter.trafficShapingHandler;
                if (abstractTrafficShapingHandler != null) {
                    abstractTrafficShapingHandler.doAccounting(trafficCounter);
                }
            }
        }
    }

    public TrafficCounter(ScheduledExecutorService scheduledExecutorService, String str, long j10) {
        this.currentWrittenBytes = new AtomicLong();
        this.currentReadBytes = new AtomicLong();
        this.cumulativeWrittenBytes = new AtomicLong();
        this.cumulativeReadBytes = new AtomicLong();
        this.lastTime = new AtomicLong();
        this.realWrittenBytes = new AtomicLong();
        this.checkInterval = new AtomicLong(1000L);
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
        this.trafficShapingHandler = null;
        this.executor = scheduledExecutorService;
        init(j10);
    }

    private void init(long j10) {
        this.lastCumulativeTime = System.currentTimeMillis();
        long jMilliSecondFromNano = milliSecondFromNano();
        this.writingTime = jMilliSecondFromNano;
        this.readingTime = jMilliSecondFromNano;
        this.lastWritingTime = jMilliSecondFromNano;
        this.lastReadingTime = this.writingTime;
        configure(j10);
    }

    public static long milliSecondFromNano() {
        return System.nanoTime() / C.MICROS_PER_SECOND;
    }

    void bytesRealWriteFlowControl(long j10) {
        this.realWrittenBytes.addAndGet(j10);
    }

    void bytesRecvFlowControl(long j10) {
        this.currentReadBytes.addAndGet(j10);
        this.cumulativeReadBytes.addAndGet(j10);
    }

    void bytesWriteFlowControl(long j10) {
        this.currentWrittenBytes.addAndGet(j10);
        this.cumulativeWrittenBytes.addAndGet(j10);
    }

    public long checkInterval() {
        return this.checkInterval.get();
    }

    public void configure(long j10) {
        long j11 = (j10 / 10) * 10;
        if (this.checkInterval.getAndSet(j11) != j11) {
            if (j11 <= 0) {
                stop();
                this.lastTime.set(milliSecondFromNano());
            } else {
                stop();
                start();
            }
        }
    }

    public long cumulativeReadBytes() {
        return this.cumulativeReadBytes.get();
    }

    public long cumulativeWrittenBytes() {
        return this.cumulativeWrittenBytes.get();
    }

    public long currentReadBytes() {
        return this.currentReadBytes.get();
    }

    public long currentWrittenBytes() {
        return this.currentWrittenBytes.get();
    }

    public long getRealWriteThroughput() {
        return this.realWriteThroughput;
    }

    public AtomicLong getRealWrittenBytes() {
        return this.realWrittenBytes;
    }

    public long lastCumulativeTime() {
        return this.lastCumulativeTime;
    }

    public long lastReadBytes() {
        return this.lastReadBytes;
    }

    public long lastReadThroughput() {
        return this.lastReadThroughput;
    }

    public long lastTime() {
        return this.lastTime.get();
    }

    public long lastWriteThroughput() {
        return this.lastWriteThroughput;
    }

    public long lastWrittenBytes() {
        return this.lastWrittenBytes;
    }

    public String name() {
        return this.name;
    }

    @Deprecated
    public long readTimeToWait(long j10, long j11, long j12) {
        return readTimeToWait(j10, j11, j12, milliSecondFromNano());
    }

    synchronized void resetAccounting(long j10) {
        long andSet = j10 - this.lastTime.getAndSet(j10);
        if (andSet == 0) {
            return;
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled() && andSet > (checkInterval() << 1)) {
            internalLogger.debug("Acct schedule not ok: " + andSet + " > 2*" + checkInterval() + " from " + this.name);
        }
        this.lastReadBytes = this.currentReadBytes.getAndSet(0L);
        this.lastWrittenBytes = this.currentWrittenBytes.getAndSet(0L);
        this.lastReadThroughput = (this.lastReadBytes * 1000) / andSet;
        this.lastWriteThroughput = (this.lastWrittenBytes * 1000) / andSet;
        this.realWriteThroughput = (this.realWrittenBytes.getAndSet(0L) * 1000) / andSet;
        this.lastWritingTime = Math.max(this.lastWritingTime, this.writingTime);
        this.lastReadingTime = Math.max(this.lastReadingTime, this.readingTime);
    }

    public void resetCumulativeTime() {
        this.lastCumulativeTime = System.currentTimeMillis();
        this.cumulativeReadBytes.set(0L);
        this.cumulativeWrittenBytes.set(0L);
    }

    public synchronized void start() {
        if (this.monitorActive) {
            return;
        }
        this.lastTime.set(milliSecondFromNano());
        long j10 = this.checkInterval.get();
        if (j10 > 0 && this.executor != null) {
            this.monitorActive = true;
            TrafficMonitoringTask trafficMonitoringTask = new TrafficMonitoringTask();
            this.monitor = trafficMonitoringTask;
            this.scheduledFuture = this.executor.scheduleAtFixedRate(trafficMonitoringTask, 0L, j10, TimeUnit.MILLISECONDS);
        }
    }

    public synchronized void stop() {
        if (this.monitorActive) {
            this.monitorActive = false;
            resetAccounting(milliSecondFromNano());
            AbstractTrafficShapingHandler abstractTrafficShapingHandler = this.trafficShapingHandler;
            if (abstractTrafficShapingHandler != null) {
                abstractTrafficShapingHandler.doAccounting(this);
            }
            if (this.scheduledFuture != null) {
                this.scheduledFuture.cancel(true);
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(165);
        sb2.append("Monitor ");
        sb2.append(this.name);
        sb2.append(" Current Speed Read: ");
        sb2.append(this.lastReadThroughput >> 10);
        sb2.append(" KB/s, ");
        sb2.append("Asked Write: ");
        sb2.append(this.lastWriteThroughput >> 10);
        sb2.append(" KB/s, ");
        sb2.append("Real Write: ");
        sb2.append(this.realWriteThroughput >> 10);
        sb2.append(" KB/s, ");
        sb2.append("Current Read: ");
        sb2.append(this.currentReadBytes.get() >> 10);
        sb2.append(" KB, ");
        sb2.append("Current asked Write: ");
        sb2.append(this.currentWrittenBytes.get() >> 10);
        sb2.append(" KB, ");
        sb2.append("Current real Write: ");
        sb2.append(this.realWrittenBytes.get() >> 10);
        sb2.append(" KB");
        return sb2.toString();
    }

    @Deprecated
    public long writeTimeToWait(long j10, long j11, long j12) {
        return writeTimeToWait(j10, j11, j12, milliSecondFromNano());
    }

    public long readTimeToWait(long j10, long j11, long j12, long j13) {
        bytesRecvFlowControl(j10);
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j14 = this.lastTime.get();
        long j15 = this.currentReadBytes.get();
        long j16 = this.readingTime;
        long j17 = this.lastReadBytes;
        long j18 = j13 - j14;
        long jMax = Math.max(this.lastReadingTime - j14, 0L);
        if (j18 > 10) {
            long j19 = (((1000 * j15) / j11) - j18) + jMax;
            if (j19 <= 10) {
                this.readingTime = Math.max(j16, j13);
                return 0L;
            }
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Time: " + j19 + ':' + j15 + ':' + j18 + ':' + jMax);
            }
            if (j19 > j12 && (j13 + j19) - j16 > j12) {
                j19 = j12;
            }
            this.readingTime = Math.max(j16, j13 + j19);
            return j19;
        }
        long j20 = j15 + j17;
        long j21 = j18 + this.checkInterval.get();
        long j22 = (((1000 * j20) / j11) - j21) + jMax;
        if (j22 <= 10) {
            this.readingTime = Math.max(j16, j13);
            return 0L;
        }
        InternalLogger internalLogger2 = logger;
        if (internalLogger2.isDebugEnabled()) {
            internalLogger2.debug("Time: " + j22 + ':' + j20 + ':' + j21 + ':' + jMax);
        }
        if (j22 > j12 && (j13 + j22) - j16 > j12) {
            j22 = j12;
        }
        this.readingTime = Math.max(j16, j13 + j22);
        return j22;
    }

    public long writeTimeToWait(long j10, long j11, long j12, long j13) {
        bytesWriteFlowControl(j10);
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j14 = this.lastTime.get();
        long j15 = this.currentWrittenBytes.get();
        long j16 = this.lastWrittenBytes;
        long j17 = this.writingTime;
        long jMax = Math.max(this.lastWritingTime - j14, 0L);
        long j18 = j13 - j14;
        if (j18 > 10) {
            long j19 = (((1000 * j15) / j11) - j18) + jMax;
            if (j19 <= 10) {
                this.writingTime = Math.max(j17, j13);
                return 0L;
            }
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Time: " + j19 + ':' + j15 + ':' + j18 + ':' + jMax);
            }
            if (j19 > j12 && (j13 + j19) - j17 > j12) {
                j19 = j12;
            }
            this.writingTime = Math.max(j17, j13 + j19);
            return j19;
        }
        long j20 = j15 + j16;
        long j21 = j18 + this.checkInterval.get();
        long j22 = (((1000 * j20) / j11) - j21) + jMax;
        if (j22 <= 10) {
            this.writingTime = Math.max(j17, j13);
            return 0L;
        }
        InternalLogger internalLogger2 = logger;
        if (internalLogger2.isDebugEnabled()) {
            internalLogger2.debug("Time: " + j22 + ':' + j20 + ':' + j21 + ':' + jMax);
        }
        if (j22 > j12 && (j13 + j22) - j17 > j12) {
            j22 = j12;
        }
        this.writingTime = Math.max(j17, j13 + j22);
        return j22;
    }

    public TrafficCounter(AbstractTrafficShapingHandler abstractTrafficShapingHandler, ScheduledExecutorService scheduledExecutorService, String str, long j10) {
        this.currentWrittenBytes = new AtomicLong();
        this.currentReadBytes = new AtomicLong();
        this.cumulativeWrittenBytes = new AtomicLong();
        this.cumulativeReadBytes = new AtomicLong();
        this.lastTime = new AtomicLong();
        this.realWrittenBytes = new AtomicLong();
        this.checkInterval = new AtomicLong(1000L);
        if (abstractTrafficShapingHandler != null) {
            this.name = (String) ObjectUtil.checkNotNull(str, "name");
            this.trafficShapingHandler = abstractTrafficShapingHandler;
            this.executor = scheduledExecutorService;
            init(j10);
            return;
        }
        throw new IllegalArgumentException("trafficShapingHandler");
    }
}
