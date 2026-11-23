package com.sdk.o;

import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78565a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f78566b = Boolean.valueOf(d.f78521a);

    public static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(com.sdk.p.d.a(str)));
        } catch (Exception e10) {
            LogUtils.e(f78565a, e10.toString(), f78566b);
            return null;
        }
    }
}
