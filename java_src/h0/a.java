package h0;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    private static void a(String str, String str2) throws Throwable {
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

    public static boolean b(String str) {
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

    /* JADX WARN: Code duplicated, block: B:22:0x0041 A[Catch: all -> 0x0044, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0044, blocks: (B:11:0x002d, B:22:0x0041), top: B:28:0x0006 }] */
    public static String c(String str) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                if (!new File(str).exists()) {
                    return null;
                }
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(str), "UTF-8"));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb2.toString();
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                return sb2.toString();
            } catch (Throwable unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        return sb2.toString();
    }
}
