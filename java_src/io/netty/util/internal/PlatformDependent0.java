package io.netty.util.internal;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
@SuppressJava6Requirement(reason = "Unsafe access is guarded")
final class PlatformDependent0 {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long ADDRESS_FIELD_OFFSET;
    private static final Method ALLOCATE_ARRAY_METHOD;
    private static final long BYTE_ARRAY_BASE_OFFSET;
    private static final Constructor<?> DIRECT_BUFFER_CONSTRUCTOR;
    private static final Throwable EXPLICIT_NO_UNSAFE_CAUSE;
    static final int HASH_CODE_ASCII_SEED = -1028477387;
    static final int HASH_CODE_C1 = -862048943;
    static final int HASH_CODE_C2 = 461845907;
    private static final Object INTERNAL_UNSAFE;
    private static final boolean IS_ANDROID;
    private static final boolean IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE;
    private static final int JAVA_VERSION;
    private static final boolean UNALIGNED;
    static final Unsafe UNSAFE;
    private static final long UNSAFE_COPY_THRESHOLD = 1048576;
    private static final Throwable UNSAFE_UNAVAILABILITY_CAUSE;
    private static final InternalLogger logger;

    static {
        final ByteBuffer byteBufferAllocateDirect;
        final Unsafe unsafe;
        Field field;
        long jAllocateMemory;
        Constructor<?> constructor;
        boolean zBooleanValue;
        Object obj;
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) PlatformDependent0.class);
        logger = internalLoggerFactory;
        Throwable thExplicitNoUnsafeCause0 = explicitNoUnsafeCause0();
        EXPLICIT_NO_UNSAFE_CAUSE = thExplicitNoUnsafeCause0;
        JAVA_VERSION = javaVersion0();
        IS_ANDROID = isAndroid0();
        IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE = explicitTryReflectionSetAccessible0();
        Method method = null;
        Object obj2 = null;
        method = null;
        method = null;
        method = null;
        if (thExplicitNoUnsafeCause0 != null) {
            byteBufferAllocateDirect = null;
            unsafe = null;
            field = null;
        } else {
            byteBufferAllocateDirect = ByteBuffer.allocateDirect(1);
            Object objDoPrivileged = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    try {
                        Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
                        Throwable thTrySetAccessible = ReflectionUtil.trySetAccessible(declaredField, false);
                        return thTrySetAccessible != null ? thTrySetAccessible : declaredField.get(null);
                    } catch (IllegalAccessException e10) {
                        return e10;
                    } catch (NoClassDefFoundError e11) {
                        return e11;
                    } catch (NoSuchFieldException e12) {
                        return e12;
                    } catch (SecurityException e13) {
                        return e13;
                    }
                }
            });
            if (objDoPrivileged instanceof Throwable) {
                thExplicitNoUnsafeCause0 = (Throwable) objDoPrivileged;
                internalLoggerFactory.debug("sun.misc.Unsafe.theUnsafe: unavailable", thExplicitNoUnsafeCause0);
                unsafe = null;
            } else {
                unsafe = (Unsafe) objDoPrivileged;
                internalLoggerFactory.debug("sun.misc.Unsafe.theUnsafe: available");
            }
            if (unsafe != null) {
                Object objDoPrivileged2 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.2
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        try {
                            Class<?> cls = unsafe.getClass();
                            Class<?> cls2 = Long.TYPE;
                            cls.getDeclaredMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                            return null;
                        } catch (NoSuchMethodException e10) {
                            return e10;
                        } catch (SecurityException e11) {
                            return e11;
                        }
                    }
                });
                if (objDoPrivileged2 == null) {
                    internalLoggerFactory.debug("sun.misc.Unsafe.copyMemory: available");
                } else {
                    thExplicitNoUnsafeCause0 = (Throwable) objDoPrivileged2;
                    internalLoggerFactory.debug("sun.misc.Unsafe.copyMemory: unavailable", thExplicitNoUnsafeCause0);
                    unsafe = null;
                }
            }
            if (unsafe != null) {
                Object objDoPrivileged3 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.3
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        try {
                            Field declaredField = Buffer.class.getDeclaredField("address");
                            if (unsafe.getLong(byteBufferAllocateDirect, unsafe.objectFieldOffset(declaredField)) == 0) {
                                return null;
                            }
                            return declaredField;
                        } catch (NoSuchFieldException e10) {
                            return e10;
                        } catch (SecurityException e11) {
                            return e11;
                        }
                    }
                });
                if (objDoPrivileged3 instanceof Field) {
                    field = (Field) objDoPrivileged3;
                    internalLoggerFactory.debug("java.nio.Buffer.address: available");
                } else {
                    Throwable th = (Throwable) objDoPrivileged3;
                    internalLoggerFactory.debug("java.nio.Buffer.address: unavailable", th);
                    unsafe = null;
                    thExplicitNoUnsafeCause0 = th;
                    field = null;
                }
            } else {
                field = null;
            }
            if (unsafe != null) {
                long jArrayIndexScale = unsafe.arrayIndexScale(byte[].class);
                if (jArrayIndexScale != 1) {
                    internalLoggerFactory.debug("unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe.", Long.valueOf(jArrayIndexScale));
                    thExplicitNoUnsafeCause0 = new UnsupportedOperationException("Unexpected unsafe.arrayIndexScale");
                    unsafe = null;
                }
            }
        }
        UNSAFE_UNAVAILABILITY_CAUSE = thExplicitNoUnsafeCause0;
        UNSAFE = unsafe;
        if (unsafe == null) {
            ADDRESS_FIELD_OFFSET = -1L;
            BYTE_ARRAY_BASE_OFFSET = -1L;
            UNALIGNED = false;
            DIRECT_BUFFER_CONSTRUCTOR = null;
            ALLOCATE_ARRAY_METHOD = null;
        } else {
            try {
                Object objDoPrivileged4 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.4
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        try {
                            Constructor<?> declaredConstructor = byteBufferAllocateDirect.getClass().getDeclaredConstructor(Long.TYPE, Integer.TYPE);
                            Throwable thTrySetAccessible = ReflectionUtil.trySetAccessible(declaredConstructor, true);
                            return thTrySetAccessible != null ? thTrySetAccessible : declaredConstructor;
                        } catch (NoSuchMethodException e10) {
                            return e10;
                        } catch (SecurityException e11) {
                            return e11;
                        }
                    }
                });
                if (objDoPrivileged4 instanceof Constructor) {
                    jAllocateMemory = unsafe.allocateMemory(1L);
                    try {
                        ((Constructor) objDoPrivileged4).newInstance(Long.valueOf(jAllocateMemory), 1);
                        constructor = (Constructor) objDoPrivileged4;
                        internalLoggerFactory.debug("direct buffer constructor: available");
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        constructor = null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (jAllocateMemory != -1) {
                            UNSAFE.freeMemory(jAllocateMemory);
                        }
                        throw th;
                    }
                } else {
                    internalLoggerFactory.debug("direct buffer constructor: unavailable", (Throwable) objDoPrivileged4);
                    constructor = null;
                    jAllocateMemory = -1;
                }
                if (jAllocateMemory != -1) {
                    UNSAFE.freeMemory(jAllocateMemory);
                }
                DIRECT_BUFFER_CONSTRUCTOR = constructor;
                ADDRESS_FIELD_OFFSET = objectFieldOffset(field);
                BYTE_ARRAY_BASE_OFFSET = UNSAFE.arrayBaseOffset(byte[].class);
                Object objDoPrivileged5 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.5
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        try {
                            Class<?> cls = Class.forName("java.nio.Bits", false, PlatformDependent0.getSystemClassLoader());
                            int iJavaVersion = PlatformDependent0.javaVersion();
                            if (iJavaVersion >= 9) {
                                try {
                                    Field declaredField = cls.getDeclaredField(iJavaVersion >= 11 ? "UNALIGNED" : "unaligned");
                                    if (declaredField.getType() == Boolean.TYPE) {
                                        Unsafe unsafe2 = PlatformDependent0.UNSAFE;
                                        return Boolean.valueOf(unsafe2.getBoolean(unsafe2.staticFieldBase(declaredField), unsafe2.staticFieldOffset(declaredField)));
                                    }
                                } catch (NoSuchFieldException unused2) {
                                }
                            }
                            Method declaredMethod = cls.getDeclaredMethod("unaligned", new Class[0]);
                            Throwable thTrySetAccessible = ReflectionUtil.trySetAccessible(declaredMethod, true);
                            return thTrySetAccessible != null ? thTrySetAccessible : declaredMethod.invoke(null, new Object[0]);
                        } catch (ClassNotFoundException e10) {
                            return e10;
                        } catch (IllegalAccessException e11) {
                            return e11;
                        } catch (NoSuchMethodException e12) {
                            return e12;
                        } catch (SecurityException e13) {
                            return e13;
                        } catch (InvocationTargetException e14) {
                            return e14;
                        }
                    }
                });
                if (objDoPrivileged5 instanceof Boolean) {
                    zBooleanValue = ((Boolean) objDoPrivileged5).booleanValue();
                    logger.debug("java.nio.Bits.unaligned: available, {}", Boolean.valueOf(zBooleanValue));
                } else {
                    boolean zMatches = SystemPropertyUtil.get("os.arch", "").matches("^(i[3-6]86|x86(_64)?|x64|amd64)$");
                    logger.debug("java.nio.Bits.unaligned: unavailable {}", Boolean.valueOf(zMatches), (Throwable) objDoPrivileged5);
                    zBooleanValue = zMatches;
                }
                UNALIGNED = zBooleanValue;
                if (javaVersion() >= 9) {
                    final Object objDoPrivileged6 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.6
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            try {
                                return PlatformDependent0.getClassLoader(PlatformDependent0.class).loadClass("jdk.internal.misc.Unsafe").getDeclaredMethod("getUnsafe", new Class[0]).invoke(null, new Object[0]);
                            } catch (Throwable th3) {
                                return th3;
                            }
                        }
                    });
                    if (objDoPrivileged6 instanceof Throwable) {
                        obj = null;
                    } else {
                        Object objDoPrivileged7 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent0.7
                            @Override // java.security.PrivilegedAction
                            public Object run() {
                                try {
                                    return objDoPrivileged6.getClass().getDeclaredMethod("allocateUninitializedArray", Class.class, Integer.TYPE);
                                } catch (NoSuchMethodException e10) {
                                    return e10;
                                } catch (SecurityException e11) {
                                    return e11;
                                }
                            }
                        });
                        if (objDoPrivileged7 instanceof Method) {
                            try {
                                Method method2 = (Method) objDoPrivileged7;
                                obj = objDoPrivileged6;
                                objDoPrivileged6 = objDoPrivileged7;
                                method = method2;
                            } catch (IllegalAccessException | InvocationTargetException e10) {
                                obj = objDoPrivileged6;
                                objDoPrivileged6 = e10;
                            }
                        } else {
                            obj = objDoPrivileged6;
                            objDoPrivileged6 = objDoPrivileged7;
                        }
                    }
                    if (objDoPrivileged6 instanceof Throwable) {
                        logger.debug("jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable", (Throwable) objDoPrivileged6);
                    } else {
                        logger.debug("jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available");
                    }
                } else {
                    logger.debug("jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9");
                    obj = null;
                }
                ALLOCATE_ARRAY_METHOD = method;
                obj2 = obj;
            } catch (Throwable th3) {
                th = th3;
                jAllocateMemory = -1;
            }
        }
        INTERNAL_UNSAFE = obj2;
        logger.debug("java.nio.DirectByteBuffer.<init>(long, int): {}", DIRECT_BUFFER_CONSTRUCTOR != null ? "available" : "unavailable");
    }

    private PlatformDependent0() {
    }

    static int addressSize() {
        return UNSAFE.addressSize();
    }

    static ByteBuffer allocateDirectNoCleaner(int i10) {
        return newDirectBuffer(UNSAFE.allocateMemory(Math.max(1, i10)), i10);
    }

    static long allocateMemory(long j10) {
        return UNSAFE.allocateMemory(j10);
    }

    static byte[] allocateUninitializedArray(int i10) {
        try {
            return (byte[]) ALLOCATE_ARRAY_METHOD.invoke(INTERNAL_UNSAFE, Byte.TYPE, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            throw new Error(e10);
        } catch (InvocationTargetException e11) {
            throw new Error(e11);
        }
    }

    static long byteArrayBaseOffset() {
        return BYTE_ARRAY_BASE_OFFSET;
    }

    static void copyMemory(long j10, long j11, long j12) {
        if (javaVersion() <= 8) {
            copyMemoryWithSafePointPolling(j10, j11, j12);
        } else {
            UNSAFE.copyMemory(j10, j11, j12);
        }
    }

    private static void copyMemoryWithSafePointPolling(long j10, long j11, long j12) {
        while (j12 > 0) {
            long jMin = Math.min(j12, 1048576L);
            UNSAFE.copyMemory(j10, j11, jMin);
            j12 -= jMin;
            j10 += jMin;
            j11 += jMin;
        }
    }

    static long directBufferAddress(ByteBuffer byteBuffer) {
        return getLong(byteBuffer, ADDRESS_FIELD_OFFSET);
    }

    static boolean equals(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13 = i12 & 7;
        long j10 = BYTE_ARRAY_BASE_OFFSET + ((long) i10);
        long j11 = i11 - i10;
        if (i12 >= 8) {
            long j12 = ((long) i13) + j10;
            long j13 = (j10 - 8) + ((long) i12);
            while (j13 >= j12) {
                Unsafe unsafe = UNSAFE;
                long j14 = j12;
                if (unsafe.getLong(bArr, j13) != unsafe.getLong(bArr2, j13 + j11)) {
                    return false;
                }
                j13 -= 8;
                j12 = j14;
            }
        }
        if (i13 >= 4) {
            i13 -= 4;
            long j15 = ((long) i13) + j10;
            Unsafe unsafe2 = UNSAFE;
            if (unsafe2.getInt(bArr, j15) != unsafe2.getInt(bArr2, j15 + j11)) {
                return false;
            }
        }
        long j16 = j11 + j10;
        if (i13 >= 2) {
            Unsafe unsafe3 = UNSAFE;
            return unsafe3.getChar(bArr, j10) == unsafe3.getChar(bArr2, j16) && (i13 == 2 || unsafe3.getByte(bArr, j10 + 2) == unsafe3.getByte(bArr2, j16 + 2));
        }
        if (i13 != 0) {
            Unsafe unsafe4 = UNSAFE;
            if (unsafe4.getByte(bArr, j10) != unsafe4.getByte(bArr2, j16)) {
                return false;
            }
        }
        return true;
    }

    static int equalsConstantTime(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        long j10 = i12 & 7;
        long j11 = BYTE_ARRAY_BASE_OFFSET + ((long) i10);
        long j12 = j11 + j10;
        long j13 = i11 - i10;
        long j14 = 0;
        for (long j15 = (j11 - 8) + ((long) i12); j15 >= j12; j15 -= 8) {
            Unsafe unsafe = UNSAFE;
            j14 |= unsafe.getLong(bArr, j15) ^ unsafe.getLong(bArr2, j15 + j13);
        }
        if (j10 >= 4) {
            Unsafe unsafe2 = UNSAFE;
            j14 |= (long) (unsafe2.getInt(bArr2, j11 + j13) ^ unsafe2.getInt(bArr, j11));
            j10 -= 4;
        }
        if (j10 >= 2) {
            long j16 = j12 - j10;
            Unsafe unsafe3 = UNSAFE;
            j14 |= (long) (unsafe3.getChar(bArr2, j16 + j13) ^ unsafe3.getChar(bArr, j16));
            j10 -= 2;
        }
        if (j10 == 1) {
            long j17 = j12 - 1;
            Unsafe unsafe4 = UNSAFE;
            j14 |= (long) (unsafe4.getByte(bArr, j17) ^ unsafe4.getByte(bArr2, j17 + j13));
        }
        return ConstantTimeUtils.equalsConstantTime(j14, 0L);
    }

    private static Throwable explicitNoUnsafeCause0() {
        boolean z10 = SystemPropertyUtil.getBoolean("io.netty.noUnsafe", false);
        InternalLogger internalLogger = logger;
        internalLogger.debug("-Dio.netty.noUnsafe: {}", Boolean.valueOf(z10));
        if (z10) {
            internalLogger.debug("sun.misc.Unsafe: unavailable (io.netty.noUnsafe)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (io.netty.noUnsafe)");
        }
        String str = SystemPropertyUtil.contains("io.netty.tryUnsafe") ? "io.netty.tryUnsafe" : "org.jboss.netty.tryUnsafe";
        if (SystemPropertyUtil.getBoolean(str, true)) {
            return null;
        }
        String str2 = "sun.misc.Unsafe: unavailable (" + str + ")";
        internalLogger.debug(str2);
        return new UnsupportedOperationException(str2);
    }

    private static boolean explicitTryReflectionSetAccessible0() {
        return SystemPropertyUtil.getBoolean("io.netty.tryReflectionSetAccessible", javaVersion() < 9);
    }

    static void freeMemory(long j10) {
        UNSAFE.freeMemory(j10);
    }

    static byte getByte(long j10) {
        return UNSAFE.getByte(j10);
    }

    static ClassLoader getClassLoader(final Class<?> cls) {
        return System.getSecurityManager() == null ? cls.getClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return cls.getClassLoader();
            }
        });
    }

    static ClassLoader getContextClassLoader() {
        return System.getSecurityManager() == null ? Thread.currentThread().getContextClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return Thread.currentThread().getContextClassLoader();
            }
        });
    }

    static int getInt(Object obj, long j10) {
        return UNSAFE.getInt(obj, j10);
    }

    private static long getLong(Object obj, long j10) {
        return UNSAFE.getLong(obj, j10);
    }

    static Object getObject(Object obj, long j10) {
        return UNSAFE.getObject(obj, j10);
    }

    static short getShort(long j10) {
        return UNSAFE.getShort(j10);
    }

    static ClassLoader getSystemClassLoader() {
        return System.getSecurityManager() == null ? ClassLoader.getSystemClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return ClassLoader.getSystemClassLoader();
            }
        });
    }

    static Throwable getUnsafeUnavailabilityCause() {
        return UNSAFE_UNAVAILABILITY_CAUSE;
    }

    static boolean hasAllocateArrayMethod() {
        return ALLOCATE_ARRAY_METHOD != null;
    }

    static boolean hasDirectBufferNoCleanerConstructor() {
        return DIRECT_BUFFER_CONSTRUCTOR != null;
    }

    static boolean hasUnsafe() {
        return UNSAFE != null;
    }

    static int hashCodeAscii(byte[] bArr, int i10, int i11) {
        int i12;
        long j10 = BYTE_ARRAY_BASE_OFFSET + ((long) i10);
        int i13 = i11 & 7;
        long j11 = ((long) i13) + j10;
        int iHashCodeAsciiSanitize = HASH_CODE_ASCII_SEED;
        for (long j12 = (j10 - 8) + ((long) i11); j12 >= j11; j12 -= 8) {
            iHashCodeAsciiSanitize = hashCodeAsciiCompute(UNSAFE.getLong(bArr, j12), iHashCodeAsciiSanitize);
        }
        if (i13 == 0) {
            return iHashCodeAsciiSanitize;
        }
        boolean z10 = (i13 != 2) & (i13 != 4) & (i13 != 6);
        int i14 = HASH_CODE_C2;
        if (z10) {
            iHashCodeAsciiSanitize = (iHashCodeAsciiSanitize * HASH_CODE_C1) + hashCodeAsciiSanitize(UNSAFE.getByte(bArr, j10));
            j10++;
            i12 = HASH_CODE_C2;
        } else {
            i12 = HASH_CODE_C1;
        }
        if ((i13 != 5) & (i13 != 1) & (i13 != 4)) {
            iHashCodeAsciiSanitize = (iHashCodeAsciiSanitize * i12) + hashCodeAsciiSanitize(UNSAFE.getShort(bArr, j10));
            if (i12 != HASH_CODE_C1) {
                i14 = HASH_CODE_C1;
            }
            j10 += 2;
            i12 = i14;
        }
        return i13 >= 4 ? (iHashCodeAsciiSanitize * i12) + hashCodeAsciiSanitize(UNSAFE.getInt(bArr, j10)) : iHashCodeAsciiSanitize;
    }

    static int hashCodeAsciiCompute(long j10, int i10) {
        return (i10 * HASH_CODE_C1) + (hashCodeAsciiSanitize((int) j10) * HASH_CODE_C2) + ((int) ((j10 & 2242545357458243584L) >>> 32));
    }

    static int hashCodeAsciiSanitize(byte b10) {
        return b10 & 31;
    }

    static boolean isAndroid() {
        return IS_ANDROID;
    }

    private static boolean isAndroid0() {
        boolean zEquals = "Dalvik".equals(SystemPropertyUtil.get("java.vm.name"));
        if (zEquals) {
            logger.debug("Platform: Android");
        }
        return zEquals;
    }

    static boolean isExplicitNoUnsafe() {
        return EXPLICIT_NO_UNSAFE_CAUSE != null;
    }

    static boolean isExplicitTryReflectionSetAccessible() {
        return IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE;
    }

    static boolean isUnaligned() {
        return UNALIGNED;
    }

    static boolean isZero(byte[] bArr, int i10, int i11) {
        if (i11 <= 0) {
            return true;
        }
        long j10 = BYTE_ARRAY_BASE_OFFSET + ((long) i10);
        int i12 = i11 & 7;
        long j11 = ((long) i12) + j10;
        for (long j12 = (j10 - 8) + ((long) i11); j12 >= j11; j12 -= 8) {
            if (UNSAFE.getLong(bArr, j12) != 0) {
                return false;
            }
        }
        if (i12 >= 4) {
            i12 -= 4;
            if (UNSAFE.getInt(bArr, ((long) i12) + j10) != 0) {
                return false;
            }
        }
        if (i12 >= 2) {
            return UNSAFE.getChar(bArr, j10) == 0 && (i12 == 2 || bArr[i10 + 2] == 0);
        }
        return bArr[i10] == 0;
    }

    static int javaVersion() {
        return JAVA_VERSION;
    }

    private static int javaVersion0() {
        int iMajorVersionFromJavaSpecificationVersion = isAndroid0() ? 6 : majorVersionFromJavaSpecificationVersion();
        logger.debug("Java version: {}", Integer.valueOf(iMajorVersionFromJavaSpecificationVersion));
        return iMajorVersionFromJavaSpecificationVersion;
    }

    static int majorVersion(String str) {
        String[] strArrSplit = str.split("\\.");
        int[] iArr = new int[strArrSplit.length];
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            iArr[i10] = Integer.parseInt(strArrSplit[i10]);
        }
        int i11 = iArr[0];
        return i11 == 1 ? iArr[1] : i11;
    }

    static int majorVersionFromJavaSpecificationVersion() {
        return majorVersion(SystemPropertyUtil.get("java.specification.version", "1.6"));
    }

    static ByteBuffer newDirectBuffer(long j10, int i10) {
        ObjectUtil.checkPositiveOrZero(i10, "capacity");
        try {
            return (ByteBuffer) DIRECT_BUFFER_CONSTRUCTOR.newInstance(Long.valueOf(j10), Integer.valueOf(i10));
        } catch (Throwable th) {
            if (th instanceof Error) {
                throw th;
            }
            throw new Error(th);
        }
    }

    static long objectFieldOffset(Field field) {
        return UNSAFE.objectFieldOffset(field);
    }

    static void putByte(long j10, byte b10) {
        UNSAFE.putByte(j10, b10);
    }

    static void putInt(long j10, int i10) {
        UNSAFE.putInt(j10, i10);
    }

    static void putLong(long j10, long j11) {
        UNSAFE.putLong(j10, j11);
    }

    static void putObject(Object obj, long j10, Object obj2) {
        UNSAFE.putObject(obj, j10, obj2);
    }

    static void putShort(long j10, short s10) {
        UNSAFE.putShort(j10, s10);
    }

    static ByteBuffer reallocateDirectNoCleaner(ByteBuffer byteBuffer, int i10) {
        return newDirectBuffer(UNSAFE.reallocateMemory(directBufferAddress(byteBuffer), i10), i10);
    }

    static long reallocateMemory(long j10, long j11) {
        return UNSAFE.reallocateMemory(j10, j11);
    }

    static void setMemory(long j10, long j11, byte b10) {
        UNSAFE.setMemory(j10, j11, b10);
    }

    static void throwException(Throwable th) {
        UNSAFE.throwException((Throwable) ObjectUtil.checkNotNull(th, "cause"));
    }

    static boolean unalignedAccess() {
        return UNALIGNED;
    }

    static byte getByte(byte[] bArr, int i10) {
        return UNSAFE.getByte(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10));
    }

    static int getInt(long j10) {
        return UNSAFE.getInt(j10);
    }

    static long getLong(long j10) {
        return UNSAFE.getLong(j10);
    }

    static short getShort(byte[] bArr, int i10) {
        return UNSAFE.getShort(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10));
    }

    static int hashCodeAsciiSanitize(int i10) {
        return i10 & 522133279;
    }

    static void putByte(byte[] bArr, int i10, byte b10) {
        UNSAFE.putByte(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10), b10);
    }

    static void putInt(byte[] bArr, int i10, int i11) {
        UNSAFE.putInt(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10), i11);
    }

    static void putLong(byte[] bArr, int i10, long j10) {
        UNSAFE.putLong(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10), j10);
    }

    static void putShort(byte[] bArr, int i10, short s10) {
        UNSAFE.putShort(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10), s10);
    }

    static void setMemory(Object obj, long j10, long j11, byte b10) {
        UNSAFE.setMemory(obj, j10, j11, b10);
    }

    private static void copyMemoryWithSafePointPolling(Object obj, long j10, Object obj2, long j11, long j12) {
        long j13 = j10;
        long j14 = j11;
        long j15 = j12;
        while (j15 > 0) {
            long jMin = Math.min(j15, 1048576L);
            UNSAFE.copyMemory(obj, j13, obj2, j14, jMin);
            j15 -= jMin;
            j13 += jMin;
            j14 += jMin;
        }
    }

    static int getInt(byte[] bArr, int i10) {
        return UNSAFE.getInt(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10));
    }

    static long getLong(byte[] bArr, int i10) {
        return UNSAFE.getLong(bArr, BYTE_ARRAY_BASE_OFFSET + ((long) i10));
    }

    static int hashCodeAsciiSanitize(short s10) {
        return s10 & 7967;
    }

    static void copyMemory(Object obj, long j10, Object obj2, long j11, long j12) {
        if (javaVersion() <= 8) {
            copyMemoryWithSafePointPolling(obj, j10, obj2, j11, j12);
        } else {
            UNSAFE.copyMemory(obj, j10, obj2, j11, j12);
        }
    }
}
