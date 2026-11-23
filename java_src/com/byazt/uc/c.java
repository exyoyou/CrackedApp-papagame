package com.byazt.uc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 20})
public final class c implements HostnameVerifier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f20530c = new c();
    public static final Pattern tt = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private c() {
    }

    private boolean c(String str, X509Certificate x509Certificate) {
        return c(str) ? tt(str, x509Certificate) : ve(str, x509Certificate);
    }

    private boolean tt(String str, X509Certificate x509Certificate) {
        List<String> listC = c(x509Certificate, 7);
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equalsIgnoreCase(listC.get(i10))) {
                return true;
            }
        }
        return false;
    }

    private boolean ve(String str, X509Certificate x509Certificate) {
        String strC;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> listC = c(x509Certificate, 2);
        int size = listC.size();
        int i10 = 0;
        boolean z10 = false;
        while (i10 < size) {
            if (c(lowerCase, listC.get(i10))) {
                return true;
            }
            i10++;
            z10 = true;
        }
        if (z10 || (strC = new tt(x509Certificate.getSubjectX500Principal()).c("cn")) == null) {
            return false;
        }
        return c(lowerCase, strC);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    private static boolean c(String str) {
        return tt.matcher(str).matches();
    }

    private static List<String> c(X509Certificate x509Certificate, int i10) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i10 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    private boolean c(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(o0.f49827a) && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(o0.f49827a) && !str2.endsWith("..")) {
            if (!str.endsWith(o0.f49827a)) {
                str = str + d.f90941a;
            }
            if (!str2.endsWith(o0.f49827a)) {
                str2 = str2 + d.f90941a;
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }
}
