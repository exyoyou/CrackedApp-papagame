package com.baidu.mobads.sdk.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.security.DigestInputStream;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes6.dex */
public class bu extends File {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7635a = "LocalApkFile";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f7636b = 6916965592955692235L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static ClassLoader f7637h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bz f7638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Class<?> f7639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f7640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PublicKey f7641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private bv f7642g;

    class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    }

    public bu(String str, Context context) {
        this(str, context, null);
    }

    private void d() {
        File[] fileArrListFiles = this.f7640e.getFilesDir().listFiles(new a());
        for (int i10 = 0; fileArrListFiles != null && i10 < fileArrListFiles.length; i10++) {
            if (fileArrListFiles[i10].getAbsolutePath().contains("__xadsdk__remote__final__")) {
                this.f7642g.a(f7635a, "clearDexCacheFiles-->" + i10 + "--" + fileArrListFiles[i10].getAbsolutePath());
                fileArrListFiles[i10].delete();
            }
        }
    }

    protected void a() throws Throwable {
        if (this.f7638c == null) {
            this.f7642g.a(f7635a, "built-in apk, no need to check");
            return;
        }
        String strA = a(new File(getAbsolutePath()));
        String strB = b(this.f7638c.d());
        if (strA.equalsIgnoreCase(strB)) {
            return;
        }
        throw new cb.a("doCheckApkIntegrity failed, md5sum: " + strA + ", checksum in json info: " + strB);
    }

    protected Class<?> b() throws cb.a {
        if (this.f7639d == null) {
            File file = new File(getAbsolutePath());
            try {
                this.f7639d = b(file);
            } catch (Exception unused) {
                file.delete();
            }
        }
        return this.f7639d;
    }

    protected double c() {
        bz bzVar = this.f7638c;
        if (bzVar == null) {
            return 0.0d;
        }
        return bzVar.b();
    }

    public bu(String str, Context context, bz bzVar) {
        super(str);
        this.f7639d = null;
        this.f7640e = null;
        this.f7642g = bv.a();
        this.f7640e = context;
        this.f7638c = bzVar;
        if (bzVar != null) {
            try {
                this.f7641f = c("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDBcp8gg3O7bjdnz+pSxg+JH/mbcKfm7dEjcRqVNAFwG7bTpLwDQh40bZJzrcBKQWbD6kArR6TPuQUCMQ09/y55Vk1P2Kq7vJGGisFpjlqv2qlg8drLdhXkLQUt/SeZVJgT+CNxVbuzxAF61EEf8M0MHi1I2dm6n6lOA6fomiCD9wIDAQAB");
            } catch (Exception unused) {
                this.f7641f = null;
            }
        }
    }

    private static PublicKey c(String str) throws Exception {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NullPointerException unused) {
            throw new Exception("NullPointerException");
        } catch (NoSuchAlgorithmException unused2) {
            throw new Exception("NoSuchAlgorithmException");
        } catch (InvalidKeySpecException unused3) {
            throw new Exception("InvalidKeySpecException");
        }
    }

    private String b(String str) {
        if (this.f7641f == null) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, this.f7641f);
            return new String(cipher.doFinal(bArrDecode), "UTF-8").trim();
        } catch (Exception e10) {
            this.f7642g.c("ErrorWhileVerifySigNature", e10);
            return null;
        }
    }

    protected void a(String str) {
        renameTo(new File(str));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x009d A[Catch: Exception -> 0x0099, TRY_LEAVE, TryCatch #5 {Exception -> 0x0099, blocks: (B:46:0x0095, B:50:0x009d), top: B:58:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private String a(File file) throws Throwable {
        DigestInputStream digestInputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                digestInputStream = new DigestInputStream(fileInputStream2, messageDigest);
                try {
                    while (digestInputStream.read(new byte[4096]) != -1) {
                    }
                    String str = "";
                    for (byte b10 : messageDigest.digest()) {
                        str = str + Integer.toString((b10 & 255) + 256, 16).substring(1);
                    }
                    try {
                        fileInputStream2.close();
                        digestInputStream.close();
                    } catch (Exception e10) {
                        this.f7642g.a(f7635a, e10.getMessage());
                    }
                    return str;
                } catch (Exception e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    try {
                        this.f7642g.a(f7635a, e.getMessage());
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e12) {
                                this.f7642g.a(f7635a, e12.getMessage());
                                return "";
                            }
                        }
                        if (digestInputStream == null) {
                            return "";
                        }
                        digestInputStream.close();
                        return "";
                    } catch (Throwable th) {
                        th = th;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                if (digestInputStream != null) {
                                    digestInputStream.close();
                                }
                            } catch (Exception e13) {
                                this.f7642g.a(f7635a, e13.getMessage());
                                throw th;
                            }
                        } else if (digestInputStream != null) {
                            digestInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                        if (digestInputStream != null) {
                            digestInputStream.close();
                        }
                    } else if (digestInputStream != null) {
                        digestInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e14) {
                e = e14;
                digestInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                digestInputStream = null;
            }
        } catch (Exception e15) {
            e = e15;
            digestInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            digestInputStream = null;
        }
    }

    @TargetApi(14)
    private Class<?> b(File file) throws cb.a {
        Class<?> cls;
        this.f7642g.a(f7635a, "Android version:" + bn.a(this.f7640e).c());
        Class<?> cls2 = null;
        try {
            synchronized (cb.class) {
                String absolutePath = file.getAbsolutePath();
                ClassLoader classLoader = getClass().getClassLoader();
                String absolutePath2 = this.f7640e.getFilesDir().getAbsolutePath();
                String str = z.aQ;
                ClassLoader classLoaderA = ao.a(absolutePath, absolutePath2, (String) null, classLoader);
                f7637h = classLoaderA;
                cls = Class.forName(str, true, classLoaderA);
                this.f7642g.a(f7635a, "dexPath=" + absolutePath + ", cl=" + classLoader + ", dir=" + absolutePath2 + ", len=" + file.length() + ", list=" + file.list() + ", class=" + cls);
            }
            cls2 = cls;
        } catch (Exception e10) {
            this.f7642g.a(f7635a, e10.getMessage());
        }
        this.f7642g.a(f7635a, "jar.path=" + file.getAbsolutePath() + ", clz=" + cls2);
        return cls2;
    }

    public static ClassLoader a(Context context) {
        ClassLoader classLoader = f7637h;
        return classLoader != null ? classLoader : av.a(context.getApplicationContext());
    }
}
