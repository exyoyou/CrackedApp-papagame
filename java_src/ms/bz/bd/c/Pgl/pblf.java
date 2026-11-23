package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.byazt.nys.tt;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pblf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f94416c = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "b3b209", new byte[]{125, com.sigmob.sdk.archives.tar.e.H, 95, 69, BinaryMemcacheOpcodes.INCREMENTQ, 34});

    public static int c(Context context) {
        InputStream inputStreamOpen;
        int i10 = 255;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(tt.c(context).getAbsolutePath());
            int i11 = 0;
            sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a04928", new byte[]{Utf8.REPLACEMENT_BYTE}));
            String str = f94416c;
            sb2.append(str);
            String string = sb2.toString();
            File file = new File(string);
            if (file.exists()) {
                i10 = 2;
                file.delete();
            }
            inputStreamOpen = context.getResources().getAssets().open(str);
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i12 = inputStreamOpen.read(bArr, 0, 4096);
                        if (i12 == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, i12);
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(string);
                    fileOutputStream.write(byteArrayOutputStream2.toByteArray());
                    fileOutputStream.close();
                    if (byteArrayOutputStream2.size() <= 0) {
                        i11 = 3;
                    } else if (!new File(string).exists()) {
                        i11 = i10;
                    }
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        byteArrayOutputStream2.close();
                        return i11;
                    } catch (Throwable unused2) {
                        return i11;
                    }
                } catch (Throwable unused3) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7f3c49", new byte[]{39, com.sigmob.sdk.archives.tar.e.T, ByteCompanionObject.MAX_VALUE, 16});
                        return i10;
                    } finally {
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable unused5) {
                            }
                        }
                    }
                }
            } catch (Throwable unused6) {
            }
        } catch (Throwable unused7) {
            inputStreamOpen = null;
        }
    }
}
