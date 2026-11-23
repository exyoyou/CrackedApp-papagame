package com.facebook.soloader;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class m extends w {
    protected final String A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected final File f29025z;

    private static final class b extends w.b implements Comparable {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final ZipEntry f29026d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f29027e;

        b(String str, ZipEntry zipEntry, int i10) {
            super(str, c(zipEntry));
            this.f29026d = zipEntry;
            this.f29027e = i10;
        }

        private static String c(ZipEntry zipEntry) {
            return String.format("pseudo-zip-hash-1-%s-%s-%s-%s", zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc()));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f29069b.compareTo(((b) obj).f29069b);
        }
    }

    protected class c extends w.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private b[] f29028b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ZipFile f29029c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final w f29030d;

        private final class a extends w.e {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f29032b;

            private a() {
            }

            @Override // com.facebook.soloader.w.e
            public boolean b() {
                c.this.g();
                return this.f29032b < c.this.f29028b.length;
            }

            @Override // com.facebook.soloader.w.e
            public w.d d() throws IOException {
                c.this.g();
                b[] bVarArr = c.this.f29028b;
                int i10 = this.f29032b;
                this.f29032b = i10 + 1;
                b bVar = bVarArr[i10];
                InputStream inputStream = c.this.f29029c.getInputStream(bVar.f29026d);
                try {
                    return new w.d(bVar, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        c(w wVar) throws IOException {
            this.f29029c = new ZipFile(m.this.f29025z);
            this.f29030d = wVar;
        }

        @Override // com.facebook.soloader.w.f
        protected final w.c b() throws IOException {
            return new w.c(g());
        }

        @Override // com.facebook.soloader.w.f, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f29029c.close();
        }

        @Override // com.facebook.soloader.w.f
        protected final w.e d() throws IOException {
            return new a();
        }

        final b[] g() {
            if (this.f29028b == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap map = new HashMap();
                Pattern patternCompile = Pattern.compile(m.this.A);
                String[] strArrH = SysUtil.h();
                Enumeration<? extends ZipEntry> enumerationEntries = this.f29029c.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    Matcher matcher = patternCompile.matcher(zipEntryNextElement.getName());
                    if (matcher.matches()) {
                        String strGroup = matcher.group(1);
                        String strGroup2 = matcher.group(2);
                        int iE = SysUtil.e(strArrH, strGroup);
                        if (iE >= 0) {
                            linkedHashSet.add(strGroup);
                            b bVar = (b) map.get(strGroup2);
                            if (bVar == null || iE < bVar.f29027e) {
                                map.put(strGroup2, new b(strGroup2, zipEntryNextElement, iE));
                            }
                        }
                    }
                }
                this.f29030d.v((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                b[] bVarArr = (b[]) map.values().toArray(new b[map.size()]);
                Arrays.sort(bVarArr);
                int i10 = 0;
                for (int i11 = 0; i11 < bVarArr.length; i11++) {
                    b bVar2 = bVarArr[i11];
                    if (h(bVar2.f29026d, bVar2.f29069b)) {
                        i10++;
                    } else {
                        bVarArr[i11] = null;
                    }
                }
                b[] bVarArr2 = new b[i10];
                int i12 = 0;
                for (b bVar3 : bVarArr) {
                    if (bVar3 != null) {
                        bVarArr2[i12] = bVar3;
                        i12++;
                    }
                }
                this.f29028b = bVarArr2;
            }
            return this.f29028b;
        }

        protected boolean h(ZipEntry zipEntry, String str) {
            return true;
        }
    }

    public m(Context context, String str, File file, String str2) {
        super(context, str);
        this.f29025z = file;
        this.A = str2;
    }

    @Override // com.facebook.soloader.w
    protected w.f r() throws IOException {
        return new c(this);
    }
}
