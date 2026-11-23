package cn.com.chinatelecom.account.a;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    /* JADX WARN: Code duplicated, block: B:69:0x005c A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0052 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static String a(Context context) {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        Throwable th;
        InputStreamReader inputStreamReader;
        File fileC = c(context);
        StringBuilder sb2 = new StringBuilder();
        if (fileC == null || !fileC.exists()) {
            return "";
        }
        try {
            fileInputStream = new FileInputStream(fileC);
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                sb2.append(line);
                            } else {
                                try {
                                    break;
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                th.printStackTrace();
                                return sb2.toString();
                            } finally {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                }
                                if (inputStreamReader != 0) {
                                    try {
                                        inputStreamReader.close();
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (Exception e13) {
                                        e13.printStackTrace();
                                    }
                                }
                            }
                        }
                    }
                    bufferedReader.close();
                    try {
                        inputStreamReader.close();
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                th = th;
                inputStreamReader = bufferedReader;
                th.printStackTrace();
                return sb2.toString();
            }
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
            bufferedReader = null;
        }
        return sb2.toString();
    }

    private static File b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File file = new File(context.getFilesDir() + "/eAccount/Log/");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "ipa_ol.ds");
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
            return file2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static File c(Context context) {
        if (context != null) {
            try {
                File file = new File(context.getFilesDir() + "/eAccount/Log/");
                if (!file.exists()) {
                    return null;
                }
                File file2 = new File(file, "ipa_ol.ds");
                if (file2.exists()) {
                    return file2;
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static void a(Context context, String str) throws Throwable {
        File fileC = c(context);
        if (fileC == null || !fileC.exists()) {
            a(b(context), str);
        } else {
            a(fileC, str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:? A[SYNTHETIC] */
    private static void a(File file, String str) throws Throwable {
        FileWriter fileWriter;
        Exception e10;
        Throwable th;
        if (file == null || !file.exists()) {
            return;
        }
        BufferedWriter bufferedWriter = null;
        try {
            fileWriter = new FileWriter(file, false);
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter);
                try {
                    if (TextUtils.isEmpty(str)) {
                        str = "";
                    }
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    try {
                        bufferedWriter2.close();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                } catch (Exception e12) {
                    e10 = e12;
                    bufferedWriter = bufferedWriter2;
                    try {
                        e10.printStackTrace();
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (Exception e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (fileWriter == null) {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        th = th;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (Exception e14) {
                                e14.printStackTrace();
                            }
                        }
                        if (fileWriter == null) {
                            throw th;
                        }
                        try {
                            fileWriter.close();
                            throw th;
                        } catch (Exception e15) {
                            e15.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedWriter = bufferedWriter2;
                    th = th;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    if (fileWriter == null) {
                        throw th;
                    }
                    fileWriter.close();
                    throw th;
                }
            } catch (Exception e16) {
                e10 = e16;
            } catch (Throwable th4) {
                th = th4;
                if (bufferedWriter != null) {
                    bufferedWriter.close();
                }
                if (fileWriter == null) {
                    throw th;
                }
                fileWriter.close();
                throw th;
            }
        } catch (Exception e17) {
            e10 = e17;
            fileWriter = null;
        } catch (Throwable th5) {
            th = th5;
            fileWriter = null;
        }
        try {
            fileWriter.close();
        } catch (Exception e18) {
            e18.printStackTrace();
        }
    }
}
