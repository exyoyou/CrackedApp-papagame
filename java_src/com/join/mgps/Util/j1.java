package com.join.mgps.Util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f49766a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", com.kuaishou.weapon.p0.t.f74887l, "c", com.kuaishou.weapon.p0.t.f74895t, "e", com.xinzhu.overmind.server.os.f.TAG};

    private static String a(byte[] b10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : b10) {
            stringBuffer.append(b(b11));
        }
        return stringBuffer.toString();
    }

    private static String b(byte b10) {
        int i10 = b10;
        if (b10 < 0) {
            i10 = b10 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f49766a;
        sb2.append(strArr[i10 / 16]);
        sb2.append(strArr[i10 % 16]);
        return sb2.toString();
    }

    public static String c(Map<String, String> map, String appkey) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                }
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest((appkey + "" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", x.a.f97576d)).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String d(String string) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b10 : bArrDigest) {
                int i10 = b10 & 255;
                if (i10 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i10));
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
