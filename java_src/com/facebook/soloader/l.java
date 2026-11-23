package com.facebook.soloader;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes9.dex */
public final class l extends w {

    private final class b extends w.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c[] f29020b;

        private final class a extends w.e {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f29022b;

            private a() {
            }

            @Override // com.facebook.soloader.w.e
            public boolean b() {
                return this.f29022b < b.this.f29020b.length;
            }

            @Override // com.facebook.soloader.w.e
            public w.d d() throws IOException {
                c[] cVarArr = b.this.f29020b;
                int i10 = this.f29022b;
                this.f29022b = i10 + 1;
                c cVar = cVarArr[i10];
                FileInputStream fileInputStream = new FileInputStream(cVar.f29024d);
                try {
                    return new w.d(cVar, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }

        b(w wVar) throws IOException {
            boolean z10;
            File file = new File("/data/local/tmp/exopackage/" + l.this.f29059n.getPackageName() + "/native-libs/");
            ArrayList arrayList = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String[] strArrH = SysUtil.h();
            int length = strArrH.length;
            int i10 = 0;
            int i11 = 0;
            while (i11 < length) {
                String str = strArrH[i11];
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    linkedHashSet.add(str);
                    File file3 = new File(file2, "metadata.txt");
                    if (file3.isFile()) {
                        FileReader fileReader = new FileReader(file3);
                        try {
                            BufferedReader bufferedReader = new BufferedReader(fileReader);
                            while (true) {
                                try {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        bufferedReader.close();
                                        fileReader.close();
                                        break;
                                    }
                                    if (line.length() != 0) {
                                        int iIndexOf = line.indexOf(32);
                                        if (iIndexOf == -1) {
                                            throw new RuntimeException("illegal line in exopackage metadata: [" + line + "]");
                                        }
                                        String str2 = line.substring(i10, iIndexOf) + ".so";
                                        int size = arrayList.size();
                                        int i12 = 0;
                                        while (true) {
                                            if (i12 >= size) {
                                                z10 = false;
                                                break;
                                            } else {
                                                if (((c) arrayList.get(i12)).f29069b.equals(str2)) {
                                                    z10 = true;
                                                    break;
                                                }
                                                i12++;
                                            }
                                        }
                                        if (!z10) {
                                            String strSubstring = line.substring(iIndexOf + 1);
                                            arrayList.add(new c(str2, strSubstring, new File(file2, strSubstring)));
                                        }
                                        i10 = 0;
                                    }
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        try {
                                            bufferedReader.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                }
                                try {
                                    throw th;
                                } catch (Throwable th4) {
                                    try {
                                        fileReader.close();
                                        throw th4;
                                    } catch (Throwable th5) {
                                        th.addSuppressed(th5);
                                        throw th4;
                                    }
                                }
                            }
                        } catch (Throwable th6) {
                            throw th6;
                        }
                    }
                    continue;
                }
                i11++;
                i10 = 0;
            }
            wVar.v((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
            this.f29020b = (c[]) arrayList.toArray(new c[arrayList.size()]);
        }

        @Override // com.facebook.soloader.w.f
        protected w.c b() throws IOException {
            return new w.c(this.f29020b);
        }

        @Override // com.facebook.soloader.w.f
        protected w.e d() throws IOException {
            return new a();
        }
    }

    private static final class c extends w.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final File f29024d;

        c(String str, String str2, File file) {
            super(str, str2);
            this.f29024d = file;
        }
    }

    public l(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.w
    protected w.f r() throws IOException {
        return new b(this);
    }
}
