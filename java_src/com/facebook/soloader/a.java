package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;

/* JADX INFO: loaded from: classes9.dex */
public class a extends m {
    private static final String C = "ApkSoSource";
    public static final int D = 1;
    private static final byte E = 2;
    private static final byte F = 0;
    private static final byte G = 1;
    private static final byte H = 2;
    private final int B;

    /* JADX INFO: renamed from: com.facebook.soloader.a$a, reason: collision with other inner class name */
    protected class C0588a extends m.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private File f28942f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f28943g;

        C0588a(m mVar) throws IOException {
            super(mVar);
            this.f28942f = new File(a.this.f29059n.getApplicationInfo().nativeLibraryDir);
            this.f28943g = a.this.B;
        }

        @Override // com.facebook.soloader.m.c
        protected boolean h(ZipEntry zipEntry, String str) {
            String name = zipEntry.getName();
            if (str.equals(a.this.f29060o)) {
                a.this.f29060o = null;
                String.format("allowing consideration of corrupted lib %s", str);
            } else if ((this.f28943g & 1) == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("allowing consideration of ");
                sb2.append(name);
                sb2.append(": self-extraction preferred");
            } else {
                File file = new File(this.f28942f, str);
                if (file.isFile()) {
                    long length = file.length();
                    long size = zipEntry.getSize();
                    if (length == size) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("not allowing consideration of ");
                        sb3.append(name);
                        sb3.append(": deferring to libdir");
                        return false;
                    }
                    String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", file, Long.valueOf(length), Long.valueOf(size));
                } else {
                    String.format("allowing considering of %s: %s not in system lib dir", name, str);
                }
            }
            return true;
        }
    }

    public a(Context context, String str, int i10) {
        this(context, new File(context.getApplicationInfo().sourceDir), str, i10);
    }

    @Override // com.facebook.soloader.w
    protected byte[] o() throws IOException {
        File canonicalFile = this.f29025z.getCanonicalFile();
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeByte((byte) 2);
            parcelObtain.writeString(canonicalFile.getPath());
            parcelObtain.writeLong(canonicalFile.lastModified());
            parcelObtain.writeInt(SysUtil.g(this.f29059n));
            if ((this.B & 1) == 0) {
                parcelObtain.writeByte((byte) 0);
                return parcelObtain.marshall();
            }
            String str = this.f29059n.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                parcelObtain.writeByte((byte) 1);
                return parcelObtain.marshall();
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                parcelObtain.writeByte((byte) 1);
                return parcelObtain.marshall();
            }
            parcelObtain.writeByte((byte) 2);
            parcelObtain.writeString(canonicalFile2.getPath());
            parcelObtain.writeLong(canonicalFile2.lastModified());
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // com.facebook.soloader.m, com.facebook.soloader.w
    protected w.f r() throws IOException {
        return new C0588a(this);
    }

    public a(Context context, File file, String str, int i10) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.B = i10;
    }
}
