package com.windmill.sdk.utils.a;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.wire.AndroidMessage;
import com.sdk.base.framework.utils.log.LogFile;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.point.PointEntityWMCrash;
import com.windmill.sdk.utils.e;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f87349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Map f87350b = new HashMap();

    public static String a(WindMillAdRequest adRequest) {
        return "";
    }

    public static String b(WindMillAdRequest adRequest, String load_id, String callback_url) {
        return callback_url;
    }

    public static void c() {
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.windmill.sdk.utils.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    File file = new File(e.a());
                    if (file.exists()) {
                        for (File file2 : file.listFiles()) {
                            String strA = e.a(file2);
                            WMLogUtil.i("-------NDKCrashReport " + file2.getName());
                            PointEntityWMCrash pointEntityWMCrashNDKCrash = PointEntityWMCrash.NDKCrash(strA);
                            try {
                                pointEntityWMCrashNDKCrash.setCrashTime(Integer.parseInt(file2.getName().replace("ndk_crash_", "").replace(LogFile.LOG_SUFFIX, "")));
                            } catch (Exception unused) {
                            }
                            pointEntityWMCrashNDKCrash.sendServe();
                            file2.delete();
                        }
                    }
                } catch (Exception unused2) {
                }
            }
        });
    }

    public static String a(WindMillAdRequest adRequest, String load_id, String impUrl) {
        return impUrl;
    }

    public static void b(String crashPath) {
    }

    public static byte[] a(byte[] data, WindMillAdRequest adRequest, int type) {
        return data;
    }

    public static boolean b() {
        return true;
    }

    public static byte[] a(WindMillAdRequest adRequest, byte[] body, AndroidMessage strRequest, Map<String, String> headers, String key) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
                body = AESUtil.Encrypt(body, key);
                WMLogUtil.i("body agn  : time ： " + (System.currentTimeMillis() - jCurrentTimeMillis));
                return body;
            } catch (Exception e10) {
                e10.printStackTrace();
                headers.remove("agn");
                return body;
            }
        } catch (Exception e11) {
            WMLogUtil.e("getRequestBody error:  " + e11.getMessage());
            return body;
        }
    }

    public static String a() {
        try {
            Signature[] signatureArr = WindMillAd.sharedAds().getContext().getPackageManager().getPackageInfo(WindMillAd.sharedAds().getContext().getPackageName(), 64).signatures;
            if (signatureArr.length <= 0) {
                return "";
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signatureArr[0].toByteArray());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            return sb2.toString().toUpperCase();
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static byte[] a(String loadId, byte[] bodyBytes, byte[] encBlockBytes) {
        try {
            return b.a(loadId, bodyBytes, encBlockBytes);
        } catch (Exception unused) {
            return bodyBytes;
        }
    }

    public static byte[] a(String load_id, String impr_sign_code, byte[] bodyBytes, byte[] encBlockBytes) {
        try {
            return b.a(load_id, impr_sign_code, bodyBytes, encBlockBytes);
        } catch (Exception unused) {
            return bodyBytes;
        }
    }

    public static void a(String loadId) {
        try {
            f87350b.put(loadId, new ArrayList());
            if (f87349a == 0) {
                b.a(f87350b);
                f87349a++;
            }
        } catch (Exception unused) {
        }
    }
}
