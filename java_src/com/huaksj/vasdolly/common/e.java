package com.huaksj.vasdolly.common;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f34404a = -262969152;

    public static boolean a(File file) {
        try {
            return d.e(d.g(file)).containsKey(Integer.valueOf(f34404a));
        } catch (SignatureNotFoundException unused) {
            System.out.println("APK : " + file.getAbsolutePath() + " not have apk v3 signature block");
            return false;
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
