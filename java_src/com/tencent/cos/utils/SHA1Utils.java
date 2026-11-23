package com.tencent.cos.utils;

import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import java.io.FileInputStream;
import java.security.MessageDigest;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SHA1Utils {
    /* JADX WARN: Code duplicated, block: B:40:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0041: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:28:0x0041 */
    public static String getFileSha1(String str) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 <= 0) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i10);
                    }
                    String hexString = StringUtils.toHexString(messageDigest.digest());
                    try {
                        fileInputStream.close();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return hexString;
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream3 = fileInputStream2;
                if (fileInputStream3 != null) {
                    try {
                        fileInputStream3.close();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e14) {
            e = e14;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream3 != null) {
                fileInputStream3.close();
            }
            throw th;
        }
    }

    public static String getSlicePartSha1(String str, int i10, StringBuilder sb2) throws Exception {
        int i11;
        int i12 = i10 <= 1048576 ? i10 : 1048576;
        JSONArray jSONArray = new JSONArray();
        FileInputStream fileInputStream = null;
        try {
            try {
                CommonSha1Utils commonSha1Utils = new CommonSha1Utils();
                commonSha1Utils.init();
                fileInputStream = FileUtils.getFileInputStream(str);
                long fileLength = FileUtils.getFileLength(str);
                int iIntValue = Long.valueOf((((long) (i12 - 1)) + fileLength) / ((long) i12)).intValue();
                int i13 = 0;
                while (true) {
                    i11 = iIntValue - 1;
                    int i14 = 1024;
                    if (i13 >= i11) {
                        break;
                    }
                    long j10 = i13 * i12;
                    int i15 = 0;
                    while (i15 < i12) {
                        int i16 = i12 - i15;
                        if (i16 > i14) {
                            i16 = 1024;
                        }
                        byte[] bArr = new byte[i16];
                        fileInputStream.read(bArr, 0, i16);
                        commonSha1Utils.update(bArr);
                        i15 += i16;
                        iIntValue = iIntValue;
                        i14 = 1024;
                    }
                    int i17 = iIntValue;
                    JSONObject jSONObject = new JSONObject();
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put("offset", j10);
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put(COSHttpResponseKey.Data.DATALEN, i15);
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put("datasha", commonSha1Utils.dumpTempState());
                    jSONArray.put(i13, jSONObject);
                    i13++;
                    iIntValue = i17;
                    FileUtils.closeFileStream(fileInputStream);
                    throw th;
                }
                long j11 = i12 * i11;
                int iIntValue2 = Long.valueOf(fileLength - j11).intValue();
                int i18 = 0;
                while (i18 < iIntValue2) {
                    int i19 = iIntValue2 - i18;
                    if (i19 > 1024) {
                        i19 = 1024;
                    }
                    byte[] bArr2 = new byte[i19];
                    fileInputStream.read(bArr2, 0, i19);
                    commonSha1Utils.update(bArr2);
                    i18 += i19;
                }
                commonSha1Utils.finish();
                sb2.append(commonSha1Utils.digout());
                JSONObject jSONObject2 = new JSONObject();
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put("offset", j11);
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put(COSHttpResponseKey.Data.DATALEN, i18);
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put("datasha", commonSha1Utils.digout());
                jSONArray.put(i11, jSONObject2);
                FileUtils.closeFileStream(fileInputStream);
                return jSONArray.toString();
            } catch (Exception e10) {
                e10.printStackTrace();
                throw e10;
            }
        } catch (Throwable th) {
            FileUtils.closeFileStream(fileInputStream);
            throw th;
        }
    }

    public static String getFileSha1(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(bArr, 0, bArr.length);
                return StringUtils.toHexString(messageDigest.digest());
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (OutOfMemoryError e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }
}
