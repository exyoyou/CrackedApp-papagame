package c0;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static String a(String str, String str2) throws Throwable {
        FileReader fileReader = null;
        try {
            File file = new File(str, str2);
            if (!file.exists()) {
                throw null;
            }
            char[] cArr = new char[(int) file.length()];
            FileReader fileReader2 = new FileReader(file);
            try {
                fileReader2.read(cArr);
                String strValueOf = String.valueOf(cArr);
                try {
                    fileReader2.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return strValueOf;
            } catch (Exception e11) {
                e = e11;
                fileReader = fileReader2;
            } catch (Throwable th) {
                th = th;
                fileReader = fileReader2;
                try {
                    fileReader.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                throw th;
            }
        } catch (Exception e13) {
            e = e13;
        }
        e.getMessage();
        try {
            fileReader.close();
            return "";
        } catch (IOException e14) {
            e14.printStackTrace();
            return "";
        }
    }

    private static boolean b(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i10 = 0; i10 < length; i10++) {
                if (!Character.isWhitespace(str.charAt(i10))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static void c(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        Throwable th;
        File file = new File(str);
        FileWriter fileWriter2 = null;
        try {
            fileWriter = new FileWriter(file, false);
            try {
                fileWriter.write(str2);
                try {
                    fileWriter.close();
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th3) {
            fileWriter = null;
            th = th3;
        }
    }

    private static boolean d(String str) {
        File file = new File(str);
        if (!file.exists()) {
            try {
                return file.createNewFile();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static long e(String str, String str2) {
        File file = new File(str, str2);
        if (file.exists()) {
            return file.length();
        }
        return 0L;
    }

    private static boolean f(String str) {
        File file = new File(str);
        if (file.exists()) {
            return false;
        }
        return file.mkdirs();
    }
}
