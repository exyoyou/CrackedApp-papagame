package com.byazt.edv;

import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.omf.gt;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1881, 20})
public final class c {
    public static byte[] c(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        try {
            return c(new FileInputStream(file));
        } catch (Exception e10) {
            m.c(e10);
            return null;
        }
    }

    public static void tt(String str) throws Exception {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            int length = fileArrListFiles.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (fileArrListFiles[i10].isDirectory()) {
                    tt(fileArrListFiles[i10].getAbsolutePath());
                } else {
                    fileArrListFiles[i10].delete();
                }
            }
            file.delete();
        }
    }

    public static JSONObject ve(String str) {
        File fileUj = sp.uj(gt.getContext(), false, null);
        if (fileUj != null) {
            File file = new File(fileUj, str);
            if (file.exists()) {
                try {
                    return new JSONObject(new String(c(new FileInputStream(file.getAbsoluteFile()))));
                } catch (Exception e10) {
                    m.c(e10);
                }
            }
        }
        return null;
    }

    public static boolean c(InputStream inputStream, String str, String str2, long j10) throws Throwable {
        File file;
        File file2;
        if (inputStream == null) {
            return false;
        }
        long j11 = j10 != -2147483648L ? j10 * 1048576 : 1099511627776L;
        FileOutputStream fileOutputStream = null;
        long j12 = 0;
        try {
            File file3 = new File(str);
            if (!file3.exists() && !file3.mkdirs()) {
                try {
                    inputStream.close();
                } catch (Exception e10) {
                    m.c(e10);
                }
                return false;
            }
            file2 = new File(file3, str2);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i10);
                        j12 += (long) i10;
                    }
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    inputStream.close();
                    try {
                        inputStream.close();
                        if (j10 == -2147483648L || j12 <= j11) {
                            return true;
                        }
                        file2.delete();
                        return false;
                    } catch (Exception e11) {
                        m.c(e11);
                        return true;
                    }
                } catch (Exception unused) {
                    fileOutputStream = fileOutputStream2;
                } catch (Throwable th) {
                    file = file2;
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e12) {
                            m.c(e12);
                        }
                    }
                    try {
                        inputStream.close();
                        if (j10 != -2147483648L && j12 > j11 && file != null) {
                            file.delete();
                            return false;
                        }
                        throw th;
                    } catch (Exception e13) {
                        m.c(e13);
                        throw th;
                    }
                }
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                file = file2;
                th = th2;
            }
        } catch (Exception unused3) {
            file2 = null;
        } catch (Throwable th3) {
            th = th3;
            file = null;
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception e14) {
                m.c(e14);
            }
        }
        try {
            inputStream.close();
            if (j10 != -2147483648L && j12 > j11 && file2 != null) {
                file2.delete();
                return false;
            }
        } catch (Exception e15) {
            m.c(e15);
        }
        return false;
    }

    public static byte[] c(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            c(bufferedInputStream, byteArrayOutputStream, 2048);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            m.c(e10);
            return new byte[0];
        } finally {
            try {
                bufferedInputStream.close();
                byteArrayOutputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    private static long c(InputStream inputStream, OutputStream outputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = inputStream.read(bArr);
        long j10 = 0;
        while (i11 >= 0) {
            outputStream.write(bArr, 0, i11);
            j10 += (long) i11;
            i11 = inputStream.read(bArr);
        }
        return j10;
    }
}
