package com.byazt.uc;

import com.byazt.bog.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Arrays;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 54})
public class ve {

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 24})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ve f20535c = new ve();
    }

    public static ve c() {
        return c.f20535c;
    }

    private X509TrustManager tt() throws IOException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e10) {
            throw new IOException("No System TLS", e10);
        }
    }

    private ve() {
    }

    public void c(String str, String str2, String str3, EventListener eventListener) throws Throwable {
        uj ujVar;
        HttpsURLConnection httpsURLConnection = null;
        try {
            try {
                URL url = new URL(str);
                HttpsURLConnection.setDefaultSSLSocketFactory(c(tt()));
                HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) url.openConnection();
                try {
                    httpsURLConnection2.setConnectTimeout(5000);
                    httpsURLConnection2.setHostnameVerifier(com.byazt.uc.c.f20530c);
                    httpsURLConnection2.setRequestMethod("GET");
                    if (httpsURLConnection2.getResponseCode() == 200 && c(httpsURLConnection2.getInputStream(), str2, str3, eventListener)) {
                        eventListener.onEvent(0, new uj(str2 + e.F0 + str3));
                    }
                    try {
                        httpsURLConnection2.disconnect();
                    } catch (Exception e10) {
                        ujVar = new uj(e10.getMessage());
                        eventListener.onEvent(2, ujVar);
                    }
                } catch (Exception e11) {
                    e = e11;
                    httpsURLConnection = httpsURLConnection2;
                    a.c(e);
                    eventListener.onEvent(1, new uj(e.getMessage()));
                    if (httpsURLConnection != null) {
                        try {
                            httpsURLConnection.disconnect();
                        } catch (Exception e12) {
                            ujVar = new uj(e12.getMessage());
                            eventListener.onEvent(2, ujVar);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    httpsURLConnection = httpsURLConnection2;
                    if (httpsURLConnection != null) {
                        try {
                            httpsURLConnection.disconnect();
                        } catch (Exception e13) {
                            eventListener.onEvent(2, new uj(e13.getMessage()));
                        }
                    }
                    throw th;
                }
            } catch (Exception e14) {
                e = e14;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean c(InputStream inputStream, String str, String str2, EventListener eventListener) throws Throwable {
        if (inputStream == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(str);
                if (!file.exists() && !file.mkdirs()) {
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                    return false;
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(file, str2));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 != -1) {
                            fileOutputStream2.write(bArr, 0, i10);
                        } else {
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                            inputStream.close();
                            try {
                                inputStream.close();
                                return true;
                            } catch (Exception unused2) {
                                return true;
                            }
                        }
                    }
                } catch (Exception e10) {
                    e = e10;
                    fileOutputStream = fileOutputStream2;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    try {
                        inputStream.close();
                        throw th;
                    } catch (Exception unused4) {
                        throw th;
                    }
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        eventListener.onEvent(3, new uj(e.getMessage()));
        a.tt("NetApi", "save error: ", e);
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception unused5) {
            }
        }
        try {
            inputStream.close();
        } catch (Exception unused6) {
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public String c(boolean z10, String str, byte[] bArr) throws Throwable {
        HttpsURLConnection httpsURLConnection;
        HttpsURLConnection httpsURLConnection2 = null;
        try {
            URL url = new URL(str);
            HttpsURLConnection.setDefaultSSLSocketFactory(c(tt()));
            httpsURLConnection = (HttpsURLConnection) url.openConnection();
            try {
                try {
                    httpsURLConnection.setConnectTimeout(5000);
                    httpsURLConnection.setHostnameVerifier(com.byazt.uc.c.f20530c);
                    if (z10 && bArr != null && bArr.length != 0) {
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setFixedLengthStreamingMode(bArr.length);
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpsURLConnection.getOutputStream());
                        bufferedOutputStream.write(bArr);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        httpsURLConnection.setRequestMethod("POST");
                    } else {
                        httpsURLConnection.setRequestMethod("GET");
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode >= 200 && responseCode < 300) {
                        String str2 = new String(c(httpsURLConnection.getInputStream(), 1024), c(httpsURLConnection.getHeaderField("Content-Type"), "utf-8"));
                        try {
                            httpsURLConnection.disconnect();
                        } catch (Exception unused) {
                        }
                        return str2;
                    }
                } catch (Exception e10) {
                    e = e10;
                    a.c(e);
                    if (httpsURLConnection != null) {
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                httpsURLConnection2 = httpsURLConnection;
                if (httpsURLConnection2 != null) {
                    try {
                        httpsURLConnection2.disconnect();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            httpsURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            if (httpsURLConnection2 != null) {
                httpsURLConnection2.disconnect();
            }
            throw th;
        }
        try {
            httpsURLConnection.disconnect();
        } catch (Exception unused3) {
        }
        return null;
    }

    private static byte[] c(InputStream inputStream, int i10) throws IOException {
        if (inputStream == null) {
            return null;
        }
        if (i10 <= 0) {
            i10 = 1;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[i10];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 != -1) {
                byteArrayOutputStream.write(bArr, 0, i11);
            } else {
                byteArrayOutputStream.close();
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    private static String c(String str, String str2) {
        if (str != null) {
            String[] strArrSplit = str.split(";", 0);
            for (int i10 = 1; i10 < strArrSplit.length; i10++) {
                String[] strArrSplit2 = strArrSplit[i10].trim().split(SimpleComparison.EQUAL_TO_OPERATION, 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str2;
    }

    private SSLSocketFactory c(X509TrustManager x509TrustManager) throws IOException {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e10) {
            throw new IOException("No System TLS", e10);
        }
    }
}
