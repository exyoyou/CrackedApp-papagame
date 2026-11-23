package io.netty.util;

import androidx.lifecycle.i;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public class ResourceLeakDetector<T> {
    private static final Level DEFAULT_LEVEL;
    private static final int DEFAULT_SAMPLING_INTERVAL = 128;
    private static final int DEFAULT_TARGET_RECORDS = 4;
    private static final String PROP_LEVEL = "io.netty.leakDetection.level";
    private static final String PROP_LEVEL_OLD = "io.netty.leakDetectionLevel";
    private static final String PROP_SAMPLING_INTERVAL = "io.netty.leakDetection.samplingInterval";
    private static final String PROP_TARGET_RECORDS = "io.netty.leakDetection.targetRecords";
    static final int SAMPLING_INTERVAL;
    private static final int TARGET_RECORDS;
    private static final AtomicReference<String[]> excludedMethods;
    private static Level level;
    private static final InternalLogger logger;
    private final Set<DefaultResourceLeak<?>> allLeaks;
    private final ReferenceQueue<Object> refQueue;
    private final Set<String> reportedLeaks;
    private final String resourceType;
    private final int samplingInterval;

    private static final class DefaultResourceLeak<T> extends WeakReference<Object> implements ResourceLeakTracker<T>, ResourceLeak {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Set<DefaultResourceLeak<?>> allLeaks;
        private volatile int droppedRecords;
        private volatile Record head;
        private final int trackedHash;
        private static final AtomicReferenceFieldUpdater<DefaultResourceLeak<?>, Record> headUpdater = AtomicReferenceFieldUpdater.newUpdater(DefaultResourceLeak.class, Record.class, "head");
        private static final AtomicIntegerFieldUpdater<DefaultResourceLeak<?>> droppedRecordsUpdater = AtomicIntegerFieldUpdater.newUpdater(DefaultResourceLeak.class, "droppedRecords");

        DefaultResourceLeak(Object obj, ReferenceQueue<Object> referenceQueue, Set<DefaultResourceLeak<?>> set) {
            super(obj, referenceQueue);
            this.trackedHash = System.identityHashCode(obj);
            set.add(this);
            headUpdater.set(this, new Record(Record.BOTTOM));
            this.allLeaks = set;
        }

        private static void reachabilityFence0(Object obj) {
            if (obj != null) {
                synchronized (obj) {
                }
            }
        }

        private void record0(Object obj) {
            AtomicReferenceFieldUpdater<DefaultResourceLeak<?>, Record> atomicReferenceFieldUpdater;
            Record record;
            boolean z10;
            Record record2;
            if (ResourceLeakDetector.TARGET_RECORDS > 0) {
                do {
                    atomicReferenceFieldUpdater = headUpdater;
                    record = atomicReferenceFieldUpdater.get(this);
                    if (record == null) {
                        return;
                    }
                    int i10 = record.pos + 1;
                    z10 = false;
                    if (i10 >= ResourceLeakDetector.TARGET_RECORDS) {
                        boolean z11 = PlatformDependent.threadLocalRandom().nextInt(1 << Math.min(i10 - ResourceLeakDetector.TARGET_RECORDS, 30)) != 0;
                        record2 = z11 ? record.next : record;
                        z10 = z11;
                    } else {
                        record2 = record;
                    }
                } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, record, obj != null ? new Record(record2, obj) : new Record(record2)));
                if (z10) {
                    droppedRecordsUpdater.incrementAndGet(this);
                }
            }
        }

        @Override // io.netty.util.ResourceLeak
        public boolean close() {
            if (!this.allLeaks.remove(this)) {
                return false;
            }
            clear();
            headUpdater.set(this, null);
            return true;
        }

        boolean dispose() {
            clear();
            return this.allLeaks.remove(this);
        }

        @Override // io.netty.util.ResourceLeakTracker, io.netty.util.ResourceLeak
        public void record() {
            record0(null);
        }

        public String toString() {
            Record andSet = headUpdater.getAndSet(this, null);
            if (andSet == null) {
                return "";
            }
            int i10 = droppedRecordsUpdater.get(this);
            int i11 = 1;
            int i12 = andSet.pos + 1;
            StringBuilder sb2 = new StringBuilder(i12 * 2048);
            String str = StringUtil.NEWLINE;
            sb2.append(str);
            sb2.append("Recent access records: ");
            sb2.append(str);
            HashSet hashSet = new HashSet(i12);
            int i13 = 0;
            while (andSet != Record.BOTTOM) {
                String string = andSet.toString();
                if (!hashSet.add(string)) {
                    i13++;
                } else if (andSet.next == Record.BOTTOM) {
                    sb2.append("Created at:");
                    sb2.append(StringUtil.NEWLINE);
                    sb2.append(string);
                } else {
                    sb2.append('#');
                    sb2.append(i11);
                    sb2.append(':');
                    sb2.append(StringUtil.NEWLINE);
                    sb2.append(string);
                    i11++;
                }
                andSet = andSet.next;
            }
            if (i13 > 0) {
                sb2.append(": ");
                sb2.append(i13);
                sb2.append(" leak records were discarded because they were duplicates");
                sb2.append(StringUtil.NEWLINE);
            }
            if (i10 > 0) {
                sb2.append(": ");
                sb2.append(i10);
                sb2.append(" leak records were discarded because the leak record count is targeted to ");
                sb2.append(ResourceLeakDetector.TARGET_RECORDS);
                sb2.append(". Use system property ");
                sb2.append(ResourceLeakDetector.PROP_TARGET_RECORDS);
                sb2.append(" to increase the limit.");
                sb2.append(StringUtil.NEWLINE);
            }
            sb2.setLength(sb2.length() - StringUtil.NEWLINE.length());
            return sb2.toString();
        }

        @Override // io.netty.util.ResourceLeakTracker, io.netty.util.ResourceLeak
        public void record(Object obj) {
            record0(obj);
        }

        @Override // io.netty.util.ResourceLeakTracker
        public boolean close(T t10) {
            try {
                return close();
            } finally {
                reachabilityFence0(t10);
            }
        }
    }

    public enum Level {
        DISABLED,
        SIMPLE,
        ADVANCED,
        PARANOID;

        static Level parseLevel(String str) {
            String strTrim = str.trim();
            for (Level level : values()) {
                if (strTrim.equalsIgnoreCase(level.name()) || strTrim.equals(String.valueOf(level.ordinal()))) {
                    return level;
                }
            }
            return ResourceLeakDetector.DEFAULT_LEVEL;
        }
    }

    static {
        Level level2 = Level.SIMPLE;
        DEFAULT_LEVEL = level2;
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) ResourceLeakDetector.class);
        logger = internalLoggerFactory;
        boolean z10 = false;
        if (SystemPropertyUtil.get("io.netty.noResourceLeakDetection") != null) {
            z10 = SystemPropertyUtil.getBoolean("io.netty.noResourceLeakDetection", false);
            internalLoggerFactory.debug("-Dio.netty.noResourceLeakDetection: {}", Boolean.valueOf(z10));
            internalLoggerFactory.warn("-Dio.netty.noResourceLeakDetection is deprecated. Use '-D{}={}' instead.", PROP_LEVEL, level2.name().toLowerCase());
        }
        if (z10) {
            level2 = Level.DISABLED;
        }
        Level level3 = Level.parseLevel(SystemPropertyUtil.get(PROP_LEVEL, SystemPropertyUtil.get(PROP_LEVEL_OLD, level2.name())));
        int i10 = SystemPropertyUtil.getInt(PROP_TARGET_RECORDS, 4);
        TARGET_RECORDS = i10;
        SAMPLING_INTERVAL = SystemPropertyUtil.getInt(PROP_SAMPLING_INTERVAL, 128);
        level = level3;
        if (internalLoggerFactory.isDebugEnabled()) {
            internalLoggerFactory.debug("-D{}: {}", PROP_LEVEL, level3.name().toLowerCase());
            internalLoggerFactory.debug("-D{}: {}", PROP_TARGET_RECORDS, Integer.valueOf(i10));
        }
        excludedMethods = new AtomicReference<>(EmptyArrays.EMPTY_STRINGS);
    }

    @Deprecated
    public ResourceLeakDetector(Class<?> cls) {
        this(StringUtil.simpleClassName(cls));
    }

    public static void addExclusions(Class cls, String... strArr) {
        String[] strArr2;
        String[] strArr3;
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        for (int i10 = 0; i10 < length && (!hashSet.remove(declaredMethods[i10].getName()) || !hashSet.isEmpty()); i10++) {
        }
        if (!hashSet.isEmpty()) {
            throw new IllegalArgumentException("Can't find '" + hashSet + "' in " + cls.getName());
        }
        do {
            strArr2 = excludedMethods.get();
            strArr3 = (String[]) Arrays.copyOf(strArr2, strArr2.length + (strArr.length * 2));
            for (int i11 = 0; i11 < strArr.length; i11++) {
                int i12 = i11 * 2;
                strArr3[strArr2.length + i12] = cls.getName();
                strArr3[strArr2.length + i12 + 1] = strArr[i11];
            }
        } while (!i.a(excludedMethods, strArr2, strArr3));
    }

    private void clearRefQueue() {
        while (true) {
            DefaultResourceLeak defaultResourceLeak = (DefaultResourceLeak) this.refQueue.poll();
            if (defaultResourceLeak == null) {
                return;
            } else {
                defaultResourceLeak.dispose();
            }
        }
    }

    public static Level getLevel() {
        return level;
    }

    public static boolean isEnabled() {
        return getLevel().ordinal() > Level.DISABLED.ordinal();
    }

    private void reportLeak() {
        if (!needReport()) {
            clearRefQueue();
            return;
        }
        while (true) {
            DefaultResourceLeak defaultResourceLeak = (DefaultResourceLeak) this.refQueue.poll();
            if (defaultResourceLeak == null) {
                return;
            }
            if (defaultResourceLeak.dispose()) {
                String string = defaultResourceLeak.toString();
                if (this.reportedLeaks.add(string)) {
                    if (string.isEmpty()) {
                        reportUntracedLeak(this.resourceType);
                    } else {
                        reportTracedLeak(this.resourceType, string);
                    }
                }
            }
        }
    }

    @Deprecated
    public static void setEnabled(boolean z10) {
        setLevel(z10 ? Level.SIMPLE : Level.DISABLED);
    }

    public static void setLevel(Level level2) {
        level = (Level) ObjectUtil.checkNotNull(level2, "level");
    }

    private DefaultResourceLeak track0(T t10) {
        Level level2 = level;
        if (level2 == Level.DISABLED) {
            return null;
        }
        if (level2.ordinal() >= Level.PARANOID.ordinal()) {
            reportLeak();
            return new DefaultResourceLeak(t10, this.refQueue, this.allLeaks);
        }
        if (PlatformDependent.threadLocalRandom().nextInt(this.samplingInterval) != 0) {
            return null;
        }
        reportLeak();
        return new DefaultResourceLeak(t10, this.refQueue, this.allLeaks);
    }

    protected boolean needReport() {
        return logger.isErrorEnabled();
    }

    @Deprecated
    public final ResourceLeak open(T t10) {
        return track0(t10);
    }

    @Deprecated
    protected void reportInstancesLeak(String str) {
    }

    protected void reportTracedLeak(String str, String str2) {
        logger.error("LEAK: {}.release() was not called before it's garbage-collected. See https://netty.io/wiki/reference-counted-objects.html for more information.{}", str, str2);
    }

    protected void reportUntracedLeak(String str) {
        logger.error("LEAK: {}.release() was not called before it's garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option '-D{}={}' or call {}.setLevel() See https://netty.io/wiki/reference-counted-objects.html for more information.", str, PROP_LEVEL, Level.ADVANCED.name().toLowerCase(), StringUtil.simpleClassName(this));
    }

    public final ResourceLeakTracker<T> track(T t10) {
        return track0(t10);
    }

    @Deprecated
    public ResourceLeakDetector(String str) {
        this(str, 128, Long.MAX_VALUE);
    }

    @Deprecated
    public ResourceLeakDetector(Class<?> cls, int i10, long j10) {
        this(cls, i10);
    }

    private static final class Record extends Throwable {
        private static final Record BOTTOM = new Record();
        private static final long serialVersionUID = 6065153674892850720L;
        private final String hintString;
        private final Record next;
        private final int pos;

        Record(Record record, Object obj) {
            this.hintString = obj instanceof ResourceLeakHint ? ((ResourceLeakHint) obj).toHintString() : obj.toString();
            this.next = record;
            this.pos = record.pos + 1;
        }

        @Override // java.lang.Throwable
        public String toString() {
            StringBuilder sb2 = new StringBuilder(2048);
            if (this.hintString != null) {
                sb2.append("\tHint: ");
                sb2.append(this.hintString);
                sb2.append(StringUtil.NEWLINE);
            }
            StackTraceElement[] stackTrace = getStackTrace();
            for (int i10 = 3; i10 < stackTrace.length; i10++) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                String[] strArr = (String[]) ResourceLeakDetector.excludedMethods.get();
                int i11 = 0;
                while (true) {
                    if (i11 >= strArr.length) {
                        sb2.append('\t');
                        sb2.append(stackTraceElement.toString());
                        sb2.append(StringUtil.NEWLINE);
                        break;
                    }
                    if (strArr[i11].equals(stackTraceElement.getClassName()) && strArr[i11 + 1].equals(stackTraceElement.getMethodName())) {
                        break;
                    }
                    i11 += 2;
                }
            }
            return sb2.toString();
        }

        Record(Record record) {
            this.hintString = null;
            this.next = record;
            this.pos = record.pos + 1;
        }

        private Record() {
            this.hintString = null;
            this.next = null;
            this.pos = -1;
        }
    }

    public ResourceLeakDetector(Class<?> cls, int i10) {
        this(StringUtil.simpleClassName(cls), i10, Long.MAX_VALUE);
    }

    @Deprecated
    public ResourceLeakDetector(String str, int i10, long j10) {
        this.allLeaks = Collections.newSetFromMap(new ConcurrentHashMap());
        this.refQueue = new ReferenceQueue<>();
        this.reportedLeaks = Collections.newSetFromMap(new ConcurrentHashMap());
        this.resourceType = (String) ObjectUtil.checkNotNull(str, "resourceType");
        this.samplingInterval = i10;
    }
}
