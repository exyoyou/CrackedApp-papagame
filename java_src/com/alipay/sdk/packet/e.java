package com.alipay.sdk.packet;

import com.alipay.sdk.util.j;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7200b = j.n();

    public e(boolean z10) {
        this.f7199a = z10;
    }

    private static int a(String str) {
        return Integer.parseInt(str);
    }

    private static String d(int i10) {
        return String.format(Locale.getDefault(), "%05d", Integer.valueOf(i10));
    }

    private static byte[] e(String str, String str2) {
        return v.d.a(str, str2);
    }

    private static byte[] f(String str, byte[] bArr) {
        return v.e.b(str, bArr);
    }

    private static byte[] g(byte[]... bArr) throws Throwable {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray = null;
        byteArray = null;
        byteArray = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        byteArray = null;
        byteArray = null;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                            for (int i10 = 0; i10 < bArr.length; i10++) {
                                try {
                                    dataOutputStream.write(String.format(Locale.getDefault(), "%05d", Integer.valueOf(bArr[i10].length)).getBytes());
                                    dataOutputStream.write(bArr[i10]);
                                } catch (Exception unused) {
                                    if (byteArrayOutputStream != null) {
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                    return byteArray;
                                } catch (Throwable th) {
                                    th = th;
                                    byteArrayOutputStream2 = byteArrayOutputStream;
                                    if (byteArrayOutputStream2 != null) {
                                        try {
                                            byteArrayOutputStream2.close();
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    if (dataOutputStream == null) {
                                        throw th;
                                    }
                                    try {
                                        dataOutputStream.close();
                                        throw th;
                                    } catch (Exception unused4) {
                                        throw th;
                                    }
                                }
                            }
                            dataOutputStream.flush();
                            byteArray = byteArrayOutputStream.toByteArray();
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused5) {
                            }
                            dataOutputStream.close();
                        } catch (Exception unused6) {
                            dataOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = null;
                        }
                    } catch (Exception unused7) {
                        byteArrayOutputStream = null;
                        dataOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        dataOutputStream = null;
                    }
                }
            } catch (Exception unused8) {
            }
        }
        return byteArray;
    }

    private static byte[] h(String str, byte[] bArr) {
        return v.e.d(str, bArr);
    }

    public final b b(c cVar) {
        ByteArrayInputStream byteArrayInputStream;
        String str;
        String str2;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(cVar.f7178b);
            try {
                try {
                    byte[] bArr = new byte[5];
                    byteArrayInputStream.read(bArr);
                    byte[] bArr2 = new byte[Integer.parseInt(new String(bArr))];
                    byteArrayInputStream.read(bArr2);
                    str = new String(bArr2);
                    try {
                        byte[] bArr3 = new byte[5];
                        byteArrayInputStream.read(bArr3);
                        int i10 = Integer.parseInt(new String(bArr3));
                        if (i10 > 0) {
                            byte[] bArrB = new byte[i10];
                            byteArrayInputStream.read(bArrB);
                            if (this.f7199a) {
                                bArrB = v.e.d(this.f7200b, bArrB);
                            }
                            if (cVar.f7177a) {
                                bArrB = v.c.b(bArrB);
                            }
                            str2 = new String(bArrB);
                        } else {
                            str2 = null;
                        }
                        try {
                            byteArrayInputStream.close();
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        str2 = null;
                    }
                } catch (Exception unused4) {
                    str = null;
                }
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream2 = byteArrayInputStream;
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Exception unused5) {
                    }
                }
                throw th;
            }
        } catch (Exception unused6) {
            byteArrayInputStream = null;
            str = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (str == null && str2 == null) {
            return null;
        }
        return new b(str, str2);
    }

    public final c c(b bVar, boolean z10) {
        if (bVar == null) {
            return null;
        }
        byte[] bytes = bVar.f7175a.getBytes();
        byte[] bytes2 = bVar.f7176b.getBytes();
        if (z10) {
            try {
                bytes2 = v.c.a(bytes2);
            } catch (Exception unused) {
                z10 = false;
            }
        }
        return new c(z10, this.f7199a ? g(bytes, v.d.a(this.f7200b, u.a.f97400b), v.e.b(this.f7200b, bytes2)) : g(bytes, bytes2));
    }
}
