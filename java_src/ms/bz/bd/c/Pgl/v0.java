package ms.bz.bd.c.Pgl;

import android.content.res.AssetManager;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class v0 extends pblz.pgla {
    v0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    protected final Object c(long j10, String str, Object obj) throws Throwable {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        String str2 = str;
        AssetManager assets = pblw.c().tt().getAssets();
        int i10 = 0;
        if (!str2.startsWith((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6ee59e", new byte[]{105}))) {
            str2 = ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "bb1e5e", new byte[]{61})) + str2;
        }
        String str3 = str2;
        String[] list = assets.list("");
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < list.length) {
            if (list[i11].endsWith(str3)) {
                String str4 = list[i11];
                String absolutePath = File.createTempFile((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "78068f", new byte[]{43, 41, 70, 90, BinaryMemcacheOpcodes.REPLACEQ}), "").getAbsolutePath();
                FileOutputStream fileOutputStream2 = null;
                try {
                    inputStreamOpen = assets.open(str4);
                    try {
                        fileOutputStream = new FileOutputStream(absolutePath);
                        try {
                            byte[] bArr = new byte[256];
                            long j11 = 0;
                            while (true) {
                                int i12 = inputStreamOpen.read(bArr);
                                if (i12 <= 0) {
                                    break;
                                }
                                fileOutputStream.write(bArr, i10, i12);
                                j11 += (long) i12;
                                inputStreamOpen = inputStreamOpen;
                                i10 = 0;
                                inputStreamOpen = inputStream;
                                fileOutputStream2 = fileOutputStream;
                                try {
                                    com.byazt.nr.m.c(e);
                                    pblo.c(inputStreamOpen);
                                    pblo.c(fileOutputStream2);
                                } catch (Throwable th) {
                                    th = th;
                                    fileOutputStream = fileOutputStream2;
                                    pblo.c(inputStreamOpen);
                                    pblo.c(fileOutputStream);
                                    throw th;
                                }
                            }
                            inputStream = inputStreamOpen;
                            try {
                                fileOutputStream.flush();
                                if (j11 > 0) {
                                    arrayList.add(absolutePath);
                                }
                                pblo.c(inputStream);
                                pblo.c(fileOutputStream);
                            } catch (IOException e10) {
                                e = e10;
                                inputStreamOpen = inputStream;
                                fileOutputStream2 = fileOutputStream;
                                com.byazt.nr.m.c(e);
                                pblo.c(inputStreamOpen);
                                pblo.c(fileOutputStream2);
                            } catch (Throwable th2) {
                                th = th2;
                                inputStreamOpen = inputStream;
                                pblo.c(inputStreamOpen);
                                pblo.c(fileOutputStream);
                                throw th;
                            }
                        } catch (IOException e11) {
                            e = e11;
                            inputStream = inputStreamOpen;
                        } catch (Throwable th3) {
                            th = th3;
                            inputStream = inputStreamOpen;
                        }
                    } catch (IOException e12) {
                        e = e12;
                    } catch (Throwable th4) {
                        th = th4;
                        fileOutputStream = fileOutputStream2;
                        pblo.c(inputStreamOpen);
                        pblo.c(fileOutputStream);
                        throw th;
                    }
                } catch (IOException e13) {
                    e = e13;
                    inputStreamOpen = null;
                } catch (Throwable th5) {
                    th = th5;
                    inputStreamOpen = null;
                }
            }
            i11++;
            i10 = 0;
        }
        return arrayList.toArray(new String[0]);
    }
}
