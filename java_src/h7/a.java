package h7;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.join.mgps.Util.i0;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f91444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f91445b;

    public static Bitmap a(String url, int width, int height) {
        Bitmap bitmapCreateBitmap = null;
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        try {
            Hashtable hashtable = new Hashtable();
            hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
            BitMatrix bitMatrixEncode = new QRCodeWriter().encode(url, BarcodeFormat.QR_CODE, width, height, hashtable);
            int[] iArr = new int[width * height];
            for (int i10 = 0; i10 < height; i10++) {
                for (int i11 = 0; i11 < width; i11++) {
                    if (bitMatrixEncode.get(i11, i10)) {
                        iArr[(i10 * width) + i11] = -16777216;
                    } else {
                        iArr[(i10 * width) + i11] = -1;
                    }
                }
            }
            bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
            return bitmapCreateBitmap;
        } catch (WriterException e10) {
            e10.printStackTrace();
            return bitmapCreateBitmap;
        }
    }

    public static Bitmap b(String url, Context context) {
        Bitmap bitmapCreateBitmap = null;
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        f91444a = i0.a(context, 200.0f);
        f91445b = i0.a(context, 200.0f);
        try {
            Hashtable hashtable = new Hashtable();
            hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
            BitMatrix bitMatrixEncode = new QRCodeWriter().encode(url, BarcodeFormat.QR_CODE, f91444a, f91445b, hashtable);
            int[] iArr = new int[f91444a * f91445b];
            int i10 = 0;
            while (true) {
                int i11 = f91445b;
                if (i10 >= i11) {
                    bitmapCreateBitmap = Bitmap.createBitmap(f91444a, i11, Bitmap.Config.ARGB_8888);
                    int i12 = f91444a;
                    bitmapCreateBitmap.setPixels(iArr, 0, i12, 0, 0, i12, f91445b);
                    return bitmapCreateBitmap;
                }
                for (int i13 = 0; i13 < f91444a; i13++) {
                    if (bitMatrixEncode.get(i13, i10)) {
                        iArr[(f91444a * i10) + i13] = -16777216;
                    } else {
                        iArr[(f91444a * i10) + i13] = -1;
                    }
                }
                i10++;
            }
        } catch (WriterException e10) {
            e10.printStackTrace();
            return bitmapCreateBitmap;
        }
    }
}
