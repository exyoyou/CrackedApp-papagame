package sun.misc;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes10.dex */
public class Unsafe {
    public native int addressSize();

    public int arrayBaseOffset(Class cls) {
        throw new RuntimeException("Stub!");
    }

    public native byte getByte(long j10);

    public native int getInt(long j10);

    public native int getInt(Object obj, long j10);

    public native long getLong(long j10);

    public native long getLong(Object obj, long j10);

    public native Object getObject(Object obj, long j10);

    public native short getShort(Object obj, long j10);

    public long objectFieldOffset(Field field) {
        throw new RuntimeException("Stub!");
    }

    public native void putByte(long j10, byte b10);

    public native void putInt(Object obj, long j10, int i10);

    public native void putLong(Object obj, long j10, long j11);

    public native void putObject(Object obj, long j10, Object obj2);
}
