package com.android.dx.rop.code;

import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
public final class AccessFlags {
    public static final int ACC_ABSTRACT = 1024;
    public static final int ACC_ANNOTATION = 8192;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_CONSTRUCTOR = 65536;
    public static final int ACC_DECLARED_SYNCHRONIZED = 131072;
    public static final int ACC_ENUM = 16384;
    public static final int ACC_FINAL = 16;
    public static final int ACC_INTERFACE = 512;
    public static final int ACC_NATIVE = 256;
    public static final int ACC_PRIVATE = 2;
    public static final int ACC_PROTECTED = 4;
    public static final int ACC_PUBLIC = 1;
    public static final int ACC_STATIC = 8;
    public static final int ACC_STRICT = 2048;
    public static final int ACC_SUPER = 32;
    public static final int ACC_SYNCHRONIZED = 32;
    public static final int ACC_SYNTHETIC = 4096;
    public static final int ACC_TRANSIENT = 128;
    public static final int ACC_VARARGS = 128;
    public static final int ACC_VOLATILE = 64;
    public static final int CLASS_FLAGS = 30257;
    private static final int CONV_CLASS = 1;
    private static final int CONV_FIELD = 2;
    private static final int CONV_METHOD = 3;
    public static final int FIELD_FLAGS = 20703;
    public static final int INNER_CLASS_FLAGS = 30239;
    public static final int METHOD_FLAGS = 204287;

    private AccessFlags() {
    }

    public static String classString(int i10) {
        return humanHelper(i10, CLASS_FLAGS, 1);
    }

    public static String fieldString(int i10) {
        return humanHelper(i10, FIELD_FLAGS, 2);
    }

    private static String humanHelper(int i10, int i11, int i12) {
        StringBuilder sb2 = new StringBuilder(80);
        int i13 = (~i11) & i10;
        int i14 = i10 & i11;
        if ((i14 & 1) != 0) {
            sb2.append("|public");
        }
        if ((i14 & 2) != 0) {
            sb2.append("|private");
        }
        if ((i14 & 4) != 0) {
            sb2.append("|protected");
        }
        if ((i14 & 8) != 0) {
            sb2.append("|static");
        }
        if ((i14 & 16) != 0) {
            sb2.append("|final");
        }
        if ((i14 & 32) != 0) {
            if (i12 == 1) {
                sb2.append("|super");
            } else {
                sb2.append("|synchronized");
            }
        }
        if ((i14 & 64) != 0) {
            if (i12 == 3) {
                sb2.append("|bridge");
            } else {
                sb2.append("|volatile");
            }
        }
        if ((i14 & 128) != 0) {
            if (i12 == 3) {
                sb2.append("|varargs");
            } else {
                sb2.append("|transient");
            }
        }
        if ((i14 & 256) != 0) {
            sb2.append("|native");
        }
        if ((i14 & 512) != 0) {
            sb2.append("|interface");
        }
        if ((i14 & 1024) != 0) {
            sb2.append("|abstract");
        }
        if ((i14 & 2048) != 0) {
            sb2.append("|strictfp");
        }
        if ((i14 & 4096) != 0) {
            sb2.append("|synthetic");
        }
        if ((i14 & 8192) != 0) {
            sb2.append("|annotation");
        }
        if ((i14 & 16384) != 0) {
            sb2.append("|enum");
        }
        if ((65536 & i14) != 0) {
            sb2.append("|constructor");
        }
        if ((i14 & 131072) != 0) {
            sb2.append("|declared_synchronized");
        }
        if (i13 != 0 || sb2.length() == 0) {
            sb2.append('|');
            sb2.append(Hex.u2(i13));
        }
        return sb2.substring(1);
    }

    public static String innerClassString(int i10) {
        return humanHelper(i10, INNER_CLASS_FLAGS, 1);
    }

    public static boolean isAbstract(int i10) {
        return (i10 & 1024) != 0;
    }

    public static boolean isAnnotation(int i10) {
        return (i10 & 8192) != 0;
    }

    public static boolean isConstructor(int i10) {
        return (i10 & 65536) != 0;
    }

    public static boolean isDeclaredSynchronized(int i10) {
        return (i10 & 131072) != 0;
    }

    public static boolean isEnum(int i10) {
        return (i10 & 16384) != 0;
    }

    public static boolean isInterface(int i10) {
        return (i10 & 512) != 0;
    }

    public static boolean isNative(int i10) {
        return (i10 & 256) != 0;
    }

    public static boolean isPrivate(int i10) {
        return (i10 & 2) != 0;
    }

    public static boolean isProtected(int i10) {
        return (i10 & 4) != 0;
    }

    public static boolean isPublic(int i10) {
        return (i10 & 1) != 0;
    }

    public static boolean isStatic(int i10) {
        return (i10 & 8) != 0;
    }

    public static boolean isSynchronized(int i10) {
        return (i10 & 32) != 0;
    }

    public static String methodString(int i10) {
        return humanHelper(i10, METHOD_FLAGS, 3);
    }
}
