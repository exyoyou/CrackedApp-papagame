package cn.sharesdk.wechat.utils;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.mob.MobSDK;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile n f3087a;

    public static n a() {
        if (f3087a == null) {
            synchronized (n.class) {
                if (f3087a == null) {
                    f3087a = new n();
                }
            }
        }
        return f3087a;
    }

    public int a(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        File file = new File(str);
        if (!file.exists()) {
            if (MobSDK.getContext() != null && str.startsWith("content")) {
                try {
                    return a(MobSDK.getContext().getContentResolver(), Uri.parse(str));
                } catch (Exception unused) {
                }
            }
            return 0;
        }
        return (int) file.length();
    }

    private static int a(ContentResolver contentResolver, Uri uri) {
        SSDKLog.b().a("MicroMsg.SDK.Util", "getFileSize with content url");
        if (contentResolver != null && uri != null) {
            InputStream inputStream = null;
            try {
                try {
                    InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uri);
                    if (inputStreamOpenInputStream == null) {
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e10) {
                                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e10);
                            }
                        }
                        return 0;
                    }
                    int iAvailable = inputStreamOpenInputStream.available();
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException e11) {
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e11);
                    }
                    return iAvailable;
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (IOException e12) {
                            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e12);
                        }
                    }
                    throw th;
                }
            } catch (Exception e13) {
                SSDKLog.b().a("MicroMsg.SDK.Util", "getFileSize fail, " + e13.getMessage());
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e14) {
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "WechatTools exception" + e14);
                    }
                }
                return 0;
            }
        }
        SSDKLog.b().a("MicroMsg.SDK.Util", "getFileSize fail, resolver or uri is null");
        return 0;
    }

    public static String a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        try {
            return bundle.getString(str);
        } catch (Exception e10) {
            SSDKLog.b().a("getStringExtra exception:" + e10.getMessage(), new Object[0]);
            return null;
        }
    }

    public static int a(Bundle bundle, String str, int i10) {
        if (bundle == null) {
            return i10;
        }
        try {
            return bundle.getInt(str, i10);
        } catch (Exception e10) {
            SSDKLog.b().a("getIntExtra exception:" + e10.getMessage(), new Object[0]);
            return i10;
        }
    }
}
