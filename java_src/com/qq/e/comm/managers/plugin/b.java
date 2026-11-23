package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.qq.e.comm.constants.CustomPkgConstants;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.GDTLogger;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class b {
    static void a(Context context, File file, File file2) throws Exception {
        FileOutputStream fileOutputStream;
        InputStream inputStreamOpen;
        boolean zF;
        AssetManager assets = context.getAssets();
        InputStream inputStream = null;
        try {
            String[] list = assets.list(h.a());
            if (Arrays.binarySearch(list, h.g()) < 0) {
                String str = "Asset Error " + ((list == null || list.length <= 0) ? "no asset" : TextUtils.join(",", list));
                GDTLogger.e(str);
                throw new Exception(str);
            }
            String str2 = h.a() + File.separator + h.g();
            String str3 = Sig.ASSET_PLUGIN_SIG;
            if (str3 == null) {
                str3 = "";
            }
            h.c(context);
            h.e(SDKStatus.getBuildInPluginVersion() + "#####" + str3, file2);
            if (TextUtils.isEmpty(CustomPkgConstants.getAssetPluginXorKey())) {
                zF = h.a(assets.open(str2), file);
                fileOutputStream = null;
            } else {
                inputStreamOpen = assets.open(str2);
                try {
                    if (!file.canWrite()) {
                        file.setWritable(true);
                    }
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bytes = CustomPkgConstants.getAssetPluginXorKey().getBytes(Charset.forName("UTF-8"));
                        byte[] bArr = new byte[1024];
                        int length = bytes.length;
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            int i12 = inputStreamOpen.read(bArr);
                            if (i12 <= 0) {
                                break;
                            }
                            int i13 = 0;
                            while (i13 < i12) {
                                int i14 = i11 + 1;
                                if (i11 >= 64) {
                                    bArr[i13] = (byte) (bytes[i10 % length] ^ bArr[i13]);
                                    i10++;
                                }
                                i13++;
                                i11 = i14;
                            }
                            fileOutputStream.write(bArr, 0, i12);
                        }
                        inputStream = inputStreamOpen;
                        zF = true;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            GDTLogger.e("插件加载失败", th);
                            throw th;
                        } catch (Throwable th2) {
                            b(inputStreamOpen);
                            b(fileOutputStream);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                    inputStream = inputStreamOpen;
                    inputStreamOpen = inputStream;
                    GDTLogger.e("插件加载失败", th);
                    throw th;
                }
            }
            if (zF) {
                try {
                    zF = h.f(file, context);
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamOpen = inputStream;
                    GDTLogger.e("插件加载失败", th);
                    throw th;
                }
            }
            b(inputStream);
            b(fileOutputStream);
            if (!zF) {
                throw new Exception("Plugin prepare failed");
            }
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    private static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
