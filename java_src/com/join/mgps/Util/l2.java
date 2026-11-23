package com.join.mgps.Util;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49797a = "RSA";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f49798b = "SHA1WithRSA";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f49799c = "UTF-8";

    public static String a(String content, String privateKey) {
        try {
            PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance(f49797a).generatePrivate(new PKCS8EncodedKeySpec(p.a(privateKey)));
            Signature signature = Signature.getInstance("SHA1WithRSA");
            signature.initSign(privateKeyGeneratePrivate);
            signature.update(content.getBytes("UTF-8"));
            return p.b(signature.sign());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
