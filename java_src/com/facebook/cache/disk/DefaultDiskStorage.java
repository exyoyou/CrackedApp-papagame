package com.facebook.cache.disk;

import android.os.Environment;
import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.k;
import com.facebook.common.file.FileUtils;
import com.facebook.infer.annotation.Nullsafe;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class DefaultDiskStorage implements com.facebook.cache.disk.c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f26730g = ".cnt";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f26731h = ".tmp";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f26732i = "v2";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f26733j = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f26735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f26736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f26737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CacheErrorLogger f26738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l3.a f26739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Class<?> f26729f = DefaultDiskStorage.class;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final long f26734k = TimeUnit.MINUTES.toMillis(30);

    public @interface FileType {
        public static final String CONTENT = ".cnt";
        public static final String TEMP = ".tmp";
    }

    private static class IncompleteFileException extends IOException {
        public IncompleteFileException(long expected, long actual) {
            super("File was not written completely. Expected: " + expected + ", found: " + actual);
        }
    }

    private class b implements g3.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<com.facebook.cache.disk.c.InterfaceC0556c> f26740a;

        private b() {
            this.f26740a = new ArrayList();
        }

        @Override // g3.b
        public void a(File file) {
            d dVarU = DefaultDiskStorage.this.u(file);
            if (dVarU == null || dVarU.f26746a != ".cnt") {
                return;
            }
            this.f26740a.add(new c(dVarU.f26747b, file));
        }

        @Override // g3.b
        public void b(File directory) {
        }

        @Override // g3.b
        public void c(File directory) {
        }

        public List<com.facebook.cache.disk.c.InterfaceC0556c> d() {
            return Collections.unmodifiableList(this.f26740a);
        }
    }

    @VisibleForTesting
    static class c implements com.facebook.cache.disk.c.InterfaceC0556c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d3.c f26743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f26744c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f26745d;

        @Override // com.facebook.cache.disk.c.InterfaceC0556c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d3.c a() {
            return this.f26743b;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0556c
        public String getId() {
            return this.f26742a;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0556c
        public long getSize() {
            if (this.f26744c < 0) {
                this.f26744c = this.f26743b.size();
            }
            return this.f26744c;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0556c
        public long getTimestamp() {
            if (this.f26745d < 0) {
                this.f26745d = this.f26743b.d().lastModified();
            }
            return this.f26745d;
        }

        private c(String id2, File cachedFile) {
            com.facebook.common.internal.i.i(cachedFile);
            this.f26742a = (String) com.facebook.common.internal.i.i(id2);
            this.f26743b = d3.c.b(cachedFile);
            this.f26744c = -1L;
            this.f26745d = -1L;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @FileType
        public final String f26746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26747b;

        @Nullable
        public static d b(File file) {
            String strS;
            String name = file.getName();
            int iLastIndexOf = name.lastIndexOf(46);
            if (iLastIndexOf <= 0 || (strS = DefaultDiskStorage.s(name.substring(iLastIndexOf))) == null) {
                return null;
            }
            String strSubstring = name.substring(0, iLastIndexOf);
            if (strS.equals(".tmp")) {
                int iLastIndexOf2 = strSubstring.lastIndexOf(46);
                if (iLastIndexOf2 <= 0) {
                    return null;
                }
                strSubstring = strSubstring.substring(0, iLastIndexOf2);
            }
            return new d(strS, strSubstring);
        }

        public File a(File parent) throws IOException {
            return File.createTempFile(this.f26747b + o0.f49827a, ".tmp", parent);
        }

        public String c(String parentPath) {
            return parentPath + File.separator + this.f26747b + this.f26746a;
        }

        public String toString() {
            return this.f26746a + "(" + this.f26747b + ")";
        }

        private d(@FileType String type, String resourceId) {
            this.f26746a = type;
            this.f26747b = resourceId;
        }
    }

    @VisibleForTesting
    class e implements com.facebook.cache.disk.c.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @VisibleForTesting
        final File f26749b;

        public e(String resourceId, File temporaryFile) {
            this.f26748a = resourceId;
            this.f26749b = temporaryFile;
        }

        @Override // com.facebook.cache.disk.c.d
        public boolean a() {
            return !this.f26749b.exists() || this.f26749b.delete();
        }

        @Override // com.facebook.cache.disk.c.d
        public d3.a b(Object debugInfo, long time) throws IOException {
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory;
            File fileQ = DefaultDiskStorage.this.q(this.f26748a);
            try {
                FileUtils.b(this.f26749b, fileQ);
                if (fileQ.exists()) {
                    fileQ.setLastModified(time);
                }
                return d3.c.b(fileQ);
            } catch (FileUtils.RenameException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                } else if (cause instanceof FileUtils.ParentDirNotFoundException) {
                    cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
                } else {
                    cacheErrorCategory = cause instanceof FileNotFoundException ? CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND : CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                }
                DefaultDiskStorage.this.f26738d.a(cacheErrorCategory, DefaultDiskStorage.f26729f, "commit", e10);
                throw e10;
            }
        }

        @Override // com.facebook.cache.disk.c.d
        public void c(k callback, Object debugInfo) throws IOException {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.f26749b);
                try {
                    com.facebook.common.internal.d dVar = new com.facebook.common.internal.d(fileOutputStream);
                    callback.a(dVar);
                    dVar.flush();
                    long jB = dVar.b();
                    fileOutputStream.close();
                    if (this.f26749b.length() != jB) {
                        throw new IncompleteFileException(jB, this.f26749b.length());
                    }
                } catch (Throwable th) {
                    fileOutputStream.close();
                    throw th;
                }
            } catch (FileNotFoundException e10) {
                DefaultDiskStorage.this.f26738d.a(CacheErrorLogger.CacheErrorCategory.WRITE_UPDATE_FILE_NOT_FOUND, DefaultDiskStorage.f26729f, "updateResource", e10);
                throw e10;
            }
        }

        @Override // com.facebook.cache.disk.c.d
        public d3.a d(Object debugInfo) throws IOException {
            return b(debugInfo, DefaultDiskStorage.this.f26739e.now());
        }
    }

    private class f implements g3.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f26751a;

        private f() {
        }

        private boolean d(File file) {
            d dVarU = DefaultDiskStorage.this.u(file);
            if (dVarU == null) {
                return false;
            }
            String str = dVarU.f26746a;
            if (str == ".tmp") {
                return e(file);
            }
            com.facebook.common.internal.i.o(str == ".cnt");
            return true;
        }

        private boolean e(File file) {
            return file.lastModified() > DefaultDiskStorage.this.f26739e.now() - DefaultDiskStorage.f26734k;
        }

        @Override // g3.b
        public void a(File file) {
            if (this.f26751a && d(file)) {
                return;
            }
            file.delete();
        }

        @Override // g3.b
        public void b(File directory) {
            if (!DefaultDiskStorage.this.f26735a.equals(directory) && !this.f26751a) {
                directory.delete();
            }
            if (this.f26751a && directory.equals(DefaultDiskStorage.this.f26737c)) {
                this.f26751a = false;
            }
        }

        @Override // g3.b
        public void c(File directory) {
            if (this.f26751a || !directory.equals(DefaultDiskStorage.this.f26737c)) {
                return;
            }
            this.f26751a = true;
        }
    }

    public DefaultDiskStorage(File rootDirectory, int version, CacheErrorLogger cacheErrorLogger) {
        com.facebook.common.internal.i.i(rootDirectory);
        this.f26735a = rootDirectory;
        this.f26736b = y(rootDirectory, cacheErrorLogger);
        this.f26737c = new File(rootDirectory, x(version));
        this.f26738d = cacheErrorLogger;
        A();
        this.f26739e = l3.e.a();
    }

    private void A() {
        boolean z10 = true;
        if (this.f26735a.exists()) {
            if (this.f26737c.exists()) {
                z10 = false;
            } else {
                g3.a.b(this.f26735a);
            }
        }
        if (z10) {
            try {
                FileUtils.a(this.f26737c);
            } catch (FileUtils.CreateDirectoryException unused) {
                this.f26738d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f26729f, "version directory could not be created: " + this.f26737c, null);
            }
        }
    }

    private String B(byte[] bytes) {
        if (bytes.length < 2) {
            return "undefined";
        }
        byte b10 = bytes[0];
        if (b10 == -1 && bytes[1] == -40) {
            return "jpg";
        }
        if (b10 == -119 && bytes[1] == 80) {
            return "png";
        }
        if (b10 == 82 && bytes[1] == 73) {
            return "webp";
        }
        return (b10 == 71 && bytes[1] == 73) ? "gif" : "undefined";
    }

    private long o(final File contentFile) {
        if (!contentFile.exists()) {
            return 0L;
        }
        long length = contentFile.length();
        if (contentFile.delete()) {
            return length;
        }
        return -1L;
    }

    private com.facebook.cache.disk.c.b p(com.facebook.cache.disk.c.InterfaceC0556c entry) throws IOException {
        c cVar = (c) entry;
        byte[] bArr = cVar.a().read();
        String strB = B(bArr);
        return new com.facebook.cache.disk.c.b(cVar.getId(), cVar.a().d().getPath(), strB, cVar.getSize(), (!strB.equals("undefined") || bArr.length < 4) ? "" : String.format(null, "0x%02X 0x%02X 0x%02X 0x%02X", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
    }

    private boolean query(String resourceId, boolean touch) {
        File fileQ = q(resourceId);
        boolean zExists = fileQ.exists();
        if (touch && zExists) {
            fileQ.setLastModified(this.f26739e.now());
        }
        return zExists;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @FileType
    @Nullable
    public static String s(String extension) {
        if (".cnt".equals(extension)) {
            return ".cnt";
        }
        if (".tmp".equals(extension)) {
            return ".tmp";
        }
        return null;
    }

    private String t(String resourceId) {
        d dVar = new d(".cnt", resourceId);
        return dVar.c(w(dVar.f26747b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public d u(File file) {
        d dVarB = d.b(file);
        if (dVarB != null && v(dVarB.f26747b).equals(file.getParentFile())) {
            return dVarB;
        }
        return null;
    }

    private File v(String resourceId) {
        return new File(w(resourceId));
    }

    private String w(String resourceId) {
        return this.f26737c + File.separator + String.valueOf(Math.abs(resourceId.hashCode() % 100));
    }

    @VisibleForTesting
    static String x(int version) {
        return String.format(null, "%s.ols%d.%d", f26732i, 100, Integer.valueOf(version));
    }

    private static boolean y(File directory, CacheErrorLogger cacheErrorLogger) {
        String canonicalPath;
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return false;
            }
            String string = externalStorageDirectory.toString();
            try {
                canonicalPath = directory.getCanonicalPath();
                try {
                    return canonicalPath.contains(string);
                } catch (IOException e10) {
                    e = e10;
                    cacheErrorLogger.a(CacheErrorLogger.CacheErrorCategory.OTHER, f26729f, "failed to read folder to check if external: " + canonicalPath, e);
                    return false;
                }
            } catch (IOException e11) {
                e = e11;
                canonicalPath = null;
            }
        } catch (Exception e12) {
            cacheErrorLogger.a(CacheErrorLogger.CacheErrorCategory.OTHER, f26729f, "failed to get the external storage directory!", e12);
            return false;
        }
    }

    private void z(File directory, String message) throws IOException {
        try {
            FileUtils.a(directory);
        } catch (FileUtils.CreateDirectoryException e10) {
            this.f26738d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f26729f, message, e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.c
    public com.facebook.cache.disk.c.a a() throws IOException {
        List<com.facebook.cache.disk.c.InterfaceC0556c> entries = getEntries();
        com.facebook.cache.disk.c.a aVar = new com.facebook.cache.disk.c.a();
        Iterator<com.facebook.cache.disk.c.InterfaceC0556c> it2 = entries.iterator();
        while (it2.hasNext()) {
            com.facebook.cache.disk.c.b bVarP = p(it2.next());
            String str = bVarP.f26783c;
            Integer num = aVar.f26780b.get(str);
            if (num == null) {
                aVar.f26780b.put(str, 1);
            } else {
                aVar.f26780b.put(str, Integer.valueOf(num.intValue() + 1));
            }
            aVar.f26779a.add(bVarP);
        }
        return aVar;
    }

    @Override // com.facebook.cache.disk.c
    public long b(com.facebook.cache.disk.c.InterfaceC0556c entry) {
        return o(((c) entry).a().d());
    }

    @Override // com.facebook.cache.disk.c
    public boolean c(String resourceId, Object debugInfo) {
        return query(resourceId, false);
    }

    @Override // com.facebook.cache.disk.c
    public void clearAll() {
        g3.a.a(this.f26735a);
    }

    @Override // com.facebook.cache.disk.c
    public String d() {
        String absolutePath = this.f26735a.getAbsolutePath();
        return "_" + absolutePath.substring(absolutePath.lastIndexOf(47) + 1, absolutePath.length()) + "_" + absolutePath.hashCode();
    }

    @Override // com.facebook.cache.disk.c
    public void e() {
        g3.a.c(this.f26735a, new f());
    }

    @Override // com.facebook.cache.disk.c
    public boolean f(String resourceId, Object debugInfo) {
        return query(resourceId, true);
    }

    @Override // com.facebook.cache.disk.c
    @Nullable
    public d3.a g(String resourceId, Object debugInfo) {
        File fileQ = q(resourceId);
        if (!fileQ.exists()) {
            return null;
        }
        fileQ.setLastModified(this.f26739e.now());
        return d3.c.c(fileQ);
    }

    @Override // com.facebook.cache.disk.c
    public com.facebook.cache.disk.c.d insert(String resourceId, Object debugInfo) throws IOException {
        d dVar = new d(".tmp", resourceId);
        File fileV = v(dVar.f26747b);
        if (!fileV.exists()) {
            z(fileV, "insert");
        }
        try {
            return new e(resourceId, dVar.a(fileV));
        } catch (IOException e10) {
            this.f26738d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_TEMPFILE, f26729f, "insert", e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean isEnabled() {
        return true;
    }

    @Override // com.facebook.cache.disk.c
    public boolean isExternal() {
        return this.f26736b;
    }

    @VisibleForTesting
    File q(String resourceId) {
        return new File(t(resourceId));
    }

    @Override // com.facebook.cache.disk.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public List<com.facebook.cache.disk.c.InterfaceC0556c> getEntries() throws IOException {
        b bVar = new b();
        g3.a.c(this.f26737c, bVar);
        return bVar.d();
    }

    @Override // com.facebook.cache.disk.c
    public long remove(final String resourceId) {
        return o(q(resourceId));
    }
}
