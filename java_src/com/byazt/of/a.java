package com.byazt.of;

import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.facebook.common.util.f;
import com.join.mgps.dto.Constant;
import com.kwad.sdk.api.model.AdnName;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import net.lingala.zip4j.util.e;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1217, 34})
public class a {
    @DungeonFlag
    private static String c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static JSONObject tt(List<c> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONObject jSONObject = new JSONObject();
        for (c cVar : list) {
            if (cVar != null) {
                arrayList.add(c(cVar.tt()));
                arrayList2.add(String.valueOf(cVar.c()));
            }
        }
        c(jSONObject, Constant.MD5, arrayList, false);
        c(jSONObject, "subject", arrayList2, false);
        return jSONObject;
    }

    public static void c(JSONObject jSONObject, String str, List<String> list, boolean z10) {
        if (jSONObject == null || list == null || list.isEmpty()) {
            return;
        }
        if (z10) {
            try {
                jSONObject.put(str + "Size", list.size());
            } catch (JSONException unused) {
                return;
            }
        }
        jSONObject.put(str, n.c(list));
    }

    private static JSONObject c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            if (str.endsWith(".png")) {
                arrayList2.add(str.substring(0, str.lastIndexOf(".png")));
            } else if (str.endsWith(".xml")) {
                arrayList.add(str.substring(0, str.lastIndexOf(".xml")));
            } else {
                arrayList3.add(str);
            }
        }
        c(jSONObject, "xml", arrayList, true);
        c(jSONObject, "png", arrayList2, true);
        c(jSONObject, AdnName.OTHER, arrayList3, true);
        return jSONObject;
    }

    public static long c(long j10, InputStream inputStream) throws IOException {
        if (j10 != -1) {
            return j10;
        }
        byte[] bArr = new byte[8192];
        long j11 = 0;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return j11;
            }
            j11 += (long) i10;
        }
    }

    private static void c(File file, List<c> list) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                tt ttVarC = ve.c(randomAccessFile, 0L, randomAccessFile.length());
                list.addAll(com.byazt.ct.c.c(ttVarC, com.byazt.tdd.c.c(ttVarC)));
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0277 A[EXC_TOP_SPLITTER, PHI: r8 r10
      0x0277: PHI (r8v2 org.json.JSONObject) = (r8v4 org.json.JSONObject), (r8v9 org.json.JSONObject), (r8v9 org.json.JSONObject) binds: [B:122:0x0283, B:114:0x0270, B:115:0x0272] A[DONT_GENERATE, DONT_INLINE]
      0x0277: PHI (r10v1 java.util.zip.ZipFile) = (r10v2 java.util.zip.ZipFile), (r10v3 java.util.zip.ZipFile), (r10v3 java.util.zip.ZipFile) binds: [B:122:0x0283, B:114:0x0270, B:115:0x0272] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @DungeonFlag
    public static JSONObject c(File file) {
        JSONObject jSONObject;
        ZipFile zipFile;
        JSONObject jSONObject2;
        ArrayList arrayList;
        ArrayList arrayList2;
        Enumeration<? extends ZipEntry> enumeration;
        ArrayList arrayList3;
        JSONObject jSONObject3 = new JSONObject();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        JSONObject jSONObject4 = new JSONObject();
        c(file, arrayList10);
        try {
            zipFile = new ZipFile(file);
            try {
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    long jC = 0;
                    while (enumerationEntries.hasMoreElements()) {
                        try {
                            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                            if (zipEntryNextElement != null) {
                                String name = zipEntryNextElement.getName();
                                if (TextUtils.isEmpty(name)) {
                                    try {
                                        if (!zipEntryNextElement.isDirectory()) {
                                        }
                                    } catch (Throwable unused) {
                                        jSONObject = jSONObject3;
                                        if (zipFile != null) {
                                            zipFile.close();
                                        }
                                        return jSONObject;
                                    }
                                }
                                String[] strArrSplit = name.split(e.F0);
                                ArrayList arrayList11 = arrayList9;
                                ArrayList arrayList12 = arrayList10;
                                long size = zipEntryNextElement.getSize();
                                enumeration = enumerationEntries;
                                jSONObject2 = jSONObject3;
                                if (name.startsWith("res/drawable/")) {
                                    try {
                                        arrayList3 = arrayList8;
                                        if (name.length() > 13) {
                                            arrayList5.add(strArrSplit[2]);
                                        }
                                        arrayList = arrayList11;
                                        arrayList2 = arrayList12;
                                        arrayList8 = arrayList3;
                                        arrayList10 = arrayList2;
                                        enumerationEntries = enumeration;
                                        arrayList9 = arrayList;
                                        jSONObject3 = jSONObject2;
                                    } catch (Throwable unused2) {
                                        jSONObject = jSONObject2;
                                        if (zipFile != null) {
                                            zipFile.close();
                                        }
                                        return jSONObject;
                                    }
                                } else {
                                    arrayList3 = arrayList8;
                                }
                                if (name.startsWith("res/") && strArrSplit.length == 2) {
                                    arrayList6.add(strArrSplit[1]);
                                } else if (name.startsWith("classes") && name.endsWith(".dex")) {
                                    jC += c(size, zipFile.getInputStream(zipEntryNextElement));
                                    arrayList9 = arrayList11;
                                    arrayList10 = arrayList12;
                                    enumerationEntries = enumeration;
                                    jSONObject3 = jSONObject2;
                                    arrayList8 = arrayList3;
                                } else if (name.startsWith("assets/") && strArrSplit.length >= 2) {
                                    arrayList4.add(strArrSplit[1]);
                                    if (name.startsWith("assets/assets/resources/native/") && strArrSplit.length >= 6 && jSONObject4.length() < 10) {
                                        if (!TextUtils.isEmpty(strArrSplit[4]) && !jSONObject4.has(strArrSplit[4])) {
                                            jSONObject4.put(strArrSplit[4], c(size, zipFile.getInputStream(zipEntryNextElement)));
                                        } else if (jSONObject4.has(strArrSplit[4])) {
                                            jSONObject4.put(strArrSplit[4], jSONObject4.getLong(strArrSplit[4]) + c(size, zipFile.getInputStream(zipEntryNextElement)));
                                        }
                                    }
                                } else {
                                    if (name.startsWith("lib/armeabi/") && name.length() > 12) {
                                        arrayList7.add(strArrSplit[2]);
                                    } else {
                                        if (name.startsWith("lib/armeabi-v7a/") && name.length() > 16) {
                                            arrayList8 = arrayList3;
                                            arrayList8.add(strArrSplit[2]);
                                            arrayList = arrayList11;
                                        } else {
                                            arrayList8 = arrayList3;
                                            if (name.startsWith("lib/arm64-v8a/") && name.length() > 14) {
                                                arrayList = arrayList11;
                                                arrayList.add(strArrSplit[2]);
                                            } else {
                                                arrayList = arrayList11;
                                                if (((name.startsWith("META-INF/") && name.endsWith(".RSA")) || name.endsWith(".DSA") || name.endsWith(".EC")) && arrayList12.isEmpty()) {
                                                    try {
                                                        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                                                        if (certificateFactory != null) {
                                                            for (Certificate certificate : certificateFactory.generateCertificates(zipFile.getInputStream(zipEntryNextElement))) {
                                                                if (certificate instanceof X509Certificate) {
                                                                    c cVar = new c(String.valueOf(((X509Certificate) certificate).getSubjectDN()), ((X509Certificate) certificate).getEncoded());
                                                                    arrayList2 = arrayList12;
                                                                    try {
                                                                        arrayList2.add(cVar);
                                                                    } catch (CertificateException unused3) {
                                                                    }
                                                                } else {
                                                                    arrayList2 = arrayList12;
                                                                }
                                                                arrayList12 = arrayList2;
                                                            }
                                                        }
                                                    } catch (CertificateException unused4) {
                                                    }
                                                }
                                            }
                                        }
                                        arrayList2 = arrayList12;
                                    }
                                    arrayList10 = arrayList2;
                                    enumerationEntries = enumeration;
                                    arrayList9 = arrayList;
                                    jSONObject3 = jSONObject2;
                                }
                                arrayList = arrayList11;
                                arrayList2 = arrayList12;
                                arrayList8 = arrayList3;
                                arrayList10 = arrayList2;
                                enumerationEntries = enumeration;
                                arrayList9 = arrayList;
                                jSONObject3 = jSONObject2;
                            }
                            jSONObject2 = jSONObject3;
                            arrayList = arrayList9;
                            arrayList2 = arrayList10;
                            enumeration = enumerationEntries;
                            arrayList10 = arrayList2;
                            enumerationEntries = enumeration;
                            arrayList9 = arrayList;
                            jSONObject3 = jSONObject2;
                        } catch (Throwable unused5) {
                            jSONObject2 = jSONObject3;
                        }
                    }
                    JSONObject jSONObject5 = jSONObject3;
                    ArrayList arrayList13 = arrayList9;
                    ArrayList arrayList14 = arrayList10;
                    try {
                        jSONObject = jSONObject5;
                        try {
                            jSONObject.put("apkSize", file.length());
                            jSONObject.put("dexSize", jC);
                            if (jSONObject4.length() > 0) {
                                jSONObject.put("cocos", jSONObject4);
                            }
                            c(jSONObject, "assets", arrayList4, false);
                            JSONObject jSONObject6 = new JSONObject();
                            c(jSONObject6, "eabi", arrayList7, false);
                            c(jSONObject6, "v7a", arrayList8, false);
                            c(jSONObject6, "v8a", arrayList13, false);
                            if (jSONObject6.length() > 0) {
                                jSONObject.put("lib", jSONObject6);
                            }
                            JSONObject jSONObjectC = c(arrayList5);
                            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                                jSONObject.put("drawable", jSONObjectC);
                            }
                            JSONObject jSONObjectC2 = c(arrayList6);
                            if (jSONObjectC2 != null && jSONObjectC2.length() > 0) {
                                jSONObject.put(f.f26953g, jSONObjectC2);
                            }
                            JSONObject jSONObjectTt = tt(arrayList14);
                            if (jSONObjectTt.length() > 0) {
                                jSONObject.put("signInfo", jSONObjectTt);
                            }
                        } catch (Throwable unused6) {
                            if (zipFile != null) {
                            }
                            return jSONObject;
                        }
                    } catch (Throwable unused7) {
                        jSONObject = jSONObject5;
                    }
                } catch (Throwable unused8) {
                    jSONObject = jSONObject3;
                }
                zipFile.close();
            } catch (IOException unused9) {
            }
        } catch (Throwable unused10) {
            jSONObject = jSONObject3;
            zipFile = null;
        }
        return jSONObject;
    }
}
