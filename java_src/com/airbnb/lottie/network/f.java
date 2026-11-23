package com.airbnb.lottie.network;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final d f5927a;

    public f(@NonNull d dVar) {
        this.f5927a = dVar;
    }

    private static String c(String str, FileExtension fileExtension, boolean z10) {
        String strTempExtension = z10 ? fileExtension.tempExtension() : fileExtension.extension;
        String strReplaceAll = str.replaceAll("\\W+", "");
        int length = 242 - strTempExtension.length();
        if (strReplaceAll.length() > length) {
            strReplaceAll = e(strReplaceAll, length);
        }
        return "lottie_cache_" + strReplaceAll + strTempExtension;
    }

    @Nullable
    private File d(String str) throws FileNotFoundException {
        File file = new File(f(), c(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(f(), c(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private static String e(String str, int i10) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException unused) {
            return str.substring(0, i10);
        }
    }

    private File f() {
        File cacheDir = this.f5927a.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public void a() {
        File fileF = f();
        if (fileF.exists()) {
            File[] fileArrListFiles = fileF.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file : fileArrListFiles) {
                    file.delete();
                }
            }
            fileF.delete();
        }
    }

    @Nullable
    @WorkerThread
    Pair<FileExtension, InputStream> b(String str) {
        try {
            File fileD = d(str);
            if (fileD == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(fileD);
            FileExtension fileExtension = fileD.getAbsolutePath().endsWith(".zip") ? FileExtension.ZIP : FileExtension.JSON;
            com.airbnb.lottie.utils.f.a("Cache hit for " + str + " at " + fileD.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    void g(String str, FileExtension fileExtension) {
        File file = new File(f(), c(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        com.airbnb.lottie.utils.f.a("Copying temp file to real file (" + file2 + ")");
        if (zRenameTo) {
            return;
        }
        com.airbnb.lottie.utils.f.e("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + o0.f49827a);
    }

    File h(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(f(), c(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            inputStream.close();
            throw th2;
        }
    }
}
