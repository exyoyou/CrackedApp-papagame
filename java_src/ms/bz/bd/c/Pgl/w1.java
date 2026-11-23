package ms.bz.bd.c.Pgl;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class w1 extends pbly {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SSLSocketFactory f94471c;

    @Override // ms.bz.bd.c.Pgl.pbly
    public final Object[] c(String str, String str2, String str3) {
        return c(str, null, str2, str3, null, false);
    }

    @Override // ms.bz.bd.c.Pgl.pbly
    public final Object[] tt(String str, String str2, String str3) {
        return c(str, null, null, str3, str2, false);
    }

    @Override // ms.bz.bd.c.Pgl.pbly
    public final Object[] c(String str, byte[] bArr, String str2, String str3) {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "060d54", new byte[]{BinaryMemcacheOpcodes.ADDQ, 45, 80, 4, 15, 46, 27, 3, 117, BinaryMemcacheOpcodes.GATKQ, 2, 56, 74, BinaryMemcacheOpcodes.INCREMENTQ, 4, com.sigmob.sdk.archives.tar.e.O, 115, 2, 115, 56, 97, 121, 14, 93, 74});
        return c(str, bArr, str2, str3, null, true);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x02f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x02b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0289 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:81:0x0273, B:83:0x0289, B:85:0x02ac), top: B:108:0x0273 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x02ab  */
    private Object[] c(String str, byte[] bArr, String str2, String str3, String str4, boolean z10) throws Throwable {
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        DataOutputStream dataOutputStream;
        BufferedInputStream bufferedInputStream2;
        int responseCode;
        BufferedInputStream bufferedInputStream3;
        String headerField;
        byte[] bArr2;
        byte[] byteArray;
        BufferedInputStream bufferedInputStream4;
        pblx.pgla pglaVar = new pblx.pgla();
        DataOutputStream dataOutputStream2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection instanceof HttpsURLConnection) {
                try {
                    if (this.f94471c == null) {
                        synchronized (w1.class) {
                            try {
                                if (this.f94471c == null) {
                                    SSLContext sSLContext = SSLContext.getInstance((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3d8e82", new byte[]{BinaryMemcacheOpcodes.DECREMENTQ, 74, com.sigmob.sdk.archives.tar.e.R}));
                                    sSLContext.init(null, null, null);
                                    this.f94471c = sSLContext.getSocketFactory();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    SSLSocketFactory sSLSocketFactory = this.f94471c;
                    if (sSLSocketFactory != null) {
                        ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                    }
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                    dataOutputStream = dataOutputStream2;
                    bufferedInputStream3 = bufferedInputStream;
                    pbly.c(bufferedInputStream3);
                    pbly.c(dataOutputStream);
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused2) {
                            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "bf19a6", new byte[]{96, 108, 65, 114, 86, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.K});
                        }
                    }
                    throw th;
                }
            }
            try {
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "673040", new byte[]{6, com.sigmob.sdk.archives.tar.e.N, 67, 65, 27, com.sigmob.sdk.archives.tar.e.K}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8ba241", new byte[]{99, 47, com.sigmob.sdk.archives.tar.e.S}));
                httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "464301", new byte[]{6, HttpConstants.SEMICOLON, 73, 73, 10, 37, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATQ, 106, 109}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cf5d70", new byte[]{89, 97, 67, 0, 69, 6, 108, 78, 114, com.sigmob.sdk.archives.tar.e.I}));
                httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9af031", new byte[]{BinaryMemcacheOpcodes.GAT, 112, 16, 86, 65, 7, 61, 69, 57, 116}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f1782b", new byte[]{85, 42, 80, 73, 41, 116, 107, BinaryMemcacheOpcodes.REPLACEQ, 99, 37, 90, 0, 119, 104, 38}));
                httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "123594", new byte[]{3, Utf8.REPLACEMENT_BYTE, 78, 85, 3, 45, 38, 94, 86, 124, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.M}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "47690f", new byte[]{BinaryMemcacheOpcodes.GATKQ, 37, 85, 65, 6, 114, com.sigmob.sdk.archives.tar.e.N, 2, 110, 102, 43, 122, 74, 78, 27, 116, BinaryMemcacheOpcodes.GATK, 91, 116, 125, com.sigmob.sdk.archives.tar.e.O, com.sigmob.sdk.archives.tar.e.H, 68, 64}));
                if (str2 != null && str2.trim().length() > 0) {
                    httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "fa93c9", new byte[]{84, 108, 69, com.sigmob.sdk.archives.tar.e.P, 85, 43}), String.format((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5eeea1", new byte[]{com.sigmob.sdk.archives.tar.e.O, 98, 5, 2, 87, 41, 56, 77, com.sigmob.sdk.archives.tar.e.H, 104, 97, 116}), str2));
                }
                if (str3 != null && str3.trim().length() > 0) {
                    httpURLConnection.setRequestProperty((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1f6231", new byte[]{56, 41, 81, 82, 65, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.O, 86, 114, com.sigmob.sdk.archives.tar.e.T, com.sigmob.sdk.archives.tar.e.K, 112, 8, 82, 13, BinaryMemcacheOpcodes.SASL_AUTH}), str3);
                }
                pglaVar.c(str);
                if (z10) {
                    httpURLConnection.setRequestMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8ddb8e", new byte[]{BinaryMemcacheOpcodes.APPENDQ, 73, BinaryMemcacheOpcodes.GATKQ, 34}));
                    httpURLConnection.setDoOutput(true);
                    dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    try {
                        try {
                            dataOutputStream.write(bArr);
                            dataOutputStream.flush();
                        } catch (Exception unused3) {
                            responseCode = -1;
                            bufferedInputStream2 = null;
                            try {
                                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf1ba", new byte[]{com.sigmob.sdk.archives.tar.e.T, 107, BinaryMemcacheOpcodes.DECREMENTQ, 122, 85, com.sigmob.sdk.archives.tar.e.T});
                                if (httpURLConnection != null) {
                                    headerField = httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "04f947", new byte[]{57, 123, 1, 89, 70, HttpConstants.COMMA, 60, BinaryMemcacheOpcodes.ADDQ, 62, 109}));
                                } else {
                                    headerField = null;
                                }
                                pglaVar.tt(headerField, responseCode);
                                pbly.c(bufferedInputStream2);
                                pbly.c(dataOutputStream);
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception unused4) {
                                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9d8303", new byte[]{HttpConstants.SEMICOLON, 110, 72, com.sigmob.sdk.archives.tar.e.R, 7, com.sigmob.sdk.archives.tar.e.M, 104});
                                    }
                                }
                                bArr2 = null;
                                return new Object[]{String.valueOf(responseCode), bArr2};
                            } catch (Throwable th3) {
                                th = th3;
                                dataOutputStream2 = dataOutputStream;
                                bufferedInputStream = bufferedInputStream2;
                                dataOutputStream = dataOutputStream2;
                                bufferedInputStream3 = bufferedInputStream;
                                pbly.c(bufferedInputStream3);
                                pbly.c(dataOutputStream);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedInputStream3 = null;
                        pbly.c(bufferedInputStream3);
                        pbly.c(dataOutputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } else {
                    dataOutputStream = null;
                }
                try {
                    responseCode = httpURLConnection.getResponseCode();
                    try {
                        pglaVar.c(httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3f5d7e", new byte[]{HttpConstants.COLON, 41, 82, 4, 69, 126, Utf8.REPLACEMENT_BYTE, 64, 109, com.sigmob.sdk.archives.tar.e.H})), responseCode);
                        if (responseCode == 200) {
                            bufferedInputStream2 = new BufferedInputStream(httpURLConnection.getInputStream());
                            try {
                                OutputStream fileOutputStream = str4 != null ? new FileOutputStream(str4) : new ByteArrayOutputStream();
                                byte[] bArr3 = new byte[256];
                                while (true) {
                                    int i10 = bufferedInputStream2.read(bArr3);
                                    if (i10 <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr3, 0, i10);
                                }
                                fileOutputStream.flush();
                                byteArray = fileOutputStream instanceof ByteArrayOutputStream ? ((ByteArrayOutputStream) fileOutputStream).toByteArray() : null;
                                fileOutputStream.close();
                                bufferedInputStream4 = bufferedInputStream2;
                            } catch (Exception unused5) {
                                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf1ba", new byte[]{com.sigmob.sdk.archives.tar.e.T, 107, BinaryMemcacheOpcodes.DECREMENTQ, 122, 85, com.sigmob.sdk.archives.tar.e.T});
                                if (httpURLConnection != null) {
                                    headerField = httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "04f947", new byte[]{57, 123, 1, 89, 70, HttpConstants.COMMA, 60, BinaryMemcacheOpcodes.ADDQ, 62, 109}));
                                } else {
                                    headerField = null;
                                }
                                pglaVar.tt(headerField, responseCode);
                                pbly.c(bufferedInputStream2);
                                pbly.c(dataOutputStream);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                bArr2 = null;
                            } catch (Throwable th5) {
                                th = th5;
                                bufferedInputStream3 = bufferedInputStream2;
                                pbly.c(bufferedInputStream3);
                                pbly.c(dataOutputStream);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } else {
                            byteArray = null;
                            bufferedInputStream4 = null;
                        }
                        pbly.c(bufferedInputStream4);
                        pbly.c(dataOutputStream);
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused6) {
                            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d95470", new byte[]{102, com.sigmob.sdk.archives.tar.e.K, 69, ByteCompanionObject.MAX_VALUE, 0, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.M});
                        }
                        bArr2 = byteArray;
                    } catch (Exception unused7) {
                        bufferedInputStream2 = null;
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf1ba", new byte[]{com.sigmob.sdk.archives.tar.e.T, 107, BinaryMemcacheOpcodes.DECREMENTQ, 122, 85, com.sigmob.sdk.archives.tar.e.T});
                        if (httpURLConnection != null) {
                            headerField = httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "04f947", new byte[]{57, 123, 1, 89, 70, HttpConstants.COMMA, 60, BinaryMemcacheOpcodes.ADDQ, 62, 109}));
                        } else {
                            headerField = null;
                        }
                        pglaVar.tt(headerField, responseCode);
                        pbly.c(bufferedInputStream2);
                        pbly.c(dataOutputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        bArr2 = null;
                        return new Object[]{String.valueOf(responseCode), bArr2};
                    }
                } catch (Exception unused8) {
                    bufferedInputStream2 = null;
                    responseCode = -1;
                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf1ba", new byte[]{com.sigmob.sdk.archives.tar.e.T, 107, BinaryMemcacheOpcodes.DECREMENTQ, 122, 85, com.sigmob.sdk.archives.tar.e.T});
                    if (httpURLConnection != null) {
                        headerField = httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "04f947", new byte[]{57, 123, 1, 89, 70, HttpConstants.COMMA, 60, BinaryMemcacheOpcodes.ADDQ, 62, 109}));
                    } else {
                        headerField = null;
                    }
                    pglaVar.tt(headerField, responseCode);
                    pbly.c(bufferedInputStream2);
                    pbly.c(dataOutputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    bArr2 = null;
                    return new Object[]{String.valueOf(responseCode), bArr2};
                }
            } catch (Exception unused9) {
                dataOutputStream = null;
                bufferedInputStream2 = null;
                responseCode = -1;
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf1ba", new byte[]{com.sigmob.sdk.archives.tar.e.T, 107, BinaryMemcacheOpcodes.DECREMENTQ, 122, 85, com.sigmob.sdk.archives.tar.e.T});
                if (httpURLConnection != null) {
                    headerField = httpURLConnection.getHeaderField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "04f947", new byte[]{57, 123, 1, 89, 70, HttpConstants.COMMA, 60, BinaryMemcacheOpcodes.ADDQ, 62, 109}));
                } else {
                    headerField = null;
                }
                pglaVar.tt(headerField, responseCode);
                pbly.c(bufferedInputStream2);
                pbly.c(dataOutputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                bArr2 = null;
                return new Object[]{String.valueOf(responseCode), bArr2};
            } catch (Throwable th6) {
                th = th6;
                dataOutputStream2 = null;
                bufferedInputStream = null;
                dataOutputStream = dataOutputStream2;
                bufferedInputStream3 = bufferedInputStream;
                pbly.c(bufferedInputStream3);
                pbly.c(dataOutputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Exception unused10) {
            httpURLConnection = null;
        } catch (Throwable th7) {
            th = th7;
            dataOutputStream2 = null;
            httpURLConnection = null;
        }
        return new Object[]{String.valueOf(responseCode), bArr2};
    }
}
