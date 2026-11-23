package com.byazt.fdg;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.util.FieldUtils;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 66})
public class t implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f14132c = Os.sysconf(OsConstants._SC_PAGESIZE);
    public final FileDescriptor tt;
    public final long uj;
    public final long ve;

    public t(FileDescriptor fileDescriptor, long j10, long j11) {
        this.tt = fileDescriptor;
        this.ve = j10;
        this.uj = j11;
    }

    @Override // com.byazt.fdg.sl
    public long c() {
        return this.uj;
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0138 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.byazt.fdg.sl
    public void c(da daVar, long j10, int i10) throws Throwable {
        long j11;
        long jMmap;
        int iIntValue;
        ByteBuffer byteBuffer;
        long j12 = this.ve + j10;
        long j13 = f14132c;
        long j14 = (j12 / j13) * j13;
        int i11 = (int) (j12 - j14);
        long j15 = i10 + i11;
        try {
            try {
                ByteBuffer byteBuffer2 = null;
                if (com.byazt.uq.i.da()) {
                    try {
                        iIntValue = ((Integer) FieldUtils.readField(OsConstants.class.getField("MAP_POPULATE"), (Object) null)).intValue();
                    } catch (IllegalAccessException e10) {
                        com.byazt.bog.a.c(e10);
                        iIntValue = 0;
                    } catch (Exception e11) {
                        com.byazt.bog.a.c(e11);
                        iIntValue = 0;
                    }
                } else {
                    iIntValue = 0;
                }
                jMmap = Os.mmap(0L, j15, OsConstants.PROT_READ, OsConstants.MAP_SHARED | iIntValue, this.tt, j14);
                try {
                    try {
                        if (com.byazt.uq.i.t()) {
                            try {
                                Class<?> cls = Class.forName("java.nio.DirectByteBuffer");
                                Class<?>[] clsArr = {Integer.TYPE, Long.TYPE, FileDescriptor.class, Runnable.class, Boolean.TYPE};
                                Constructor<?> constructor = cls.getConstructor(clsArr);
                                if (constructor == null) {
                                    constructor = cls.getDeclaredConstructor(clsArr);
                                }
                                if (constructor != null) {
                                    constructor.setAccessible(true);
                                    byteBuffer = (ByteBuffer) constructor.newInstance(Integer.valueOf(i10), Long.valueOf(((long) i11) + jMmap), this.tt, null, Boolean.TRUE);
                                    byteBuffer2 = byteBuffer;
                                }
                            } catch (ClassNotFoundException e12) {
                                com.byazt.bog.a.c(e12);
                            } catch (IllegalAccessException e13) {
                                com.byazt.bog.a.c(e13);
                            } catch (InstantiationException e14) {
                                com.byazt.bog.a.c(e14);
                            } catch (InvocationTargetException e15) {
                                com.byazt.bog.a.c(e15);
                            } catch (Exception e16) {
                                com.byazt.bog.a.c(e16);
                            }
                        } else {
                            try {
                                Constructor<?> declaredConstructor = Class.forName("java.nio.DirectByteBuffer").getDeclaredConstructor(Long.TYPE, Integer.TYPE);
                                if (declaredConstructor != null) {
                                    declaredConstructor.setAccessible(true);
                                    byteBuffer = (ByteBuffer) declaredConstructor.newInstance(Long.valueOf(((long) i11) + jMmap), Integer.valueOf(i10));
                                    byteBuffer2 = byteBuffer;
                                }
                            } catch (ClassNotFoundException e17) {
                                com.byazt.bog.a.c(e17);
                            } catch (IllegalAccessException e18) {
                                com.byazt.bog.a.c(e18);
                            } catch (InstantiationException e19) {
                                com.byazt.bog.a.c(e19);
                            } catch (InvocationTargetException e20) {
                                com.byazt.bog.a.c(e20);
                            } catch (Exception e21) {
                                com.byazt.bog.a.c(e21);
                            }
                        }
                        daVar.c(byteBuffer2);
                        if (jMmap != 0) {
                            try {
                                Os.munmap(jMmap, j15);
                            } catch (ErrnoException unused) {
                            }
                        }
                    } catch (ErrnoException e22) {
                        e = e22;
                        throw new IOException("Failed to mmap " + j15 + " bytes", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    j11 = 0;
                    if (jMmap != j11) {
                        try {
                            Os.munmap(jMmap, j15);
                        } catch (ErrnoException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (ErrnoException e23) {
                e = e23;
                jMmap = 0;
            }
        } catch (Throwable th2) {
            th = th2;
            j11 = 0;
            jMmap = 0;
            if (jMmap != j11) {
                Os.munmap(jMmap, j15);
            }
            throw th;
        }
    }
}
