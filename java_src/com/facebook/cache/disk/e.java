package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.common.file.FileUtils;
import com.facebook.common.internal.l;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e implements c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Class<?> f26816f = e.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f26817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<File> f26818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CacheErrorLogger f26820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    volatile a f26821e = new a(null, null);

    @VisibleForTesting
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public final c f26822a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public final File f26823b;

        @VisibleForTesting
        a(@Nullable File rootDirectory, @Nullable c delegate) {
            this.f26822a = delegate;
            this.f26823b = rootDirectory;
        }
    }

    public e(int version, l<File> baseDirectoryPathSupplier, String baseDirectoryName, CacheErrorLogger cacheErrorLogger) {
        this.f26817a = version;
        this.f26820d = cacheErrorLogger;
        this.f26818b = baseDirectoryPathSupplier;
        this.f26819c = baseDirectoryName;
    }

    private void i() throws IOException {
        File file = new File(this.f26818b.get(), this.f26819c);
        h(file);
        this.f26821e = new a(file, new DefaultDiskStorage(file, this.f26817a, this.f26820d));
    }

    private boolean l() {
        File file;
        a aVar = this.f26821e;
        return aVar.f26822a == null || (file = aVar.f26823b) == null || !file.exists();
    }

    @Override // com.facebook.cache.disk.c
    public c.a a() throws IOException {
        return k().a();
    }

    @Override // com.facebook.cache.disk.c
    public long b(c.InterfaceC0556c entry) throws IOException {
        return k().b(entry);
    }

    @Override // com.facebook.cache.disk.c
    public boolean c(String resourceId, Object debugInfo) throws IOException {
        return k().c(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.c
    public void clearAll() throws IOException {
        k().clearAll();
    }

    @Override // com.facebook.cache.disk.c
    public String d() {
        try {
            return k().d();
        } catch (IOException unused) {
            return "";
        }
    }

    @Override // com.facebook.cache.disk.c
    public void e() {
        try {
            k().e();
        } catch (IOException e10) {
            i3.a.r(f26816f, "purgeUnexpectedResources", e10);
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean f(String resourceId, Object debugInfo) throws IOException {
        return k().f(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.c
    @Nullable
    public d3.a g(String resourceId, Object debugInfo) throws IOException {
        return k().g(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.c
    public Collection<c.InterfaceC0556c> getEntries() throws IOException {
        return k().getEntries();
    }

    @VisibleForTesting
    void h(File rootDirectory) throws IOException {
        try {
            FileUtils.a(rootDirectory);
            i3.a.b(f26816f, "Created cache directory %s", rootDirectory.getAbsolutePath());
        } catch (FileUtils.CreateDirectoryException e10) {
            this.f26820d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f26816f, "createRootDirectoryIfNecessary", e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.c
    public c.d insert(String resourceId, Object debugInfo) throws IOException {
        return k().insert(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.c
    public boolean isEnabled() {
        try {
            return k().isEnabled();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean isExternal() {
        try {
            return k().isExternal();
        } catch (IOException unused) {
            return false;
        }
    }

    @VisibleForTesting
    void j() {
        if (this.f26821e.f26822a == null || this.f26821e.f26823b == null) {
            return;
        }
        g3.a.b(this.f26821e.f26823b);
    }

    @VisibleForTesting
    synchronized c k() throws IOException {
        if (l()) {
            j();
            i();
        }
        return (c) com.facebook.common.internal.i.i(this.f26821e.f26822a);
    }

    @Override // com.facebook.cache.disk.c
    public long remove(String resourceId) throws IOException {
        return k().remove(resourceId);
    }
}
