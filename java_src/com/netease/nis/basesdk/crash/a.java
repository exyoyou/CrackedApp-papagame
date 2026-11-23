package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f75914b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75915a;

    private a() {
    }

    private boolean a() {
        File file = new File(this.f75915a);
        try {
            if (file.exists()) {
                return file.isDirectory();
            }
            file.mkdirs();
            return file.exists() && file.isDirectory();
        } catch (Exception unused) {
            return false;
        }
    }

    public static a b() {
        return f75914b;
    }

    public void b(String str) {
        this.f75915a = str;
    }

    public File a(String str) {
        if (TextUtils.isEmpty(this.f75915a) || !a()) {
            return null;
        }
        File file = new File(str);
        try {
            if (file.createNewFile()) {
                return file;
            }
            Logger.e("JavaCrashFileManager", "FileManager createLogFile by createNewFile failed,file already exists");
            return null;
        } catch (IOException unused) {
            Logger.e("JavaCrashFileManager", "FileManager createLogFile by createNewFile failed");
            return null;
        }
    }

    public boolean a(File file) {
        if (file != null && file.exists()) {
            try {
                return file.delete();
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
