package com.haima.hmcp.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class StringUtils {
    public static String encodeToBase64String(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 2);
    }

    public static String formatStringWithHtml(String str) {
        return "<font color='#FF0032'>" + str + "</font>";
    }

    public static String formatTime(Context context, int i10) {
        int i11 = i10 / 1000;
        StringBuffer stringBuffer = new StringBuffer();
        int i12 = i11 / 3600;
        if (i12 > 0) {
            stringBuffer.append(ResourceManager.getQuantityString(R.plurals.haima_hmcp_hour, i12, Integer.valueOf(i12)));
        }
        int i13 = i11 % 3600;
        int i14 = i13 / 60;
        if (i14 > 0) {
            stringBuffer.append(ResourceManager.getQuantityString(R.plurals.haima_hmcp_min, i14, Integer.valueOf(i14)));
        }
        int i15 = i13 % 60;
        if (i15 > 0) {
            stringBuffer.append(ResourceManager.getQuantityString(R.plurals.haima_hmcp_second, i15, Integer.valueOf(i15)));
        }
        return stringBuffer.toString();
    }

    public static String replaceSpaceStr(String str) {
        return str != null ? Pattern.compile("\\s*").matcher(str).replaceAll("") : "";
    }

    public static String replaceSpecialStr(String str) {
        return replaceSpecialStr(str, null);
    }

    public static String replaceString(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return TextUtils.isEmpty(str2) ? str : Pattern.compile(Constants.TIPS_SPECIAL_TAG).matcher(str).replaceFirst(str2);
    }

    public static String replaceSpecialStr(String str, String str2) {
        if (str == null) {
            return "";
        }
        Matcher matcher = Pattern.compile("\t|\r|\n").matcher(str);
        if (str2 == null) {
            str2 = "";
        }
        return matcher.replaceAll(str2);
    }

    public static String encodeToBase64String(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? "" : Base64.encodeToString(bArr, 2);
    }
}
