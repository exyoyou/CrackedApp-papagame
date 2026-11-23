package com.byazt.fdg;

import android.content.pm.Signature;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.huaksj.vasdolly.common.e;
import java.io.RandomAccessFile;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 15})
@RequiresApi(api = 21)
public class uj {
    public static z c(String str, int i10) throws Throwable {
        int[] iArr;
        if (i10 > 3) {
            throw new nu(4, "No signature found in package of version " + i10 + " or newer for package " + str);
        }
        RandomAccessFile randomAccessFile = null;
        Signature[] signatureArr = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "r");
                try {
                    try {
                        a.c(str, randomAccessFile2, e.f34404a, 1896449818);
                        try {
                            ve.C0306ve c0306veC = ve.c(randomAccessFile2, str);
                            Signature[] signatureArrC = c(new Certificate[][]{c0306veC.f14137c});
                            ve.tt ttVar = c0306veC.tt;
                            if (ttVar != null) {
                                int size = ttVar.f14136c.size();
                                Signature[] signatureArr2 = new Signature[size];
                                iArr = new int[c0306veC.tt.tt.size()];
                                for (int i11 = 0; i11 < size; i11++) {
                                    signatureArr2[i11] = new Signature(c0306veC.tt.f14136c.get(i11).getEncoded());
                                    iArr[i11] = c0306veC.tt.tt.get(i11).intValue();
                                }
                                signatureArr = signatureArr2;
                            } else {
                                iArr = null;
                            }
                            z zVar = new z(signatureArrC, 3, signatureArr, iArr);
                            try {
                                randomAccessFile2.close();
                            } catch (Exception unused) {
                            }
                            return zVar;
                        } catch (yp e10) {
                            if (i10 >= 3) {
                                throw new nu(4, "No APK Signature Scheme v3 signature in package ".concat(String.valueOf(str)), e10);
                            }
                            if (i10 > 2) {
                                throw new nu(4, "No signature found in package of version " + i10 + " or newer for package " + str);
                            }
                            try {
                                z zVar2 = new z(c(tt.c(randomAccessFile2, str)), 2);
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused2) {
                                }
                                return zVar2;
                            } catch (yp e11) {
                                if (i10 >= 2) {
                                    throw new nu(4, "No APK Signature Scheme v2 signature in package ".concat(String.valueOf(str)), e11);
                                }
                                if (i10 <= 1) {
                                    z zVarC = c.c(str, true);
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Exception unused3) {
                                    }
                                    return zVarC;
                                }
                                throw new nu(4, "No signature found in package of version " + i10 + " or newer for package " + str);
                            } catch (Exception e12) {
                                throw new nu(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e12);
                            }
                        } catch (Exception e13) {
                            throw new nu(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e13);
                        }
                    } catch (Exception e14) {
                        throw new nu(4, "Failed to collect certificates from " + str + " when findSignatureInfo at once", e14);
                    }
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            throw new nu(6, "failed to read apk file, minSignatureSchemeVersion : " + i10 + ", apkPath : " + str);
        }
    }

    public static Signature[] c(Certificate[][] certificateArr) throws CertificateEncodingException {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i10 = 0; i10 < certificateArr.length; i10++) {
            if (com.byazt.uq.i.ve()) {
                Constructor constructorC = com.byazt.oep.c.c((Class<?>) Signature.class, (Class<?>[]) new Class[]{Certificate[].class});
                if (constructorC != null) {
                    constructorC.setAccessible(true);
                }
                if (constructorC != null && constructorC.isAccessible()) {
                    try {
                        signatureArr[i10] = (Signature) constructorC.newInstance(certificateArr[i10]);
                    } catch (IllegalAccessException e10) {
                        com.byazt.bog.a.c(e10);
                    } catch (InstantiationException e11) {
                        com.byazt.bog.a.c(e11);
                    } catch (InvocationTargetException e12) {
                        com.byazt.bog.a.c(e12);
                    }
                }
            } else {
                signatureArr[i10] = new Signature(certificateArr[i10][0].getEncoded());
            }
        }
        return signatureArr;
    }
}
