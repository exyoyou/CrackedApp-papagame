package g0;

import android.os.Environment;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static String a(String str) {
        try {
            if (!c()) {
                return null;
            }
            File file = new File(Environment.getExternalStorageDirectory(), str);
            if (file.exists()) {
                return h0.a.c(file.getAbsolutePath());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void b(String str, String str2) {
        FileWriter fileWriter;
        Throwable th;
        try {
            if (!c()) {
                return;
            }
            File file = new File(Environment.getExternalStorageDirectory(), str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            FileWriter fileWriter2 = null;
            try {
                fileWriter = new FileWriter(new File(file.getAbsolutePath()), false);
                try {
                    fileWriter.write(str2);
                    try {
                        fileWriter.close();
                    } catch (IOException unused) {
                    }
                } catch (Exception unused2) {
                    fileWriter2 = fileWriter;
                    if (fileWriter2 != null) {
                        fileWriter2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused4) {
            } catch (Throwable th3) {
                fileWriter = null;
                th = th3;
            }
        } catch (IOException | Exception unused5) {
        }
    }

    public static boolean c() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null || externalStorageState.length() <= 0) {
            return false;
        }
        return (externalStorageState.equals("mounted") || externalStorageState.equals("mounted_ro")) && Environment.getExternalStorageDirectory() != null;
    }
}
