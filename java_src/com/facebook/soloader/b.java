package com.facebook.soloader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class b extends u {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f28945j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f28947l;

    public b(Context context, int i10) {
        Context applicationContext = context.getApplicationContext();
        this.f28945j = applicationContext;
        if (applicationContext == null) {
            this.f28945j = context;
        }
        this.f28946k = i10;
        this.f28947l = new c(new File(this.f28945j.getApplicationInfo().nativeLibraryDir), i10);
    }

    public static File i(Context context) {
        return new File(context.getApplicationInfo().nativeLibraryDir);
    }

    @Override // com.facebook.soloader.u
    public void a(Collection<String> collection) {
        this.f28947l.a(collection);
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public String[] b(String str) throws IOException {
        return this.f28947l.b(str);
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public String c(String str) throws IOException {
        return this.f28947l.c(str);
    }

    @Override // com.facebook.soloader.u
    public int e(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.f28947l.e(str, i10, threadPolicy);
    }

    @Override // com.facebook.soloader.u
    protected void f(int i10) throws IOException {
        this.f28947l.f(i10);
    }

    @Override // com.facebook.soloader.u
    @Nullable
    public File g(String str) throws IOException {
        return this.f28947l.g(str);
    }

    public boolean h() throws IOException {
        File file = this.f28947l.f28950j;
        Context contextJ = j();
        File fileI = i(contextJ);
        if (file.equals(fileI)) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Native library directory updated from ");
        sb2.append(file);
        sb2.append(" to ");
        sb2.append(fileI);
        int i10 = this.f28946k | 1;
        this.f28946k = i10;
        c cVar = new c(fileI, i10);
        this.f28947l = cVar;
        cVar.f(this.f28946k);
        this.f28945j = contextJ;
        return true;
    }

    public Context j() {
        try {
            Context context = this.f28945j;
            return context.createPackageContext(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // com.facebook.soloader.u
    public String toString() {
        return this.f28947l.toString();
    }
}
