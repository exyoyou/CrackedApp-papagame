package com.heepay.plugin.c;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile j f34303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34304b = "HyID";

    private j() {
    }

    public static j a() {
        if (f34303a == null) {
            synchronized (j.class) {
                if (f34303a == null) {
                    f34303a = new j();
                }
            }
        }
        return f34303a;
    }

    private void b(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(UUID.randomUUID().toString().getBytes());
        fileOutputStream.close();
    }

    public String a(Context context) {
        try {
            File file = new File(context.getFilesDir(), "HyID");
            if (!file.exists()) {
                b(file);
            }
            return a(file);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private String a(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        byte[] bArr = new byte[(int) randomAccessFile.length()];
        randomAccessFile.readFully(bArr);
        randomAccessFile.close();
        return new String(bArr);
    }
}
