package com.yxcorp.kuaishou.addfp.android.b;

import android.content.Context;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class b {
    public static File a(Context context, boolean z10) {
        StorageManager storageManager = (StorageManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE);
        try {
            Class<?> cls = Class.forName("android.os.storage.StorageVolume");
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Method method2 = cls.getMethod("getPath", new Class[0]);
            Method method3 = cls.getMethod("isRemovable", new Class[0]);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            for (int i10 = 0; i10 < length; i10++) {
                Object obj = Array.get(objInvoke, i10);
                String str = (String) method2.invoke(obj, new Object[0]);
                if (z10 == ((Boolean) method3.invoke(obj, new Object[0])).booleanValue() && !TextUtils.isEmpty(str)) {
                    return new File(str);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return Environment.getExternalStorageDirectory();
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null) {
            try {
                if (bArr2.length > 0 && bArr != null && bArr.length > 0) {
                    return a(bArr, bArr2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null) {
            try {
                if (bArr2.length > 0 && bArr != null && bArr.length > 0) {
                    return a(bArr, bArr2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[256];
        for (int i10 = 0; i10 < 256; i10++) {
            bArr3[i10] = (byte) i10;
        }
        if (bArr2.length == 0) {
            bArr3 = null;
        } else {
            int length = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < 256; i12++) {
                int i13 = bArr2[length] & 255;
                byte b10 = bArr3[i12];
                i11 = (i13 + (b10 & 255) + i11) & 255;
                bArr3[i12] = bArr3[i11];
                bArr3[i11] = b10;
                length = (length + 1) % bArr2.length;
            }
        }
        byte[] bArr4 = new byte[bArr.length];
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < bArr.length; i16++) {
            i14 = (i14 + 1) & 255;
            byte b11 = bArr3[i14];
            i15 = ((b11 & 255) + i15) & 255;
            bArr3[i14] = bArr3[i15];
            bArr3[i15] = b11;
            int i17 = ((bArr3[i14] & 255) + (b11 & 255)) & 255;
            byte b12 = (byte) (bArr3[i17] ^ bArr[i16]);
            bArr4[i16] = b12;
            bArr4[i16] = (byte) (b12 ^ 42);
        }
        return bArr4;
    }
}
