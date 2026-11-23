package com.byazt.nr;

import android.content.Context;
import android.content.pm.Signature;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap<String, ArrayList<String>> f17592c = new HashMap<>();

    public static ArrayList<String> c(Context context, String str) {
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (f17592c.get(str) != null) {
                return f17592c.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : tt(context, packageName)) {
                    String strC = "error!";
                    if ("MD5".equals(str)) {
                        strC = c(signature, "MD5");
                    } else if ("SHA1".equals(str)) {
                        strC = c(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        strC = c(signature, "SHA256");
                    }
                    arrayList.add(strC);
                }
            } catch (Exception e10) {
                m.ve(e10.toString());
            }
            f17592c.put(str, arrayList);
        }
        return arrayList;
    }

    private static Signature[] tt(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e10) {
            m.ve(e10.toString());
            return null;
        }
    }

    public static String c(Context context) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList<String> arrayListC = c(context, "SHA1");
        if (arrayListC != null && arrayListC.size() != 0) {
            for (int i10 = 0; i10 < arrayListC.size(); i10++) {
                sb2.append(arrayListC.get(i10));
                if (i10 < arrayListC.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }

    private static String c(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1).toString();
        } catch (Exception e10) {
            m.ve(e10.toString());
            return "error!";
        }
    }
}
