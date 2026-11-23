package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class c extends u {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f28948l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f28949m = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final File f28950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected final int f28951k;

    public c(File file, int i10) {
        this.f28950j = file;
        this.f28951k = i10;
    }

    private static String[] h(File file) throws IOException {
        if (SoLoader.f28914c) {
            Api18TraceUtils.a("SoLoader.getElfDependencies[", file.getName(), "]");
        }
        try {
            return MinElf.a(file);
        } finally {
            if (SoLoader.f28914c) {
                Api18TraceUtils.b();
            }
        }
    }

    private static void i(File file, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] strArrH = h(file);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading lib dependencies: ");
        sb2.append(Arrays.toString(strArrH));
        for (String str : strArrH) {
            if (!str.startsWith(net.lingala.zip4j.util.e.F0)) {
                SoLoader.v(str, i10 | 1, threadPolicy);
            }
        }
    }

    @Override // com.facebook.soloader.u
    public void a(Collection<String> collection) {
        collection.add(this.f28950j.getAbsolutePath());
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public String[] b(String str) throws IOException {
        File file = new File(this.f28950j, str);
        if (file.exists()) {
            return h(file);
        }
        return null;
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public String c(String str) throws IOException {
        File file = new File(this.f28950j, str);
        if (file.exists()) {
            return file.getCanonicalPath();
        }
        return null;
    }

    @Override // com.facebook.soloader.u
    public int e(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return j(str, i10, this.f28950j, threadPolicy);
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public File g(String str) throws IOException {
        File file = new File(this.f28950j, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    protected int j(String str, int i10, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" not found on ");
            sb2.append(file.getCanonicalPath());
            return 0;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(" found on ");
        sb3.append(file.getCanonicalPath());
        if ((i10 & 1) != 0 && (this.f28951k & 2) != 0) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append(" loaded implicitly");
            return 2;
        }
        if ((this.f28951k & 1) != 0) {
            i(file2, i10, threadPolicy);
        } else {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Not resolving dependencies for ");
            sb5.append(str);
        }
        try {
            SoLoader.f28915d.a(file2.getAbsolutePath(), i10);
            return 1;
        } catch (UnsatisfiedLinkError e10) {
            if (e10.getMessage().contains("bad ELF magic")) {
                return 3;
            }
            throw e10;
        }
    }

    @Override // com.facebook.soloader.u
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f28950j.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f28950j.getName();
        }
        return getClass().getName() + "[root = " + name + " flags = " + this.f28951k + ']';
    }
}
