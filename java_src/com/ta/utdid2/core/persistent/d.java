package com.ta.utdid2.core.persistent;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f82965d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f82966e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f82967f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f82968g = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f82970b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f82969a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<File, a> f82971c = new HashMap<>();

    private static final class a implements b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final Object f82972g = new Object();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f82973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f82974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f82975c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map f82976d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f82977e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WeakHashMap<b.InterfaceC1042b, Object> f82978f;

        /* JADX INFO: renamed from: com.ta.utdid2.core.persistent.d$a$a, reason: collision with other inner class name */
        public final class C1043a implements b.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Map<String, Object> f82979a = new HashMap();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f82980b = false;

            public C1043a() {
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a clear() {
                synchronized (this) {
                    this.f82980b = true;
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final boolean commit() {
                boolean z10;
                ArrayList arrayList;
                HashSet<b.InterfaceC1042b> hashSet;
                boolean zK;
                synchronized (d.f82968g) {
                    z10 = a.this.f82978f.size() > 0;
                    if (z10) {
                        arrayList = new ArrayList();
                        hashSet = new HashSet(a.this.f82978f.keySet());
                    } else {
                        arrayList = null;
                        hashSet = null;
                    }
                    synchronized (this) {
                        if (this.f82980b) {
                            a.this.f82976d.clear();
                            this.f82980b = false;
                        }
                        for (Map.Entry<String, Object> entry : this.f82979a.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (value == this) {
                                a.this.f82976d.remove(key);
                            } else {
                                a.this.f82976d.put(key, value);
                            }
                            if (z10) {
                                arrayList.add(key);
                            }
                        }
                        this.f82979a.clear();
                    }
                    zK = a.this.k();
                    if (zK) {
                        a.this.j(true);
                    }
                }
                if (z10) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str = (String) arrayList.get(size);
                        for (b.InterfaceC1042b interfaceC1042b : hashSet) {
                            if (interfaceC1042b != null) {
                                interfaceC1042b.a(a.this, str);
                            }
                        }
                    }
                }
                return zK;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putBoolean(String str, boolean z10) {
                synchronized (this) {
                    this.f82979a.put(str, Boolean.valueOf(z10));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putFloat(String str, float f10) {
                synchronized (this) {
                    this.f82979a.put(str, Float.valueOf(f10));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putInt(String str, int i10) {
                synchronized (this) {
                    this.f82979a.put(str, Integer.valueOf(i10));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putLong(String str, long j10) {
                synchronized (this) {
                    this.f82979a.put(str, Long.valueOf(j10));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putString(String str, String str2) {
                synchronized (this) {
                    this.f82979a.put(str, str2);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a remove(String str) {
                synchronized (this) {
                    this.f82979a.put(str, this);
                }
                return this;
            }
        }

        a(File file, int i10, Map map) {
            this.f82973a = file;
            this.f82974b = d.f(file);
            this.f82975c = i10;
            this.f82976d = map == null ? new HashMap() : map;
            this.f82978f = new WeakHashMap<>();
        }

        private FileOutputStream g(File file) {
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException unused) {
                if (!file.getParentFile().mkdir()) {
                    return null;
                }
                try {
                    return new FileOutputStream(file);
                } catch (FileNotFoundException unused2) {
                    return null;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean k() {
            if (this.f82973a.exists()) {
                if (this.f82974b.exists()) {
                    this.f82973a.delete();
                } else if (!this.f82973a.renameTo(this.f82974b)) {
                    return false;
                }
            }
            try {
                FileOutputStream fileOutputStreamG = g(this.f82973a);
                if (fileOutputStreamG == null) {
                    return false;
                }
                e.j(this.f82976d, fileOutputStreamG);
                fileOutputStreamG.close();
                this.f82974b.delete();
                return true;
            } catch (IOException | XmlPullParserException unused) {
                if (this.f82973a.exists()) {
                    this.f82973a.delete();
                }
                return false;
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean a() {
            return this.f82973a != null && new File(this.f82973a.getAbsolutePath()).exists();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final void b(b.InterfaceC1042b interfaceC1042b) {
            synchronized (this) {
                this.f82978f.remove(interfaceC1042b);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final void c(b.InterfaceC1042b interfaceC1042b) {
            synchronized (this) {
                this.f82978f.put(interfaceC1042b, f82972g);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean contains(String str) {
            boolean zContainsKey;
            synchronized (this) {
                zContainsKey = this.f82976d.containsKey(str);
            }
            return zContainsKey;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final b.a edit() {
            return new C1043a();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final Map<String, ?> getAll() {
            HashMap map;
            synchronized (this) {
                map = new HashMap(this.f82976d);
            }
            return map;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean getBoolean(String str, boolean z10) {
            synchronized (this) {
                Boolean bool = (Boolean) this.f82976d.get(str);
                if (bool != null) {
                    z10 = bool.booleanValue();
                }
            }
            return z10;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final float getFloat(String str, float f10) {
            synchronized (this) {
                Float f11 = (Float) this.f82976d.get(str);
                if (f11 != null) {
                    f10 = f11.floatValue();
                }
            }
            return f10;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final int getInt(String str, int i10) {
            synchronized (this) {
                Integer num = (Integer) this.f82976d.get(str);
                if (num != null) {
                    i10 = num.intValue();
                }
            }
            return i10;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final long getLong(String str, long j10) {
            synchronized (this) {
                Long l10 = (Long) this.f82976d.get(str);
                if (l10 != null) {
                    j10 = l10.longValue();
                }
            }
            return j10;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final String getString(String str, String str2) {
            synchronized (this) {
                String str3 = (String) this.f82976d.get(str);
                if (str3 != null) {
                    str2 = str3;
                }
            }
            return str2;
        }

        public final boolean h() {
            boolean z10;
            synchronized (this) {
                z10 = this.f82977e;
            }
            return z10;
        }

        public final void i(Map map) {
            if (map != null) {
                synchronized (this) {
                    this.f82976d = map;
                }
            }
        }

        public final void j(boolean z10) {
            synchronized (this) {
                this.f82977e = z10;
            }
        }
    }

    public d(String str) {
        if (str == null || str.length() <= 0) {
            throw new RuntimeException("Directory can not be empty");
        }
        this.f82970b = new File(str);
    }

    private File d() {
        File file;
        synchronized (this.f82969a) {
            file = this.f82970b;
        }
        return file;
    }

    private File e(String str) {
        return g(d(), str + ".xml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File f(File file) {
        return new File(file.getPath() + ".bak");
    }

    private File g(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    public b c(String str, int i10) {
        File fileE = e(str);
        synchronized (f82968g) {
            a aVar = this.f82971c.get(fileE);
            if (aVar != null && !aVar.h()) {
                return aVar;
            }
            File fileF = f(fileE);
            if (fileF.exists()) {
                fileE.delete();
                fileF.renameTo(fileE);
            }
            if (fileE.exists()) {
                fileE.canRead();
            }
            HashMap mapA = null;
            if (fileE.exists() && fileE.canRead()) {
                try {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(fileE);
                        mapA = e.a(fileInputStream);
                        fileInputStream.close();
                    } catch (FileNotFoundException e10) {
                        e10.printStackTrace();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                } catch (FileNotFoundException e12) {
                    e12.printStackTrace();
                } catch (IOException e13) {
                    e13.printStackTrace();
                } catch (XmlPullParserException unused) {
                    FileInputStream fileInputStream2 = new FileInputStream(fileE);
                    int iAvailable = fileInputStream2.available();
                    byte[] bArr = new byte[iAvailable];
                    fileInputStream2.read(bArr);
                    new String(bArr, 0, iAvailable, "UTF-8");
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
            }
            synchronized (f82968g) {
                try {
                    if (aVar != null) {
                        aVar.i(mapA);
                    } else {
                        aVar = this.f82971c.get(fileE);
                        if (aVar == null) {
                            aVar = new a(fileE, i10, mapA);
                            this.f82971c.put(fileE, aVar);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return aVar;
        }
    }
}
