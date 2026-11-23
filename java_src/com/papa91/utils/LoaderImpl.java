package com.papa91.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class LoaderImpl {
    private boolean cache2FileFlag = false;
    private String cachedDir;
    private Map<String, SoftReference<Bitmap>> imageCache;

    public LoaderImpl(Map<String, SoftReference<Bitmap>> map) {
        this.imageCache = map;
    }

    private Bitmap getBitmapFromFile(String str) {
        String mD5Str = getMD5Str(str);
        if (mD5Str == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeStream(new FileInputStream(this.cachedDir + e.F0 + mD5Str));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static String getMD5Str(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                if (Integer.toHexString(bArrDigest[i10] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(bArrDigest[i10] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(bArrDigest[i10] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException unused) {
            System.out.println("NoSuchAlgorithmException caught!");
            return null;
        }
    }

    public Bitmap getBitmapFromMemory(String str) {
        if (this.imageCache.containsKey(str)) {
            synchronized (this.imageCache) {
                SoftReference<Bitmap> softReference = this.imageCache.get(str);
                if (softReference != null) {
                    return softReference.get();
                }
            }
        }
        if (!this.cache2FileFlag) {
            return null;
        }
        Bitmap bitmapFromFile = getBitmapFromFile(str);
        if (bitmapFromFile == null) {
            return bitmapFromFile;
        }
        this.imageCache.put(str, new SoftReference<>(bitmapFromFile));
        return bitmapFromFile;
    }

    public Bitmap getBitmapFromUrl(String str, boolean z10) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
            if (z10) {
                this.imageCache.put(str, new SoftReference<>(bitmapDecodeStream));
                if (this.cache2FileFlag) {
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(this.cachedDir + e.F0 + getMD5Str(str)));
                }
            }
            inputStream.close();
            httpURLConnection.disconnect();
            return bitmapDecodeStream;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void setCache2File(boolean z10) {
        this.cache2FileFlag = z10;
    }

    public void setCachedDir(String str) {
        this.cachedDir = str;
    }
}
