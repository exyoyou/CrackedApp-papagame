package com.byazt.p;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.byazt.hs.i;
import com.byazt.nr.m;
import com.byazt.w.a;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TcMouseManager.MOUSE_STARY, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f18609c = 8;
    public static volatile ve tt;
    public c<Integer, Bitmap> ve;

    @com.byazt.zqa.c(c = {0, 1, TcMouseManager.MOUSE_STARY, 24})
    private static class c<K, T> extends LinkedHashMap<K, T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18611c;

        public c(int i10, int i11) {
            super(i11, 0.75f, true);
            this.f18611c = i10;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<K, T> entry) {
            return size() > this.f18611c;
        }
    }

    private ve() {
        this.ve = null;
        int i10 = f18609c;
        this.ve = new c<>(i10, i10 / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteArrayOutputStream tt(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 < 0) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static ve c() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    public Bitmap c(int i10) {
        return this.ve.get(Integer.valueOf(i10));
    }

    public void c(final int i10, final String str) {
        if (TextUtils.isEmpty(str) || c(i10) != null) {
            return;
        }
        com.byazt.zz.ve.u().submit(new Runnable() { // from class: com.byazt.p.ve.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                ByteArrayOutputStream byteArrayOutputStreamTt;
                ByteArrayInputStream byteArrayInputStream;
                Closeable closeable;
                Throwable th;
                InputStream inputStreamC;
                ByteArrayInputStream byteArrayInputStream2;
                Exception e10;
                try {
                    try {
                        i iVarC = com.byazt.zz.ve.c(true, 0, str, null);
                        if (iVarC == null) {
                            a.c(null, null, null, null);
                            return;
                        }
                        inputStreamC = iVarC.c();
                        try {
                            byteArrayOutputStreamTt = ve.tt(inputStreamC);
                            try {
                                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStreamTt.toByteArray());
                                try {
                                    byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStreamTt.toByteArray());
                                    try {
                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                        options.inJustDecodeBounds = true;
                                        BitmapFactory.decodeStream(byteArrayInputStream, null, options);
                                        int iC = com.byazt.z.ve.c(com.byazt.zz.ve.ic(), 44.0f);
                                        options.inSampleSize = ve.c(iC, iC, options);
                                        options.inJustDecodeBounds = false;
                                        ve.this.ve.put(Integer.valueOf(i10), BitmapFactory.decodeStream(byteArrayInputStream2, null, options));
                                        a.c(inputStreamC, byteArrayOutputStreamTt, byteArrayInputStream, byteArrayInputStream2);
                                        return;
                                    } catch (Exception e11) {
                                        e10 = e11;
                                    }
                                } catch (Exception e12) {
                                    byteArrayInputStream2 = null;
                                    e10 = e12;
                                } catch (Throwable th2) {
                                    closeable = null;
                                    th = th2;
                                    a.c(inputStreamC, byteArrayOutputStreamTt, byteArrayInputStream, closeable);
                                    throw th;
                                }
                            } catch (Exception e13) {
                                byteArrayInputStream2 = null;
                                e10 = e13;
                                byteArrayInputStream = null;
                            } catch (Throwable th3) {
                                closeable = null;
                                th = th3;
                                byteArrayInputStream = null;
                            }
                        } catch (Exception e14) {
                            byteArrayInputStream = null;
                            byteArrayInputStream2 = null;
                            e10 = e14;
                            byteArrayOutputStreamTt = null;
                        } catch (Throwable th4) {
                            byteArrayInputStream = null;
                            closeable = null;
                            th = th4;
                            byteArrayOutputStreamTt = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Exception e15) {
                    byteArrayOutputStreamTt = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                    e10 = e15;
                    inputStreamC = null;
                } catch (Throwable th6) {
                    byteArrayOutputStreamTt = null;
                    byteArrayInputStream = null;
                    closeable = null;
                    th = th6;
                    inputStreamC = null;
                }
                m.c(e10);
                a.c(inputStreamC, byteArrayOutputStreamTt, byteArrayInputStream, byteArrayInputStream2);
            }
        });
    }

    public static int c(int i10, int i11, BitmapFactory.Options options) {
        int i12 = options.outWidth;
        if (i12 > i10 || options.outHeight > i11) {
            return Math.min(Math.round(i12 / i10), Math.round(options.outHeight / i11));
        }
        return 1;
    }
}
