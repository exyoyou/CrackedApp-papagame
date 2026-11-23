package com.switfpass.pay.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import com.join.mgps.dto.Constant;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import junit.framework.Assert;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes2.dex */
public class l0 {
    public static byte[] a(Bitmap bitmap, boolean z10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        if (z10) {
            bitmap.recycle();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return byteArray;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    public static Bitmap b(String str, int i10, int i11, boolean z10) {
        double d10;
        int i12;
        int i13;
        double d11;
        int i14;
        int i15;
        boolean z11;
        Bitmap bitmapCreateBitmap;
        Assert.assertTrue(str != null && !str.equals("") && i10 > 0 && i11 > 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        try {
            options.inJustDecodeBounds = true;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            if (bitmapDecodeFile != null) {
                bitmapDecodeFile.recycle();
            }
            StringBuilder sb2 = new StringBuilder("extractThumbNail: round=");
            sb2.append(i11);
            sb2.append("x");
            sb2.append(i10);
            sb2.append(", crop=");
            sb2.append(z10);
            double d12 = i10;
            double d13 = ((double) options.outHeight) / d12;
            double d14 = i11;
            double d15 = ((double) options.outWidth) / d14;
            StringBuilder sb3 = new StringBuilder("extractThumbNail: extract beX = ");
            sb3.append(d15);
            sb3.append(", beY = ");
            sb3.append(d13);
            if (z10) {
                if (d13 > d15) {
                    d10 = d15;
                } else {
                    d10 = d13;
                }
            } else if (d13 < d15) {
                d10 = d15;
            } else {
                d10 = d13;
            }
            int i16 = (int) d10;
            options.inSampleSize = i16;
            if (i16 <= 1) {
                options.inSampleSize = 1;
            }
            while (true) {
                i12 = options.outHeight;
                i13 = options.outWidth;
                int i17 = options.inSampleSize;
                if ((i12 * i13) / i17 <= 2764800) {
                    break;
                }
                options.inSampleSize = i17 + 1;
            }
            if (z10) {
                if (d13 > d15) {
                    i15 = (int) ((d14 * ((double) i12)) / ((double) i13));
                    z11 = false;
                    i14 = i11;
                } else {
                    d11 = d12 * ((double) i13);
                    i14 = (int) (d11 / ((double) i12));
                    i15 = i10;
                    z11 = false;
                }
            } else if (d13 < d15) {
                i15 = (int) ((d14 * ((double) i12)) / ((double) i13));
                z11 = false;
                i14 = i11;
            } else {
                d11 = d12 * ((double) i13);
                i14 = (int) (d11 / ((double) i12));
                i15 = i10;
                z11 = false;
            }
            options.inJustDecodeBounds = z11;
            StringBuilder sb4 = new StringBuilder("bitmap required size=");
            sb4.append(i14);
            sb4.append("x");
            sb4.append(i15);
            sb4.append(", orig=");
            sb4.append(options.outWidth);
            sb4.append("x");
            sb4.append(options.outHeight);
            sb4.append(", sample=");
            sb4.append(options.inSampleSize);
            Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(str, options);
            if (bitmapDecodeFile2 == null) {
                return null;
            }
            StringBuilder sb5 = new StringBuilder("bitmap decoded size=");
            sb5.append(bitmapDecodeFile2.getWidth());
            sb5.append("x");
            sb5.append(bitmapDecodeFile2.getHeight());
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile2, i14, i15, true);
            if (bitmapCreateScaledBitmap != null) {
                bitmapDecodeFile2.recycle();
                bitmapDecodeFile2 = bitmapCreateScaledBitmap;
            }
            if (!z10 || (bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile2, (bitmapDecodeFile2.getWidth() - i11) >> 1, (bitmapDecodeFile2.getHeight() - i10) >> 1, i11, i10)) == null) {
                return bitmapDecodeFile2;
            }
            bitmapDecodeFile2.recycle();
            StringBuilder sb6 = new StringBuilder("bitmap croped size=");
            sb6.append(bitmapCreateBitmap.getWidth());
            sb6.append("x");
            sb6.append(bitmapCreateBitmap.getHeight());
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError e10) {
            new StringBuilder("decode bitmap failed: ").append(e10.getMessage());
            return null;
        }
    }

    public static String c(double d10) {
        return new DecimalFormat("0.00").format(d10 / 100.0d);
    }

    public static String d(double d10) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMinimumFractionDigits(2);
        return numberInstance.format(d10 / 100.0d);
    }

    public static String e(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j10));
    }

    public static String f(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new SimpleDateFormat("yyyyMMddHHmmss").parse(str));
    }

    public static String g() {
        return v.a(String.valueOf(new Random().nextInt(10000)).getBytes());
    }

    public static long h() {
        return System.currentTimeMillis() / 1000;
    }

    public static String i() {
        return String.valueOf(k()) + "download/cache/";
    }

    public static String j(double d10) {
        return new DecimalFormat("0").format(d10 * 100.0d);
    }

    public static String k() {
        return String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/swiftpass_pay/";
    }

    public static String l() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ver=2.0");
        stringBuffer.append("&sale_plat=211");
        stringBuffer.append("&charset=1");
        stringBuffer.append("&bank_type=0");
        stringBuffer.append("&bargainor_id=1900000109");
        stringBuffer.append("&sp_billno=031120730110929000281000010" + Integer.toString((int) (Math.random() * 10000.0d)));
        stringBuffer.append("&total_fee=1");
        stringBuffer.append("&notify_url=http://211.154.151.196:8081/tenpay/payment/notifyCallBackUrl");
        stringBuffer.append("&attach=100001000002");
        return "";
    }

    public static byte[] m(String str) {
        if (str != null && str.length() != 0) {
            try {
                HttpResponse httpResponseExecute = s().execute(new HttpGet(str));
                if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
                    return EntityUtils.toByteArray(httpResponseExecute.getEntity());
                }
                new StringBuilder("httpGet fail, status code = ").append(httpResponseExecute.getStatusLine().getStatusCode());
                return null;
            } catch (Exception e10) {
                new StringBuilder("httpGet exception, e = ").append(e10.getMessage());
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] n(String str, String str2) {
        if (str != null && str.length() != 0) {
            HttpClient httpClientS = s();
            HttpPost httpPost = new HttpPost(str);
            try {
                httpPost.setEntity(new StringEntity(str2, "utf-8"));
                httpPost.setHeader("Content-Type", "text/xml;charset=UTF-8");
                HttpResponse httpResponseExecute = httpClientS.execute(httpPost);
                if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
                    return EntityUtils.toByteArray(httpResponseExecute.getEntity());
                }
                new StringBuilder("httpGet fail, status code = ").append(httpResponseExecute.getStatusLine().getStatusCode());
                return null;
            } catch (Exception e10) {
                new StringBuilder("httpPost exception, e = ").append(e10.getMessage());
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static Map o(Map map) {
        HashMap map2 = new HashMap(map.size());
        if (map.size() <= 0) {
            return map2;
        }
        for (String str : map.keySet()) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.equals("") && !str.equalsIgnoreCase(Constant.MD5)) {
                map2.put(str, str2);
            }
        }
        return map2;
    }

    public static byte[] p(String str, int i10, int i11) {
        byte[] bArr = null;
        if (str == null) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        if (i11 == -1) {
            i11 = (int) file.length();
        }
        StringBuilder sb2 = new StringBuilder("readFromFile : offset = ");
        sb2.append(i10);
        sb2.append(" len = ");
        sb2.append(i11);
        sb2.append(" offset + len = ");
        int i12 = i10 + i11;
        sb2.append(i12);
        if (i10 < 0) {
            new StringBuilder("readFromFile invalid offset:").append(i10);
            return null;
        }
        if (i11 <= 0) {
            new StringBuilder("readFromFile invalid len:").append(i11);
            return null;
        }
        if (i12 > ((int) file.length())) {
            new StringBuilder("readFromFile invalid file len:").append(file.length());
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
            bArr = new byte[i11];
            randomAccessFile.seek(i10);
            randomAccessFile.readFully(bArr);
            randomAccessFile.close();
            return bArr;
        } catch (Exception e10) {
            new StringBuilder("readFromFile : errMsg = ").append(e10.getMessage());
            e10.printStackTrace();
            return bArr;
        }
    }

    public static String q(String str) {
        if (str != null && str.length() != 0) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                messageDigest.update(str.getBytes());
                byte[] bArrDigest = messageDigest.digest();
                char[] cArr2 = new char[bArrDigest.length << 1];
                int i10 = 0;
                for (byte b10 : bArrDigest) {
                    int i11 = i10 + 1;
                    cArr2[i10] = cArr[(b10 >>> 4) & 15];
                    i10 = i11 + 1;
                    cArr2[i11] = cArr[b10 & 15];
                }
                return new String(cArr2);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static List r(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private static HttpClient s() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            x0 x0Var = new x0(keyStore);
            x0Var.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", x0Var, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception unused) {
            return new DefaultHttpClient();
        }
    }
}
