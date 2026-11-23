package com.byazt.vnu;

import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.join.mgps.Util.o0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 54})
public class ve {
    public int c(File file, boolean z10, StringBuilder sb2) {
        String string;
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                ZipEntry entry = zipFile2.getEntry("assets/ZeusResMapping");
                if (entry == null) {
                    com.byazt.uq.sp.c(zipFile2);
                    return 200;
                }
                if (z10) {
                    File file2 = new File(file.getParentFile(), "resMappingBak");
                    if (!file2.exists()) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "resMappingBakFile is not exists. " + file2.getAbsolutePath());
                        sb2.append("resMappingBakFile is not exists. ");
                        sb2.append(file2.getAbsolutePath());
                        com.byazt.uq.sp.c(zipFile2);
                        return 300;
                    }
                    string = com.byazt.uq.x.c(file2);
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    com.byazt.uq.x.c(zipFile2.getInputStream(entry), byteArrayOutputStream);
                    string = byteArrayOutputStream.toString();
                }
                if (TextUtils.isEmpty(string)) {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "zeusResMappingContent empty, useBakFile:".concat(String.valueOf(z10)));
                    sb2.append("zeusResMappingContent isEmpty. useBakFile:");
                    sb2.append(z10);
                    com.byazt.uq.sp.c(zipFile2);
                    return 300;
                }
                JSONObject jSONObject = new JSONObject(string);
                JSONObject jSONObject2 = new JSONObject(string);
                JSONArray jSONArray = (JSONArray) jSONObject.get("fileNames");
                final HashSet<String> hashSet = new HashSet<>();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    hashSet.add((String) jSONArray.get(i10));
                }
                final JSONObject jSONObject3 = (JSONObject) jSONObject.get("resMapping");
                final JSONObject jSONObject4 = (JSONObject) jSONObject2.get("resMapping");
                final int[] iArr = {0};
                try {
                    c(file, hashSet, new x() { // from class: com.byazt.vnu.ve.1
                        @Override // com.byazt.vnu.x
                        public int c(int i11) {
                            String str = "0x" + Integer.toHexString(i11);
                            String str2 = (String) jSONObject3.opt(str);
                            if (str2 == null) {
                                return i11;
                            }
                            int identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1], str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                            if (identifier == 0) {
                                identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1].replaceAll("_", o0.f49827a), str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                            }
                            if (identifier == 0) {
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "getIdentifier failed. resName is ".concat(str2));
                                return i11;
                            }
                            String str3 = "0x" + Integer.toHexString(identifier);
                            if (TextUtils.equals(jSONObject4.optString(str), str2)) {
                                jSONObject4.remove(str);
                            }
                            try {
                                jSONObject4.put(str3, str2);
                            } catch (Throwable th) {
                                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "update resMappingBak failed.", th);
                            }
                            if (identifier != i11) {
                                int[] iArr2 = iArr;
                                iArr2[0] = iArr2[0] + 1;
                            }
                            return identifier;
                        }

                        @Override // com.byazt.vnu.x
                        public boolean c(String str) {
                            return hashSet.contains(str);
                        }
                    });
                    ZeusLogger.d(ZeusLogger.TAG_INSTALL, "modifyRes count = " + iArr[0]);
                    if (com.byazt.uq.x.c(jSONObject2.toString(), new File(file.getParentFile(), "resMappingBak"), sb2)) {
                        com.byazt.uq.sp.c(zipFile2);
                        return 100;
                    }
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "writeText failed." + sb2.toString());
                    sb2.append("writeText failed.");
                    com.byazt.uq.sp.c(zipFile2);
                    return 300;
                } catch (Throwable th) {
                    th = th;
                    zipFile = zipFile2;
                    try {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "modifyRes failed. catch: " + th.getMessage(), th);
                        sb2.append("modifyRes failed. catch: ");
                        sb2.append(th.getMessage());
                        return 300;
                    } finally {
                        if (zipFile != null) {
                            com.byazt.uq.sp.c(zipFile);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void c(File file, HashSet<String> hashSet, x xVar) throws Throwable {
        MappedByteBuffer mappedByteBufferC = c(file);
        int iC = c(mappedByteBufferC);
        if (iC != -1) {
            int i10 = mappedByteBufferC.getInt(iC + 12);
            int i11 = mappedByteBufferC.getInt(iC + 16);
            int i12 = i10 + i11;
            while (i11 < i12) {
                if (mappedByteBufferC.getInt(i11) == 33639248) {
                    int i13 = mappedByteBufferC.getShort(i11 + 28);
                    short s10 = mappedByteBufferC.getShort(i11 + 30);
                    byte[] bArr = new byte[i13];
                    for (int i14 = 0; i14 < i13; i14++) {
                        bArr[i14] = mappedByteBufferC.get(i11 + 46 + i14);
                    }
                    String str = new String(bArr);
                    int i15 = mappedByteBufferC.getInt(i11 + 20);
                    int i16 = mappedByteBufferC.getInt(i11 + 24);
                    if (hashSet.contains(str)) {
                        if (i15 == i16) {
                            com.byazt.uq.n<Integer, byte[]> nVarC = c(mappedByteBufferC, mappedByteBufferC.getInt(i11 + 42), str);
                            try {
                                sl.c(str, nVarC.tt, xVar);
                                for (int i17 = 0; i17 < nVarC.tt.length; i17++) {
                                    mappedByteBufferC.put(nVarC.f20945c.intValue() + i17, nVarC.tt[i17]);
                                }
                            } catch (Throwable th) {
                                throw new RuntimeException(th);
                            }
                        } else {
                            throw new Throwable(str + " is compressed.");
                        }
                    }
                    i11 += i13 + 46 + s10;
                } else {
                    throw new RuntimeException("Expected: 0x02014b50, got: " + mappedByteBufferC.getInt(i11));
                }
            }
            return;
        }
        throw new Throwable("endOfCentralPosition == -1");
    }

    private static com.byazt.uq.n<Integer, byte[]> c(MappedByteBuffer mappedByteBuffer, int i10, String str) {
        if (mappedByteBuffer.getInt(i10) == 67324752) {
            int i11 = mappedByteBuffer.getInt(i10 + 18);
            int i12 = mappedByteBuffer.getInt(i10 + 22);
            if (i11 == i12) {
                byte[] bArr = new byte[i12];
                int i13 = i10 + 30 + mappedByteBuffer.getShort(i10 + 26) + mappedByteBuffer.getShort(i10 + 28);
                for (int i14 = 0; i14 < i12; i14++) {
                    bArr[i14] = mappedByteBuffer.get(i13 + i14);
                }
                return new com.byazt.uq.n<>(Integer.valueOf(i13), bArr);
            }
            throw new RuntimeException(str + " is compressed. compressSize:" + i11 + " size:" + i12);
        }
        throw new RuntimeException("Expected: 0x04034b50, got: " + mappedByteBuffer.getInt(i10) + " FileName:" + str);
    }

    private int c(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i10 = iCapacity - 22;
        int iMin = Math.min(i10, 65535);
        for (int i11 = 0; i11 < iMin; i11++) {
            int i12 = i10 - i11;
            if (byteBuffer.getInt(i12) == 101010256 && byteBuffer.getShort(i12 + 20) == i11) {
                return i12;
            }
        }
        return -1;
    }

    public MappedByteBuffer c(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            ZeusLogger.d("temp-pxr", "mappedByteBuffer " + file.canWrite());
            if (!file.canWrite()) {
                file.setWritable(true);
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, e.f94694e0);
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                long size = channel.size();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, size);
                byte[] bArr = new byte[4194304];
                long j10 = size / 4194304;
                int i10 = (int) (size % 4194304);
                for (int i11 = 0; i11 < j10; i11++) {
                    map.get(bArr);
                }
                if (i10 > 0) {
                    map.get(new byte[i10]);
                }
                map.order(ByteOrder.LITTLE_ENDIAN);
                randomAccessFile2.close();
                return map;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
