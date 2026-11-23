package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class f implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f3695b = "f";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static k f3696c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f3697a;

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicLong f3698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f3699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f3700c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3701d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Map<File, Long> f3702e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected File f3703f;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                File[] fileArrListFiles = b.this.f3703f.listFiles();
                if (fileArrListFiles != null) {
                    int iA = 0;
                    int i10 = 0;
                    for (File file : fileArrListFiles) {
                        iA = (int) (((long) iA) + b.this.a(file));
                        i10++;
                        b.this.f3702e.put(file, Long.valueOf(file.lastModified()));
                    }
                    b.this.f3698a.set(iA);
                    b.this.f3699b.set(i10);
                }
            }
        }

        private b(f fVar, File file, long j10, int i10) {
            this.f3702e = Collections.synchronizedMap(new HashMap());
            this.f3703f = file;
            this.f3700c = j10;
            this.f3701d = i10;
            this.f3698a = new AtomicLong();
            this.f3699b = new AtomicInteger();
            a();
        }

        private long b() {
            File key;
            if (this.f3702e.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> setEntrySet = this.f3702e.entrySet();
            synchronized (this.f3702e) {
                key = null;
                Long value = null;
                for (Map.Entry<File, Long> entry : setEntrySet) {
                    if (key == null) {
                        key = entry.getKey();
                        value = entry.getValue();
                    } else {
                        Long value2 = entry.getValue();
                        if (value2.longValue() < value.longValue()) {
                            key = entry.getKey();
                            value = value2;
                        }
                    }
                }
            }
            long jA = a(key);
            if (key.delete()) {
                this.f3702e.remove(key);
            }
            return jA;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long a(File file) {
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            return new File(this.f3703f, str + "_" + str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            return a(str).delete();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File fileB = b(str);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            fileB.setLastModified(lValueOf.longValue());
            this.f3702e.put(fileB, lValueOf);
            return fileB;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(File file) {
            int iAddAndGet = this.f3699b.get();
            while (iAddAndGet + 1 > this.f3701d) {
                this.f3698a.addAndGet(-b());
                iAddAndGet = this.f3699b.addAndGet(-1);
            }
            this.f3699b.addAndGet(1);
            long jA = a(file);
            long jAddAndGet = this.f3698a.get();
            while (jAddAndGet + jA > this.f3700c) {
                jAddAndGet = this.f3698a.addAndGet(-b());
            }
            this.f3698a.addAndGet(jA);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(lValueOf.longValue());
            this.f3702e.put(file, lValueOf);
        }

        private void a() {
            new Thread(new a()).start();
        }
    }

    private static class c {
        private static int a(byte[] bArr, char c10) {
            for (int i10 = 0; i10 < bArr.length; i10++) {
                if (bArr[i10] == c10) {
                    return i10;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String c(String str) {
            return (str == null || !b(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean d(String str) {
            return c(str.getBytes());
        }

        private static boolean b(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        private static boolean c(byte[] bArr) {
            String[] strArrA = a(bArr);
            if (strArrA != null && strArrA.length == 2) {
                String strSubstring = strArrA[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(strArrA[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        private static byte[] a(byte[] bArr, int i10, int i11) {
            int i12 = i11 - i10;
            if (i12 >= 0) {
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, Math.min(bArr.length - i10, i12));
                return bArr2;
            }
            throw new IllegalArgumentException(i10 + " > " + i11);
        }

        private static String[] a(byte[] bArr) {
            if (b(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }
    }

    public f(File file, long j10, int i10) {
        if (file.exists() || file.mkdirs()) {
            this.f3697a = new b(file, j10, i10);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    static f a(File file, long j10, int i10) {
        return new f(file, j10, i10);
    }

    public boolean b(String str) {
        return this.f3697a.c(str);
    }

    public static k a() {
        return f3696c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    @Override // com.aggmoread.sdk.z.a.m.k
    public String a(String str) throws Throwable {
        BufferedReader bufferedReader;
        File fileA = this.f3697a.a(str);
        ?? Exists = fileA.exists();
        ?? r10 = 0;
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                bufferedReader = new BufferedReader(new FileReader(fileA));
                String str2 = "";
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        str2 = str2 + line;
                    } catch (IOException e10) {
                        e = e10;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
                if (c.d(str2)) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    b(str);
                    return null;
                }
                String strC = c.c(str2);
                try {
                    bufferedReader.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                return strC;
            } catch (IOException e14) {
                e = e14;
                bufferedReader = null;
            } catch (Throwable th) {
                th = th;
                if (r10 != 0) {
                    try {
                        r10.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r10 = Exists;
        }
    }

    public static void a(Context context) {
        File filesDir = context.getFilesDir();
        String str = f3695b;
        File file = new File(filesDir, str);
        File[] fileArr = {file, new File(context.getCacheDir(), str)};
        for (int i10 = 0; i10 < 2; i10++) {
            File file2 = fileArr[i10];
            if (file2.exists() || file2.mkdirs()) {
                try {
                    f fVarA = a(file2, 50000000L, Integer.MAX_VALUE);
                    com.aggmoread.sdk.z.a.d.d(f3695b, "init , cache dir = " + file2.getAbsolutePath() + " , cacheHelper = " + fVarA);
                    f3696c = fVarA;
                    break;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (f3696c == null) {
            f3696c = new g(context);
        }
    }

    @Override // com.aggmoread.sdk.z.a.m.k
    public void a(String str, String str2) throws Throwable {
        File fileB = this.f3697a.b(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(fileB), 1024);
                    try {
                        bufferedWriter2.write(str2);
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                    } catch (IOException e10) {
                        e = e10;
                        bufferedWriter = bufferedWriter2;
                        e.printStackTrace();
                        if (bufferedWriter != null) {
                            bufferedWriter.flush();
                            bufferedWriter.close();
                        }
                        this.f3697a.b(fileB);
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.flush();
                                bufferedWriter.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        this.f3697a.b(fileB);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
        this.f3697a.b(fileB);
    }
}
