package com.swift.sandhook.xposedcompat.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class FileUtils {
    public static final boolean IS_USING_PROTECTED_STORAGE;

    static {
        IS_USING_PROTECTED_STORAGE = Build.VERSION.SDK_INT >= 24;
    }

    public static void delete(File file) throws IOException {
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                delete(file2);
            } else if (!file2.delete()) {
                throw new IOException();
            }
        }
        if (!file.delete()) {
            throw new IOException();
        }
    }

    public static String getDataPathPrefix() {
        return IS_USING_PROTECTED_STORAGE ? "/data/user_de/0/" : "/data/data/";
    }

    public static String getPackageName(String str) {
        if (TextUtils.isEmpty(str)) {
            DexLog.e("getPackageName using empty dataDir");
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(e.F0);
        return iLastIndexOf < 0 ? str : str.substring(iLastIndexOf + 1);
    }

    public static String readLine(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                return line;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void writeLine(File file, String str) {
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            try {
                bufferedWriter.write(str);
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            DexLog.e("error writing line to file " + file + ": " + th3.getMessage());
        }
    }
}
