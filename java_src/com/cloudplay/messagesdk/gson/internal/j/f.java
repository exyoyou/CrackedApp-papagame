package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class f extends com.cloudplay.messagesdk.gson.stream.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Reader f23817t = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Object f23818u = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object[] f23819p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23820q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String[] f23821r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int[] f23822s;

    static class a extends Reader {
        a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            throw new AssertionError();
        }
    }

    public f(com.cloudplay.messagesdk.gson.d dVar) {
        super(f23817t);
        this.f23819p = new Object[32];
        this.f23820q = 0;
        this.f23821r = new String[32];
        this.f23822s = new int[32];
        a(dVar);
    }

    private String i() {
        return " at path " + f();
    }

    private Object u() {
        return this.f23819p[this.f23820q - 1];
    }

    private Object v() {
        Object[] objArr = this.f23819p;
        int i10 = this.f23820q - 1;
        this.f23820q = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void a() throws IOException {
        a(JsonToken.BEGIN_ARRAY);
        a(((com.cloudplay.messagesdk.gson.c) u()).iterator());
        this.f23822s[this.f23820q - 1] = 0;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void b() throws IOException {
        a(JsonToken.BEGIN_OBJECT);
        a(((com.cloudplay.messagesdk.gson.f) u()).h().iterator());
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f23819p = new Object[]{f23818u};
        this.f23820q = 1;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void d() throws IOException {
        a(JsonToken.END_ARRAY);
        v();
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void e() throws IOException {
        a(JsonToken.END_OBJECT);
        v();
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public String f() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f23820q;
            if (i10 >= i11) {
                return sb2.toString();
            }
            Object[] objArr = this.f23819p;
            Object obj = objArr[i10];
            if (obj instanceof com.cloudplay.messagesdk.gson.c) {
                i10++;
                if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                    sb2.append('[');
                    sb2.append(this.f23822s[i10]);
                    sb2.append(']');
                }
            } else if ((obj instanceof com.cloudplay.messagesdk.gson.f) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                sb2.append(external.org.apache.commons.lang3.d.f90941a);
                String str = this.f23821r[i10];
                if (str != null) {
                    sb2.append(str);
                }
            }
            i10++;
        }
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public boolean g() throws IOException {
        JsonToken jsonTokenQ = q();
        return (jsonTokenQ == JsonToken.END_OBJECT || jsonTokenQ == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public boolean j() throws IOException {
        a(JsonToken.BOOLEAN);
        boolean zH = ((com.cloudplay.messagesdk.gson.g) v()).h();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return zH;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public double k() throws IOException {
        JsonToken jsonTokenQ = q();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenQ != jsonToken && jsonTokenQ != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenQ + i());
        }
        double dI = ((com.cloudplay.messagesdk.gson.g) u()).i();
        if (!h() && (Double.isNaN(dI) || Double.isInfinite(dI))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dI);
        }
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return dI;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public int l() throws IOException {
        JsonToken jsonTokenQ = q();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenQ != jsonToken && jsonTokenQ != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenQ + i());
        }
        int iJ = ((com.cloudplay.messagesdk.gson.g) u()).j();
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return iJ;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public long m() throws IOException {
        JsonToken jsonTokenQ = q();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenQ != jsonToken && jsonTokenQ != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenQ + i());
        }
        long jK = ((com.cloudplay.messagesdk.gson.g) u()).k();
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return jK;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public String n() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) u()).next();
        String str = (String) entry.getKey();
        this.f23821r[this.f23820q - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void o() throws IOException {
        a(JsonToken.NULL);
        v();
        int i10 = this.f23820q;
        if (i10 > 0) {
            int[] iArr = this.f23822s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public String p() throws IOException {
        JsonToken jsonTokenQ = q();
        JsonToken jsonToken = JsonToken.STRING;
        if (jsonTokenQ == jsonToken || jsonTokenQ == JsonToken.NUMBER) {
            String strM = ((com.cloudplay.messagesdk.gson.g) v()).m();
            int i10 = this.f23820q;
            if (i10 > 0) {
                int[] iArr = this.f23822s;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
            return strM;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenQ + i());
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public JsonToken q() throws IOException {
        if (this.f23820q == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object objU = u();
        if (objU instanceof Iterator) {
            boolean z10 = this.f23819p[this.f23820q - 2] instanceof com.cloudplay.messagesdk.gson.f;
            Iterator it2 = (Iterator) objU;
            if (!it2.hasNext()) {
                return z10 ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z10) {
                return JsonToken.NAME;
            }
            a(it2.next());
            return q();
        }
        if (objU instanceof com.cloudplay.messagesdk.gson.f) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objU instanceof com.cloudplay.messagesdk.gson.c) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (!(objU instanceof com.cloudplay.messagesdk.gson.g)) {
            if (objU instanceof com.cloudplay.messagesdk.gson.e) {
                return JsonToken.NULL;
            }
            if (objU == f23818u) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        com.cloudplay.messagesdk.gson.g gVar = (com.cloudplay.messagesdk.gson.g) objU;
        if (gVar.p()) {
            return JsonToken.STRING;
        }
        if (gVar.n()) {
            return JsonToken.BOOLEAN;
        }
        if (gVar.o()) {
            return JsonToken.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public void r() throws IOException {
        if (q() == JsonToken.NAME) {
            n();
            this.f23821r[this.f23820q - 2] = "null";
        } else {
            v();
            int i10 = this.f23820q;
            if (i10 > 0) {
                this.f23821r[i10 - 1] = "null";
            }
        }
        int i11 = this.f23820q;
        if (i11 > 0) {
            int[] iArr = this.f23822s;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
        }
    }

    com.cloudplay.messagesdk.gson.d s() throws IOException {
        JsonToken jsonTokenQ = q();
        if (jsonTokenQ != JsonToken.NAME && jsonTokenQ != JsonToken.END_ARRAY && jsonTokenQ != JsonToken.END_OBJECT && jsonTokenQ != JsonToken.END_DOCUMENT) {
            com.cloudplay.messagesdk.gson.d dVar = (com.cloudplay.messagesdk.gson.d) u();
            r();
            return dVar;
        }
        throw new IllegalStateException("Unexpected " + jsonTokenQ + " when reading a JsonElement.");
    }

    public void t() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) u()).next();
        a(entry.getValue());
        a(new com.cloudplay.messagesdk.gson.g((String) entry.getKey()));
    }

    @Override // com.cloudplay.messagesdk.gson.stream.a
    public String toString() {
        return f.class.getSimpleName() + i();
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (q() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + q() + i());
    }

    private void a(Object obj) {
        int i10 = this.f23820q;
        Object[] objArr = this.f23819p;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f23819p = Arrays.copyOf(objArr, i11);
            this.f23822s = Arrays.copyOf(this.f23822s, i11);
            this.f23821r = (String[]) Arrays.copyOf(this.f23821r, i11);
        }
        Object[] objArr2 = this.f23819p;
        int i12 = this.f23820q;
        this.f23820q = i12 + 1;
        objArr2[i12] = obj;
    }
}
