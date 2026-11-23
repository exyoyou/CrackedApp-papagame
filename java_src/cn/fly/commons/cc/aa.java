package cn.fly.commons.cc;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.net.UnknownHostException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public class aa {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected ArrayList<Object> f1197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected DataInputStream f1198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f1199c;

        public void a() throws Throwable {
            this.f1198b.readShort();
        }

        protected int b() throws Throwable {
            return this.f1198b.readShort();
        }

        public int c() throws Throwable {
            return ((Integer) this.f1197a.get(b())).intValue();
        }

        public String d() throws Throwable {
            return (String) this.f1197a.get(b());
        }

        public Object e() throws Throwable {
            return this.f1197a.get(b());
        }

        public String f() throws Throwable {
            return (String) this.f1197a.get(this.f1198b.readShort());
        }

        public int g() throws Throwable {
            return this.f1198b.readShort();
        }

        public int h() {
            return this.f1199c;
        }

        private a(ArrayList<Object> arrayList, DataInputStream dataInputStream, int i10) {
            this.f1197a = arrayList;
            this.f1198b = dataInputStream;
            this.f1199c = i10;
        }
    }

    public static class b extends a {
        @Override // cn.fly.commons.cc.aa.a
        public void a() throws Throwable {
            this.f1198b.readInt();
        }

        @Override // cn.fly.commons.cc.aa.a
        protected int b() throws Throwable {
            return this.f1198b.readInt();
        }

        @Override // cn.fly.commons.cc.aa.a
        public String f() throws Throwable {
            return (String) this.f1197a.get(this.f1198b.readInt());
        }

        @Override // cn.fly.commons.cc.aa.a
        public int g() throws Throwable {
            return this.f1198b.readInt();
        }

        private b(ArrayList<Object> arrayList, DataInputStream dataInputStream, int i10) {
            super(arrayList, dataInputStream, i10);
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f1200a;

        public c a(Object obj) {
            this.f1200a.a(obj);
            return this;
        }

        private c(Object obj) {
            this.f1200a = new d(obj);
        }

        public d a(String str, Object obj) {
            return this.f1200a.a(str, obj);
        }

        public d a(String str, Class<?> cls) {
            return this.f1200a.a(str, cls);
        }

        public void a() throws Throwable {
            this.f1200a.a();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ArrayList<Object> f1201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashMap<String, Object> f1202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private HashMap<String, Object> f1203c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f1204d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private HashMap<Class<?>, Class<? extends y<?>>> f1205e;

        private d(Object obj) {
            ArrayList<Object> arrayList = new ArrayList<>();
            this.f1201a = arrayList;
            arrayList.add(obj);
            this.f1202b = new HashMap<>();
            this.f1203c = new HashMap<>();
            this.f1205e = new HashMap<>();
            this.f1202b.put("t_map", this.f1203c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Object obj) {
            this.f1201a.add(obj);
        }

        public d a(String str, Object obj) {
            this.f1202b.put(str, obj);
            return this;
        }

        public d a(String str, Class<?> cls) {
            t.a(str, cls);
            return this;
        }

        public d a(String str) {
            this.f1204d = str;
            return this;
        }

        public <T> d a(Class<T> cls, Class<? extends y<T>> cls2) {
            this.f1205e.put(cls, cls2);
            return this;
        }

        public void a() throws Throwable {
            byte[] bytes;
            InputStream byteArrayInputStream;
            u.a aVar = new u.a();
            String str = this.f1204d;
            if (str != null) {
                bytes = str.getBytes("UTF-8");
                System.arraycopy(bytes, 0, new byte[16], 0, Math.min(bytes.length, 16));
            } else {
                bytes = null;
            }
            try {
                z zVar = new z();
                for (Object obj : this.f1201a) {
                    if (obj instanceof String) {
                        byteArrayInputStream = new FileInputStream((String) obj);
                    } else if (obj instanceof byte[]) {
                        byteArrayInputStream = new ByteArrayInputStream((byte[]) obj);
                    } else {
                        throw new ClassCastException("program is not string or byte array");
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    a(byteArrayInputStream, aVar, zVar);
                    this.f1203c.put("l_t", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                }
                for (Map.Entry<Class<?>, Class<? extends y<?>>> entry : this.f1205e.entrySet()) {
                    zVar.a(entry.getKey(), entry.getValue());
                }
                aVar.b().a(new t(this.f1202b, zVar), zVar);
            } catch (Throwable th) {
                th = th;
                if (bytes != null) {
                    String string = th.getMessage() == null ? th.getClass().toString() : th.getMessage();
                    if (th instanceof x) {
                        th = th.getCause();
                    }
                    throw new x(a(bytes, string + " " + a(th)), th);
                }
                throw th;
            }
        }

        private String a(Throwable th) {
            if (th == null) {
                return "";
            }
            Throwable cause = th;
            while (true) {
                StringWriter stringWriter = null;
                if (cause != null) {
                    try {
                        if (cause instanceof UnknownHostException) {
                            return "";
                        }
                        cause = cause.getCause();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    StringWriter stringWriter2 = new StringWriter();
                    try {
                        PrintWriter printWriter = new PrintWriter(stringWriter2);
                        th.printStackTrace(printWriter);
                        printWriter.flush();
                        printWriter.close();
                        String string = stringWriter2.toString();
                        try {
                            stringWriter2.close();
                        } catch (Throwable unused) {
                        }
                        return string;
                    } catch (Throwable th3) {
                        th = th3;
                        stringWriter = stringWriter2;
                    }
                }
                th = th2;
                try {
                    if (th instanceof OutOfMemoryError) {
                        return cn.fly.commons.n.a("023AchKdg'cjXgbaMcfdabh>bad:cj'g[bhbgWc2chgdbibibd");
                    }
                    return th.getMessage();
                } finally {
                    if (stringWriter != null) {
                        try {
                            stringWriter.close();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        }

        private String a(byte[] bArr, String str) {
            Cipher cipher;
            if (bArr == null) {
                return str;
            }
            try {
                byte[] bytes = str.getBytes("UTF-8");
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, cn.fly.commons.n.a("003Vdbegcj"));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(cn.fly.commons.n.a("003:dbegcj"));
                sb2.append(cn.fly.commons.n.a("003j(egcb"));
                sb2.append(cn.fly.commons.n.a("008IdhZjAejgacbcjgiej"));
                sb2.append(cn.fly.commons.n.a("006bAbababg>c;ch"));
                Provider provider = Security.getProvider(cn.fly.commons.n.a("002>dhcb"));
                if (provider != null) {
                    cipher = Cipher.getInstance(sb2.toString(), provider);
                } else {
                    cipher = Cipher.getInstance(sb2.toString(), cn.fly.commons.n.a("0021dhcb"));
                }
                cipher.init(1, secretKeySpec);
                byte[] bArr2 = new byte[cipher.getOutputSize(bytes.length)];
                cipher.doFinal(bArr2, cipher.update(bytes, 0, bytes.length, bArr2, 0));
                return new BigInteger(1, bArr2).toString(16);
            } catch (Throwable unused) {
                return "";
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [cn.fly.commons.cc.aa$1] */
        /* JADX WARN: Type inference failed for: r2v13 */
        /* JADX WARN: Type inference failed for: r2v14 */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v3 */
        private void a(InputStream inputStream, u.a aVar, z zVar) throws Throwable {
            InputStream bufferedInputStream;
            InputStream gZIPInputStream;
            a aVar2;
            ByteArrayInputStream byteArrayInputStream;
            ByteArrayInputStream byteArrayInputStream2;
            if (inputStream.read() != 70) {
                inputStream.close();
                return;
            }
            ?? r10 = 0;
            dataInputStream = null;
            DataInputStream dataInputStream = null;
            dataInputStream = null;
            DataInputStream dataInputStream2 = null;
            r10 = 0;
            r10 = 0;
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i10 = inputStream.read();
                if (i10 == 1 || i10 == 2) {
                    bufferedInputStream = inputStream;
                    gZIPInputStream = new GZIPInputStream(bufferedInputStream);
                } else {
                    gZIPInputStream = inputStream;
                }
                try {
                    bufferedInputStream = new BufferedInputStream(gZIPInputStream, 4096);
                    DataInputStream dataInputStream3 = new DataInputStream(bufferedInputStream);
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(null);
                        int i11 = dataInputStream3.readInt();
                        for (int i12 = 0; i12 < i11; i12++) {
                            arrayList.add(Integer.valueOf(dataInputStream3.readInt()));
                        }
                        int i13 = dataInputStream3.readInt();
                        for (int i14 = 0; i14 < i13; i14++) {
                            arrayList.add(Long.valueOf(dataInputStream3.readLong()));
                        }
                        int i15 = dataInputStream3.readInt();
                        for (int i16 = 0; i16 < i15; i16++) {
                            arrayList.add(Float.valueOf(dataInputStream3.readFloat()));
                        }
                        int i17 = dataInputStream3.readInt();
                        for (int i18 = 0; i18 < i17; i18++) {
                            arrayList.add(Double.valueOf(dataInputStream3.readDouble()));
                        }
                        int i19 = dataInputStream3.readInt();
                        for (int i20 = 0; i20 < i19; i20++) {
                            arrayList.add(Boolean.valueOf(dataInputStream3.readBoolean()));
                        }
                        int i21 = dataInputStream3.readInt();
                        if (i10 == 2) {
                            byte[] bArr = new byte[dataInputStream3.readInt()];
                            dataInputStream3.readFully(bArr);
                            try {
                                byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                                try {
                                    DataInputStream dataInputStream4 = new DataInputStream(new BufferedInputStream(new GZIPInputStream(byteArrayInputStream2), 2048));
                                    for (int i22 = 0; i22 < i21; i22++) {
                                        try {
                                            arrayList.add(dataInputStream4.readUTF());
                                        } catch (Throwable th) {
                                            th = th;
                                            dataInputStream = dataInputStream4;
                                            if (dataInputStream != null) {
                                                dataInputStream.close();
                                            } else if (byteArrayInputStream2 != null) {
                                                byteArrayInputStream2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    dataInputStream4.close();
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                byteArrayInputStream2 = null;
                            }
                        } else {
                            for (int i23 = 0; i23 < i21; i23++) {
                                arrayList.add(dataInputStream3.readUTF());
                            }
                        }
                        if (dataInputStream3.readByte() == 15) {
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            this.f1203c.put("lc_t", Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis));
                            if (dataInputStream3.readBoolean()) {
                                aVar2 = new b(arrayList, dataInputStream3, aVar.a());
                            } else {
                                aVar2 = new a(arrayList, dataInputStream3, aVar.a());
                            }
                            int i24 = dataInputStream3.readInt();
                            boolean z10 = dataInputStream3.readBoolean();
                            if (dataInputStream3.readByte() == 25) {
                                aVar.a(i24, z10);
                                for (int i25 = 0; i25 < i24; i25++) {
                                    aVar.a(dataInputStream3.readByte(), aVar2);
                                }
                                if (dataInputStream3.readByte() == 39) {
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    this.f1203c.put("lcmd_t", Long.valueOf(jCurrentTimeMillis3 - jCurrentTimeMillis2));
                                    byte[] bArr2 = new byte[dataInputStream3.readInt()];
                                    dataInputStream3.readFully(bArr2);
                                    if (i10 == 2) {
                                        try {
                                            byteArrayInputStream = new ByteArrayInputStream(bArr2);
                                            try {
                                                DataInputStream dataInputStream5 = new DataInputStream(new GZIPInputStream(byteArrayInputStream));
                                                try {
                                                    bArr2 = new byte[dataInputStream5.readInt()];
                                                    dataInputStream5.readFully(bArr2);
                                                    dataInputStream5.close();
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    dataInputStream2 = dataInputStream5;
                                                    if (dataInputStream2 != null) {
                                                        dataInputStream2.close();
                                                    } else if (byteArrayInputStream != null) {
                                                        byteArrayInputStream.close();
                                                    }
                                                    throw th;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            byteArrayInputStream = null;
                                        }
                                    }
                                    zVar.a(bArr2);
                                    this.f1203c.put("mreg_t", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis3));
                                    try {
                                        dataInputStream3.close();
                                        return;
                                    } catch (Throwable unused) {
                                        return;
                                    }
                                }
                                throw new RuntimeException("data has offset in pos 3");
                            }
                            throw new RuntimeException("data has offset in pos 2");
                        }
                        throw new RuntimeException("data has offset in pos 1");
                    } catch (Throwable th7) {
                        th = th7;
                        r10 = dataInputStream3;
                        try {
                            if (r10 != 0) {
                                r10.close();
                            } else {
                                bufferedInputStream.close();
                            }
                        } catch (Throwable unused2) {
                        }
                        throw th;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    bufferedInputStream = gZIPInputStream;
                }
            } catch (Throwable th9) {
                th = th9;
                bufferedInputStream = inputStream;
            }
        }
    }

    private aa() {
    }

    public static int a() {
        return 70;
    }

    public static c a(String... strArr) {
        return a((Object[]) strArr);
    }

    public static c a(byte[]... bArr) {
        return a((Object[]) bArr);
    }

    private static c a(Object[] objArr) {
        if (objArr.length == 0) {
            return null;
        }
        c cVar = new c(objArr[0]);
        for (int i10 = 1; i10 < objArr.length; i10++) {
            cVar.a(objArr[i10]);
        }
        return cVar;
    }
}
