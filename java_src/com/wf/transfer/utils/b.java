package com.wf.transfer.utils;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f85823a = true;

    public static long a(@NonNull FileDescriptor fileDescriptor, @NonNull FileDescriptor fileDescriptor2) throws IOException {
        return b(fileDescriptor, fileDescriptor2, Long.MAX_VALUE);
    }

    public static long b(@NonNull FileDescriptor fileDescriptor, @NonNull FileDescriptor fileDescriptor2, long j10) throws IOException {
        return e(fileDescriptor, fileDescriptor2, j10);
    }

    public static long c(InputStream inputStream, File file) throws IOException {
        return d(inputStream, new FileOutputStream(file));
    }

    public static long d(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        return (f85823a && (inputStream instanceof FileInputStream) && (outputStream instanceof FileOutputStream)) ? a(((FileInputStream) inputStream).getFD(), ((FileOutputStream) outputStream).getFD()) : f(inputStream, outputStream);
    }

    private static long e(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, long j10) throws IOException {
        return f(new FileInputStream(fileDescriptor), new FileOutputStream(fileDescriptor2));
    }

    private static long f(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j10 = 0;
        long j11 = 0;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return j10;
            }
            outputStream.write(bArr, 0, i10);
            long j12 = i10;
            j10 += j12;
            j11 += j12;
            if (j11 >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                j11 = 0;
            }
        }
    }

    public static void g(String str) {
        File parentFile;
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists() || (parentFile = file.getParentFile()) == null) {
            return;
        }
        if (parentFile.exists()) {
            if (!parentFile.isDirectory()) {
                return;
            }
        } else if (!parentFile.mkdirs()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void h(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        j(file);
    }

    public static void i(String str) {
        h(new File(str));
    }

    static void j(File file) {
        try {
            if (file.isDirectory() && !l(file) && file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    j(file2);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        file.delete();
    }

    public static boolean k(String str) {
        return new File(str).exists();
    }

    public static boolean l(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static boolean m(File file) {
        if (file.exists()) {
            return true;
        }
        return file.mkdirs();
    }
}
