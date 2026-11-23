package com.byazt.bzd;

import com.byazt.nr.m;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 46})
public class n {
    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                m.tt("FileUtils", e10);
            }
        }
    }

    public static void tt(File file) {
        if (file.isDirectory()) {
            ve(file);
        } else {
            file.delete();
        }
    }

    private static void ve(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                tt(file2);
            }
        }
    }

    public static File c(File file, String str) throws Throwable {
        File file2;
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                file2 = new File(file.getParentFile(), str);
                try {
                    if (file.exists() && file.isDirectory()) {
                        ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(file2));
                        try {
                            for (File file3 : file.listFiles()) {
                                zipOutputStream2.putNextEntry(new ZipEntry(file3.getName()));
                                c(zipOutputStream2, file3);
                                zipOutputStream2.closeEntry();
                            }
                            zipOutputStream2.flush();
                            zipOutputStream = zipOutputStream2;
                        } catch (IOException e10) {
                            e = e10;
                            zipOutputStream = zipOutputStream2;
                            m.tt("FileUtils", e);
                        } catch (Throwable th) {
                            th = th;
                            zipOutputStream = zipOutputStream2;
                            c(zipOutputStream);
                            throw th;
                        }
                    }
                } catch (IOException e11) {
                    e = e11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e12) {
            e = e12;
            file2 = null;
        }
        c(zipOutputStream);
        return file2;
    }

    public static boolean c(String str, File file) throws Throwable {
        BufferedWriter bufferedWriter = null;
        try {
            try {
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                }
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file));
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    c(bufferedWriter2);
                    return true;
                } catch (FileNotFoundException e10) {
                    e = e10;
                    bufferedWriter = bufferedWriter2;
                    m.tt("FileUtils", e);
                    c(bufferedWriter);
                    return false;
                } catch (IOException e11) {
                    e = e11;
                    bufferedWriter = bufferedWriter2;
                    m.tt("FileUtils", e);
                    c(bufferedWriter);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    c(bufferedWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e12) {
            e = e12;
        } catch (IOException e13) {
            e = e13;
        }
    }

    public static String c(File file) {
        if (file != null && file.exists() && file.isFile()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
                try {
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                        sb2.append(System.lineSeparator());
                        m.tt("FileUtils", e);
                    }
                    if (sb2.length() > 0) {
                        sb2.setLength(sb2.length() - System.lineSeparator().length());
                    }
                    String strTrim = sb2.toString().trim();
                    bufferedReader.close();
                    return strTrim;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Exception e10) {
                m.tt("FileUtils", e10);
            }
        }
        return null;
    }

    public static void c(OutputStream outputStream, File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1048576];
                    while (true) {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 != -1) {
                            outputStream.write(bArr, 0, i10);
                        } else {
                            c(fileInputStream2);
                            return;
                        }
                    }
                } catch (FileNotFoundException e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    m.tt("FileUtils", e);
                    c(fileInputStream);
                } catch (IOException e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    m.tt("FileUtils", e);
                    c(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    c(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e12) {
            e = e12;
        } catch (IOException e13) {
            e = e13;
        }
    }
}
