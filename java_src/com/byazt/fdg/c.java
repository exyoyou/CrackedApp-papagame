package com.byazt.fdg;

import android.content.pm.Signature;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference<byte[]> f14124c = new AtomicReference<>();

    public static z c(String str, boolean z10) throws Throwable {
        JarFile jarFile = null;
        try {
            try {
                JarFile jarFile2 = new JarFile(str);
                try {
                    ArrayList<JarEntry> arrayList = new ArrayList();
                    JarEntry jarEntry = jarFile2.getJarEntry("AndroidManifest.xml");
                    if (jarEntry == null) {
                        throw new nu(1, "Package " + str + " has no manifest");
                    }
                    Certificate[][] certificateArrC = c(jarFile2, jarEntry);
                    if (com.byazt.uq.uj.c(certificateArrC)) {
                        throw new nu(4, "Package " + str + " has no certificates at entry AndroidManifest.xml");
                    }
                    Signature[] signatureArrC = uj.c(certificateArrC);
                    if (z10) {
                        Enumeration<JarEntry> enumerationEntries = jarFile2.entries();
                        while (enumerationEntries.hasMoreElements()) {
                            JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                            if (!jarEntryNextElement.isDirectory()) {
                                String name = jarEntryNextElement.getName();
                                if (!name.startsWith("META-INF/") && !name.equals("AndroidManifest.xml")) {
                                    arrayList.add(jarEntryNextElement);
                                }
                            }
                        }
                        for (JarEntry jarEntry2 : arrayList) {
                            Certificate[][] certificateArrC2 = c(jarFile2, jarEntry2);
                            if (com.byazt.uq.uj.c(certificateArrC2)) {
                                throw new nu(4, "Package " + str + " has no certificates at entry " + jarEntry2.getName());
                            }
                            if (!z.c(signatureArrC, uj.c(certificateArrC2))) {
                                throw new nu(3, "Package " + str + " has mismatched certificates at entry " + jarEntry2.getName());
                            }
                        }
                    }
                    z zVar = new z(signatureArrC, 1, null, null, null);
                    try {
                        jarFile2.close();
                    } catch (Exception unused) {
                    }
                    return zVar;
                } catch (IOException e10) {
                    e = e10;
                    throw new nu(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (RuntimeException e11) {
                    e = e11;
                    throw new nu(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (GeneralSecurityException e12) {
                    e = e12;
                    throw new nu(2, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (Throwable th) {
                    th = th;
                    jarFile = jarFile2;
                    if (jarFile != null) {
                        try {
                            jarFile.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            e = e13;
        } catch (RuntimeException e14) {
            e = e14;
        } catch (GeneralSecurityException e15) {
            e = e15;
        }
    }

    private static Certificate[][] c(JarFile jarFile, JarEntry jarEntry) throws nu {
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStream2 = jarFile.getInputStream(jarEntry);
                c(inputStream2);
                Certificate[][] certificateArr = {jarEntry.getCertificates()};
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (RuntimeException e10) {
                        throw e10;
                    } catch (Exception unused) {
                    }
                }
                return certificateArr;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (RuntimeException e11) {
                        throw e11;
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException e12) {
            throw new nu(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e12);
        }
    }

    private static void c(InputStream inputStream) throws IOException {
        byte[] andSet = f14124c.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (inputStream.read(andSet, 0, andSet.length) != -1) {
        }
        f14124c.set(andSet);
    }
}
