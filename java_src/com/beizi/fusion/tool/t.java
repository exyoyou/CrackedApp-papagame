package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class t {
    /* JADX WARN: Code duplicated, block: B:29:0x0063 A[Catch: IOException -> 0x0066, TRY_LEAVE, TryCatch #1 {IOException -> 0x0066, blocks: (B:27:0x005e, B:29:0x0063), top: B:40:0x005e }] */
    public static void a(Context context, String str, String str2) throws Throwable {
        FileWriter fileWriter;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                File file = new File(g.a(context).getPath() + "/BeiZi/config/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileWriter = new FileWriter(new File(file, str), false);
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter);
                    try {
                        bufferedWriter2.write(str2);
                        bufferedWriter2.close();
                    } catch (Exception unused) {
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                        if (fileWriter == null) {
                            return;
                        }
                    } catch (Throwable th) {
                        bufferedWriter = bufferedWriter2;
                        th = th;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                                if (fileWriter != null) {
                                    fileWriter.close();
                                }
                            } catch (IOException unused2) {
                                throw th;
                            }
                        } else if (fileWriter != null) {
                            fileWriter.close();
                        }
                        throw th;
                    }
                } catch (Exception unused3) {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused4) {
                return;
            }
        } catch (Exception unused5) {
            fileWriter = null;
        } catch (Throwable th3) {
            th = th3;
            fileWriter = null;
        }
        fileWriter.close();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0072 A[Catch: IOException -> 0x0075, TRY_LEAVE, TryCatch #1 {IOException -> 0x0075, blocks: (B:32:0x006d, B:34:0x0072), top: B:47:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:40:0x007f A[Catch: IOException -> 0x0082, TRY_LEAVE, TryCatch #4 {IOException -> 0x0082, blocks: (B:38:0x007a, B:40:0x007f), top: B:49:0x007a }] */
    public static String a(Context context, String str) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file = new File(g.a(context).getPath() + "/BeiZi/config/", str);
            if (!file.exists()) {
                return null;
            }
            fileReader = new FileReader(file);
            try {
                if (!fileReader.ready()) {
                    try {
                        fileReader.close();
                    } catch (IOException unused) {
                    }
                    return null;
                }
                bufferedReader = new BufferedReader(fileReader);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    }
                    String string = sb2.toString();
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException unused2) {
                    }
                    return string;
                } catch (Exception unused3) {
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                            if (fileReader != null) {
                                fileReader.close();
                            }
                        } catch (IOException unused4) {
                            throw th;
                        }
                    } else if (fileReader != null) {
                        fileReader.close();
                    }
                    throw th;
                }
            } catch (Exception unused5) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Exception unused6) {
            fileReader = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            fileReader = null;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
                if (fileReader != null) {
                    fileReader.close();
                }
            } catch (IOException unused7) {
            }
        } else if (fileReader != null) {
            fileReader.close();
        }
        return null;
    }
}
