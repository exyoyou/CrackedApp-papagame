package com.czhj.sdk.common.utils;

import com.czhj.sdk.logger.SigmobLog;
import com.join.mgps.Util.o0;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes9.dex */
public final class Md5Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25656a = "Md5Util";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25657b = 1024;

    private static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() < 2) {
                sb2.append(0);
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static String fileMd5(File file) {
        MessageDigest messageDigest;
        FileInputStream fileInputStream;
        if (file == null || !file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[2048];
        try {
            messageDigest = MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
            try {
                fileInputStream = new FileInputStream(file);
                while (true) {
                    try {
                        int i10 = fileInputStream.read(bArr, 0, 1024);
                        if (i10 == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i10);
                    } catch (Throwable th) {
                        th = th;
                        try {
                            SigmobLog.e(th.getMessage());
                            return null;
                        } finally {
                            if (messageDigest != null) {
                                try {
                                    messageDigest.clone();
                                } catch (Throwable th2) {
                                    SigmobLog.e(th2.getMessage());
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th3) {
                                    SigmobLog.e(th3.getMessage());
                                }
                            }
                        }
                    }
                }
                if (messageDigest != null) {
                    try {
                        messageDigest.clone();
                    } catch (Throwable th4) {
                        SigmobLog.e(th4.getMessage());
                    }
                }
                try {
                    fileInputStream.close();
                } catch (Throwable th5) {
                    SigmobLog.e(th5.getMessage());
                }
                return a(messageDigest.digest());
            } catch (Throwable th6) {
                th = th6;
                fileInputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            messageDigest = null;
            fileInputStream = null;
        }
    }

    public static String getFileExtFromUrl(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        String[] strArrSplit = str.split("\\?")[0].split(net.lingala.zip4j.util.e.F0);
        String[] strArrSplit2 = strArrSplit[strArrSplit.length - 1].split("\\.");
        return strArrSplit2[strArrSplit2.length - 1];
    }

    public static String getMd5FilenameFromUrl(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        return md5(str) + o0.f49827a + getFileExtFromUrl(str);
    }

    public static String md5(String str) {
        if (str == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes("UTF-8");
            MessageDigest messageDigest = MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i10 = 0;
            for (byte b10 : bArrDigest) {
                int i11 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 = i11 + 1;
                cArr2[i11] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String fileMd5(String str) {
        FileInputStream fileInputStream;
        DigestInputStream digestInputStream;
        if (str == null || !new File(str).exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(str);
            try {
                digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5));
                try {
                    while (digestInputStream.read(new byte[1024]) > 0) {
                    }
                    String strA = a(digestInputStream.getMessageDigest().digest());
                    try {
                        fileInputStream.close();
                    } catch (Throwable th) {
                        SigmobLog.e(th.getMessage());
                    }
                    try {
                        digestInputStream.close();
                    } catch (Throwable th2) {
                        SigmobLog.e(th2.getMessage());
                    }
                    return strA;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        SigmobLog.e(th.getMessage());
                        return null;
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th4) {
                                SigmobLog.e(th4.getMessage());
                            }
                        }
                        if (digestInputStream != null) {
                            try {
                                digestInputStream.close();
                            } catch (Throwable th5) {
                                SigmobLog.e(th5.getMessage());
                            }
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                digestInputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            fileInputStream = null;
            digestInputStream = null;
        }
    }
}
