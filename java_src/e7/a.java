package e7;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    /* JADX WARN: Code duplicated, block: B:24:0x0050 A[Catch: IOException -> 0x003d, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x003d, blocks: (B:11:0x0039, B:24:0x0050), top: B:38:0x0003 }] */
    public static String a(String path) throws Throwable {
        String str = "";
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    if (!new File(path).exists()) {
                        return "";
                    }
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(path), "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return str;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader2.close();
                    return str;
                } catch (IOException e12) {
                    e = e12;
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
            e.printStackTrace();
        } catch (IOException e13) {
            e13.printStackTrace();
        }
        return str;
    }
}
