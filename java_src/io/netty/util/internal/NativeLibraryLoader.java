package io.netty.util.internal;

import io.netty.util.CharsetUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.PosixFilePermission;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class NativeLibraryLoader {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DELETE_NATIVE_LIB_AFTER_LOADING;
    private static final String NATIVE_RESOURCE_HOME = "META-INF/native/";
    private static final boolean TRY_TO_PATCH_SHADED_ID;
    private static final byte[] UNIQUE_ID_BYTES;
    private static final File WORKDIR;
    private static final InternalLogger logger;

    private static final class NoexecVolumeDetector {
        private NoexecVolumeDetector() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressJava6Requirement(reason = "Usage guarded by java version check")
        public static boolean canExecuteExecutable(File file) throws IOException {
            if (PlatformDependent.javaVersion() < 7 || file.canExecute()) {
                return true;
            }
            Set posixFilePermissions = Files.getPosixFilePermissions(file.toPath(), new LinkOption[0]);
            EnumSet enumSetOf = EnumSet.of(PosixFilePermission.OWNER_EXECUTE, PosixFilePermission.GROUP_EXECUTE, PosixFilePermission.OTHERS_EXECUTE);
            if (posixFilePermissions.containsAll(enumSetOf)) {
                return false;
            }
            EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) posixFilePermissions);
            enumSetCopyOf.addAll(enumSetOf);
            Files.setPosixFilePermissions(file.toPath(), enumSetCopyOf);
            return file.canExecute();
        }
    }

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) NativeLibraryLoader.class);
        logger = internalLoggerFactory;
        UNIQUE_ID_BYTES = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".getBytes(CharsetUtil.US_ASCII);
        String str = SystemPropertyUtil.get("io.netty.native.workdir");
        if (str != null) {
            File file = new File(str);
            file.mkdirs();
            try {
                file = file.getAbsoluteFile();
            } catch (Exception unused) {
            }
            WORKDIR = file;
            logger.debug("-Dio.netty.native.workdir: " + file);
        } else {
            File fileTmpdir = PlatformDependent.tmpdir();
            WORKDIR = fileTmpdir;
            internalLoggerFactory.debug("-Dio.netty.native.workdir: " + fileTmpdir + " (io.netty.tmpdir)");
        }
        boolean z10 = SystemPropertyUtil.getBoolean("io.netty.native.deleteLibAfterLoading", true);
        DELETE_NATIVE_LIB_AFTER_LOADING = z10;
        InternalLogger internalLogger = logger;
        internalLogger.debug("-Dio.netty.native.deleteLibAfterLoading: {}", Boolean.valueOf(z10));
        boolean z11 = SystemPropertyUtil.getBoolean("io.netty.native.tryPatchShadedId", true);
        TRY_TO_PATCH_SHADED_ID = z11;
        internalLogger.debug("-Dio.netty.native.tryPatchShadedId: {}", Boolean.valueOf(z11));
    }

    private NativeLibraryLoader() {
    }

    private static String calculatePackagePrefix() {
        String name = NativeLibraryLoader.class.getName();
        String strReplace = "io!netty!util!internal!NativeLibraryLoader".replace('!', external.org.apache.commons.lang3.d.f90941a);
        if (name.endsWith(strReplace)) {
            return name.substring(0, name.length() - strReplace.length());
        }
        throw new UnsatisfiedLinkError(String.format("Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported", strReplace, name));
    }

    private static byte[] classToByteArray(Class<?> cls) throws ClassNotFoundException {
        String name = cls.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            name = name.substring(iLastIndexOf + 1);
        }
        URL resource = cls.getResource(name + ".class");
        if (resource == null) {
            throw new ClassNotFoundException(cls.getName());
        }
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        InputStream inputStreamOpenStream = null;
        try {
            try {
                inputStreamOpenStream = resource.openStream();
                while (true) {
                    int i10 = inputStreamOpenStream.read(bArr);
                    if (i10 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        closeQuietly(inputStreamOpenStream);
                        closeQuietly(byteArrayOutputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
            } catch (IOException e10) {
                throw new ClassNotFoundException(cls.getName(), e10);
            }
        } catch (Throwable th) {
            closeQuietly(inputStreamOpenStream);
            closeQuietly(byteArrayOutputStream);
            throw th;
        }
    }

    private static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0184 */
    /* JADX WARN: Code duplicated, block: B:107:0x0155 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x00eb A[EDGE_INSN: B:116:0x00eb->B:39:0x00eb BREAK  A[LOOP:0: B:36:0x00e1->B:38:0x00e7], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d9 A[Catch: all -> 0x010c, Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, TryCatch #12 {Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, all -> 0x010c, blocks: (B:32:0x00d3, B:34:0x00d9, B:39:0x00eb, B:35:0x00dd, B:36:0x00e1, B:38:0x00e7), top: B:110:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00dd A[Catch: all -> 0x010c, Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, TryCatch #12 {Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, all -> 0x010c, blocks: (B:32:0x00d3, B:34:0x00d9, B:39:0x00eb, B:35:0x00dd, B:36:0x00e1, B:38:0x00e7), top: B:110:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e7 A[Catch: all -> 0x010c, Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, LOOP:0: B:36:0x00e1->B:38:0x00e7, LOOP_END, TryCatch #12 {Exception -> 0x010f, UnsatisfiedLinkError -> 0x0111, all -> 0x010c, blocks: (B:32:0x00d3, B:34:0x00d9, B:39:0x00eb, B:35:0x00dd, B:36:0x00e1, B:38:0x00e7), top: B:110:0x00d3 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0180 A[Catch: all -> 0x0184, TryCatch #4 {, blocks: (B:88:0x0180, B:89:0x0183, B:87:0x0176, B:78:0x0155, B:80:0x015b, B:82:0x0161, B:84:0x0167), top: B:101:0x0153, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x018f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void load(java.lang.String r11, java.lang.ClassLoader r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.NativeLibraryLoader.load(java.lang.String, java.lang.ClassLoader):void");
    }

    public static void loadFirstAvailable(ClassLoader classLoader, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            try {
                load(str, classLoader);
                return;
            } catch (Throwable th) {
                arrayList.add(th);
                logger.debug("Unable to load the library '{}', trying next name...", str, th);
            }
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Failed to load any of the given libraries: " + Arrays.toString(strArr));
        ThrowableUtil.addSuppressedAndClear(illegalArgumentException, arrayList);
        throw illegalArgumentException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.ClassLoader] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v5, types: [io.netty.util.internal.logging.InternalLogger] */
    private static void loadLibrary(ClassLoader classLoader, String str, boolean z10) {
        try {
            try {
                loadLibraryByHelper(tryToLoadClass(classLoader, NativeLibraryUtil.class), str, z10);
                classLoader = logger;
                classLoader.debug("Successfully loaded the library {}", str);
            } catch (Exception e10) {
                logger.debug("Unable to load the library '{}', trying other loading mechanism.", str, e10);
                NativeLibraryUtil.loadLibrary(str, z10);
                logger.debug("Successfully loaded the library {}", str);
            } catch (UnsatisfiedLinkError e11) {
                logger.debug("Unable to load the library '{}', trying other loading mechanism.", str, e11);
                NativeLibraryUtil.loadLibrary(str, z10);
                logger.debug("Successfully loaded the library {}", str);
            }
        } catch (UnsatisfiedLinkError e12) {
            ThrowableUtil.addSuppressed(e12, (Throwable) classLoader);
            throw e12;
        }
    }

    private static void loadLibraryByHelper(final Class<?> cls, final String str, final boolean z10) throws UnsatisfiedLinkError {
        Object objDoPrivileged = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.NativeLibraryLoader.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    Method method = cls.getMethod("loadLibrary", String.class, Boolean.TYPE);
                    method.setAccessible(true);
                    return method.invoke(null, str, Boolean.valueOf(z10));
                } catch (Exception e10) {
                    return e10;
                }
            }
        });
        if (objDoPrivileged instanceof Throwable) {
            Throwable th = (Throwable) objDoPrivileged;
            Throwable cause = th.getCause();
            if (cause instanceof UnsatisfiedLinkError) {
                throw ((UnsatisfiedLinkError) cause);
            }
            UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(th.getMessage());
            unsatisfiedLinkError.initCause(th);
            throw unsatisfiedLinkError;
        }
    }

    static boolean patchShadedLibraryId(InputStream inputStream, OutputStream outputStream, String str, String str2) throws IOException {
        boolean zPatchShadedLibraryId;
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(inputStream.available());
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 <= 0) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
        byteArrayOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        if (patchShadedLibraryId(byteArray, str, str2)) {
            zPatchShadedLibraryId = true;
        } else {
            String str3 = "_" + PlatformDependent.normalizedOs() + "_" + PlatformDependent.normalizedArch();
            zPatchShadedLibraryId = str.endsWith(str3) ? patchShadedLibraryId(byteArray, str.substring(0, str.length() - str3.length()), str2) : false;
        }
        outputStream.write(byteArray, 0, byteArray.length);
        return zPatchShadedLibraryId;
    }

    private static boolean shouldShadedLibraryIdBePatched(String str) {
        return TRY_TO_PATCH_SHADED_ID && PlatformDependent.isOsx() && !str.isEmpty();
    }

    private static Class<?> tryToLoadClass(final ClassLoader classLoader, final Class<?> cls) throws ClassNotFoundException {
        try {
            return Class.forName(cls.getName(), false, classLoader);
        } catch (ClassNotFoundException e10) {
            if (classLoader == null) {
                throw e10;
            }
            try {
                final byte[] bArrClassToByteArray = classToByteArray(cls);
                return (Class) AccessController.doPrivileged(new PrivilegedAction<Class<?>>() { // from class: io.netty.util.internal.NativeLibraryLoader.2
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.security.PrivilegedAction
                    public Class<?> run() {
                        try {
                            Class cls2 = Integer.TYPE;
                            Method declaredMethod = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls2, cls2);
                            declaredMethod.setAccessible(true);
                            return (Class) declaredMethod.invoke(classLoader, cls.getName(), bArrClassToByteArray, 0, Integer.valueOf(bArrClassToByteArray.length));
                        } catch (Exception e11) {
                            throw new IllegalStateException("Define class failed!", e11);
                        }
                    }
                });
            } catch (ClassNotFoundException e11) {
                ThrowableUtil.addSuppressed(e11, e10);
                throw e11;
            } catch (Error e12) {
                ThrowableUtil.addSuppressed(e12, e10);
                throw e12;
            } catch (RuntimeException e13) {
                ThrowableUtil.addSuppressed(e13, e10);
                throw e13;
            }
        }
    }

    private static boolean patchShadedLibraryId(byte[] bArr, String str, String str2) {
        byte[] bytes = str.getBytes(CharsetUtil.UTF_8);
        int i10 = 0;
        loop0: while (true) {
            if (i10 >= bArr.length || bArr.length - i10 < bytes.length) {
                i10 = -1;
                break;
            }
            int i11 = i10;
            int i12 = 0;
            while (i12 < bytes.length) {
                int i13 = i11 + 1;
                int i14 = i12 + 1;
                if (bArr[i11] != bytes[i12]) {
                    break;
                }
                if (i14 == bytes.length) {
                    break loop0;
                }
                i11 = i13;
                i12 = i14;
            }
            i10++;
        }
        if (i10 == -1) {
            logger.debug("Was not able to find the ID of the shaded native library {}, can't adjust it.", str2);
            return false;
        }
        for (int i15 = 0; i15 < bytes.length; i15++) {
            byte[] bArr2 = UNIQUE_ID_BYTES;
            bArr[i10 + i15] = bArr2[PlatformDependent.threadLocalRandom().nextInt(bArr2.length)];
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("Found the ID of the shaded native library {}. Replacing ID part {} with {}", str2, str, new String(bArr, i10, bytes.length, CharsetUtil.UTF_8));
        }
        return true;
    }
}
