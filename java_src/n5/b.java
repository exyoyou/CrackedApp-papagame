package n5;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import com.huaksj.vasdolly.common.d;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static Map<Integer, ByteBuffer> a(File file) {
        if (file != null && file.exists() && file.isFile()) {
            try {
                return d.e(d.g(file));
            } catch (SignatureNotFoundException unused) {
                System.out.println("APK : " + file.getAbsolutePath() + " not have apk signature block");
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static ByteBuffer b(File file, int i10) {
        if (file != null && file.exists() && file.isFile()) {
            Map<Integer, ByteBuffer> mapA = a(file);
            System.out.println("getByteBufferValueById , destApk " + file.getAbsolutePath() + " IdValueMap = " + mapA);
            if (mapA != null) {
                return mapA.get(Integer.valueOf(i10));
            }
        }
        return null;
    }

    public static byte[] c(File file, int i10) {
        if (file != null && file.exists() && file.isFile()) {
            ByteBuffer byteBufferB = b(file, i10);
            System.out.println("getByteValueById , id = " + i10 + " , value = " + byteBufferB);
            if (byteBufferB != null) {
                return Arrays.copyOfRange(byteBufferB.array(), byteBufferB.arrayOffset() + byteBufferB.position(), byteBufferB.arrayOffset() + byteBufferB.limit());
            }
        }
        return null;
    }

    public static String d(File file, int i10) {
        byte[] bArrC;
        if (file != null && file.exists() && file.isFile() && (bArrC = c(file, i10)) != null) {
            try {
                if (bArrC.length > 0) {
                    return new String(bArrC, "UTF-8").trim();
                }
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }
}
