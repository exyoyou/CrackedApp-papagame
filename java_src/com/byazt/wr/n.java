package com.byazt.wr;

import com.android.internal.util.XmlUtils;
import com.byazt.nr.m;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1361, 46})
public class n implements com.byazt.yy.c, com.byazt.yy.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Method f21660c;
    public static Method tt;
    public static boolean ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f21661n;
    public final com.byazt.iy.ve uj;

    static {
        try {
            f21660c = XmlUtils.class.getDeclaredMethod("readMapXml", InputStream.class);
            tt = XmlUtils.class.getDeclaredMethod("writeMapXml", Map.class, OutputStream.class);
            f21660c.setAccessible(true);
            tt.setAccessible(true);
            ve = true;
        } catch (Exception unused) {
            ve = false;
        }
    }

    public n(com.byazt.iy.ve veVar) {
        this.uj = veVar;
        this.f21661n = false;
    }

    public static boolean c() {
        return ve;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.byazt.yy.c
    public Map<String, Object> c(File file) throws Throwable {
        Exception e10;
        BufferedInputStream bufferedInputStream;
        if (ve && file.exists()) {
            BufferedInputStream bufferedInputStream2 = null;
            if (!file.canRead()) {
                m.tt("PropReaderWriter", "can't read file ".concat(String.valueOf(file)));
                return null;
            }
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 49152);
                try {
                    try {
                        Map<String, Object> mapC = new com.byazt.et.tt().c((Map) f21660c.invoke(null, bufferedInputStream), this.uj, this.f21661n);
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused) {
                        }
                        return mapC;
                    } catch (Exception e11) {
                        e10 = e11;
                        m.tt("XmlReader", "read file exception: ".concat(String.valueOf(file)), e10);
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return Collections.emptyMap();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e10 = e12;
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
                throw th;
            }
        }
        return Collections.emptyMap();
    }

    public n(com.byazt.iy.ve veVar, boolean z10) {
        this.uj = veVar;
        this.f21661n = z10;
    }

    @Override // com.byazt.yy.tt
    public void c(Map<String, Object> map, File file) throws Throwable {
        if (!ve || file == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        if (file.exists()) {
            file.delete();
        } else {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    tt.invoke(null, new com.byazt.et.tt().c(map, this.uj, this.f21661n), fileOutputStream2);
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                } catch (Exception e10) {
                    e = e10;
                    fileOutputStream = fileOutputStream2;
                    m.tt("XmlReader", "write: to file exception: ".concat(String.valueOf(file)), e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
