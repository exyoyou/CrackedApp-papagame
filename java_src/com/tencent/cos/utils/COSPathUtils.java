package com.tencent.cos.utils;

import android.text.TextUtils;
import com.tencent.cos.exception.COSClientException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes2.dex */
public class COSPathUtils {
    private static final String PATH_DELIMITER = "/";
    private static String TAG = "com.tencent.cos.utils.COSPathUtils";

    public static String encodeRemotePath(String str) throws COSClientException {
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split("/")) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    sb2.append("/");
                    sb2.append(URLEncoder.encode(str2, "utf-8").replace("+", "%20"));
                } catch (Exception e10) {
                    QLog.e(TAG, e10.getMessage(), e10.getCause());
                    throw new COSClientException(e10.getMessage());
                }
            }
        }
        if (str.endsWith("/")) {
            sb2.append("/");
        }
        return sb2.toString();
    }
}
