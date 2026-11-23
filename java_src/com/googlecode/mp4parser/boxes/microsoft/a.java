package com.googlecode.mp4parser.boxes.microsoft;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.googlecode.mp4parser.j;
import com.haima.hmcp.Constants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Vector;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f33519r = "Xtra";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f33520s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f33521t = 19;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f33522u = 21;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f33523v = 72;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f33524w = 11644473600000L;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final long f33525x = 10000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33526y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33527z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f33528o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Vector<b> f33529p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ByteBuffer f33530q;

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f33534a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f33535b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f33536c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f33537d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Date f33538e;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ByteBuffer byteBuffer) {
            try {
                byteBuffer.putInt(f());
                byteBuffer.putShort((short) this.f33534a);
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                int i10 = this.f33534a;
                if (i10 == 8) {
                    a.Q(byteBuffer, this.f33535b);
                } else if (i10 == 19) {
                    byteBuffer.putLong(this.f33536c);
                } else if (i10 != 21) {
                    byteBuffer.put(this.f33537d);
                } else {
                    byteBuffer.putLong(a.H(this.f33538e.getTime()));
                }
            } finally {
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int f() {
            int length;
            int i10 = this.f33534a;
            if (i10 == 8) {
                length = (this.f33535b.length() * 2) + 2;
            } else {
                if (i10 == 19 || i10 == 21) {
                    return 14;
                }
                length = this.f33537d.length;
            }
            return length + 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object g() {
            int i10 = this.f33534a;
            if (i10 == 8) {
                return this.f33535b;
            }
            if (i10 != 19) {
                return i10 != 21 ? this.f33537d : this.f33538e;
            }
            return new Long(this.f33536c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(ByteBuffer byteBuffer) {
            int i10 = byteBuffer.getInt() - 6;
            this.f33534a = byteBuffer.getShort();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            int i11 = this.f33534a;
            if (i11 == 8) {
                this.f33535b = a.J(byteBuffer, i10);
            } else if (i11 == 19) {
                this.f33536c = byteBuffer.getLong();
            } else if (i11 != 21) {
                byte[] bArr = new byte[i10];
                this.f33537d = bArr;
                byteBuffer.get(bArr);
            } else {
                this.f33538e = new Date(a.A(byteBuffer.getLong()));
            }
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public String toString() {
            int i10 = this.f33534a;
            if (i10 == 8) {
                return "[string]" + this.f33535b;
            }
            if (i10 == 19) {
                return "[long]" + String.valueOf(this.f33536c);
            }
            if (i10 != 21) {
                return "[GUID](nonParsed)";
            }
            return "[filetime]" + this.f33538e.toString();
        }

        /* synthetic */ c(c cVar) {
            this();
        }

        private c(String str) {
            this.f33534a = 8;
            this.f33535b = str;
        }

        /* synthetic */ c(String str, c cVar) {
            this(str);
        }

        private c(long j10) {
            this.f33534a = 19;
            this.f33536c = j10;
        }

        /* synthetic */ c(long j10, c cVar) {
            this(j10);
        }

        private c(Date date) {
            this.f33534a = 21;
            this.f33538e = date;
        }

        /* synthetic */ c(Date date, c cVar) {
            this(date);
        }
    }

    static {
        y();
    }

    public a() {
        super(f33519r);
        this.f33528o = false;
        this.f33529p = new Vector<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long A(long j10) {
        return (j10 / 10000) - f33524w;
    }

    private b F(String str) {
        for (b bVar : this.f33529p) {
            if (bVar.f33532b.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long H(long j10) {
        return (j10 + f33524w) * 10000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String I(ByteBuffer byteBuffer, int i10) {
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Shouldn't happen", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String J(ByteBuffer byteBuffer, int i10) {
        int i11 = (i10 / 2) - 1;
        char[] cArr = new char[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            cArr[i12] = byteBuffer.getChar();
        }
        byteBuffer.getChar();
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P(ByteBuffer byteBuffer, String str) {
        try {
            byteBuffer.put(str.getBytes(com.alipay.security.mobile.module.commonutils.crypto.a.f7272b));
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Shouldn't happen", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Q(ByteBuffer byteBuffer, String str) {
        for (char c10 : str.toCharArray()) {
            byteBuffer.putChar(c10);
        }
        byteBuffer.putChar((char) 0);
    }

    private static /* synthetic */ void y() {
        e eVar = new e("XtraBox.java", a.class);
        f33526y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "", "", "", "java.lang.String"), 88);
        f33527z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAllTagNames", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "", "", "", "[Ljava.lang.String;"), 151);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:long", "name:value", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFirstStringValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.lang.String"), 166);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFirstDateValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.util.Date"), 183);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFirstLongValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.lang.Long"), 200);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getValues", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "[Ljava.lang.Object;"), 216);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "removeTag", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "void"), Constants.START_STREAMING_REQUEST);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTagValues", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:[Ljava.lang.String;", "name:values", "", "void"), 249);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:java.lang.String", "name:value", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:java.util.Date", "name:date", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE);
    }

    private int z() {
        int iG = 0;
        for (int i10 = 0; i10 < this.f33529p.size(); i10++) {
            iG += this.f33529p.elementAt(i10).g();
        }
        return iG;
    }

    public String[] B() {
        j.b().c(e.v(f33527z, this, this));
        String[] strArr = new String[this.f33529p.size()];
        for (int i10 = 0; i10 < this.f33529p.size(); i10++) {
            strArr[i10] = this.f33529p.elementAt(i10).f33532b;
        }
        return strArr;
    }

    public Date C(String str) {
        j.b().c(e.w(B, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof Date) {
                return (Date) obj;
            }
        }
        return null;
    }

    public Long D(String str) {
        j.b().c(e.w(C, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof Long) {
                return (Long) obj;
            }
        }
        return null;
    }

    public String E(String str) {
        j.b().c(e.w(A, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        return null;
    }

    public Object[] G(String str) {
        j.b().c(e.w(D, this, this, str));
        b bVarF = F(str);
        if (bVarF == null) {
            return new Object[0];
        }
        Object[] objArr = new Object[bVarF.f33533c.size()];
        for (int i10 = 0; i10 < bVarF.f33533c.size(); i10++) {
            objArr[i10] = ((c) bVarF.f33533c.elementAt(i10)).g();
        }
        return objArr;
    }

    public void K(String str) {
        j.b().c(e.w(E, this, this, str));
        b bVarF = F(str);
        if (bVarF != null) {
            this.f33529p.remove(bVarF);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void L(String str, long j10) {
        j.b().c(e.x(I, this, this, str, org.aspectj.runtime.internal.e.m(j10)));
        K(str);
        b bVar = new b(str, null);
        bVar.f33533c.addElement(new c(j10, (c) (0 == true ? 1 : 0)));
        this.f33529p.addElement(bVar);
    }

    public void M(String str, String str2) {
        j.b().c(e.x(G, this, this, str, str2));
        O(str, new String[]{str2});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void N(String str, Date date) {
        j.b().c(e.x(H, this, this, str, date));
        K(str);
        b bVar = new b(str, null);
        bVar.f33533c.addElement(new c(date, (c) (0 == true ? 1 : 0)));
        this.f33529p.addElement(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void O(String str, String[] strArr) {
        j.b().c(e.x(F, this, this, str, strArr));
        K(str);
        Object[] objArr = 0;
        b bVar = new b(str, null);
        for (String str2 : strArr) {
            bVar.f33533c.addElement(new c(str2, (c) (objArr == true ? 1 : 0)));
        }
        this.f33529p.addElement(bVar);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        this.f33530q = byteBuffer.slice();
        this.f33528o = false;
        try {
            try {
                this.f33529p.clear();
                while (byteBuffer.remaining() > 0) {
                    b bVar = new b((b) null);
                    bVar.h(byteBuffer);
                    this.f33529p.addElement(bVar);
                }
                int iZ = z();
                if (iRemaining == iZ) {
                    this.f33528o = true;
                    byteBuffer.order(ByteOrder.BIG_ENDIAN);
                    return;
                }
                throw new RuntimeException("Improperly handled Xtra tag: Calculated sizes don't match ( " + iRemaining + net.lingala.zip4j.util.e.F0 + iZ + ")");
            } catch (Exception e10) {
                this.f33528o = false;
                System.err.println("Malformed Xtra Tag detected: " + e10.toString());
                e10.printStackTrace();
                byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
            }
        } catch (Throwable th) {
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
            throw th;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        if (!this.f33528o) {
            this.f33530q.rewind();
            byteBuffer.put(this.f33530q);
        } else {
            for (int i10 = 0; i10 < this.f33529p.size(); i10++) {
                this.f33529p.elementAt(i10).f(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f33528o ? z() : this.f33530q.limit();
    }

    public String toString() {
        j.b().c(e.v(f33526y, this, this));
        if (!m()) {
            o();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("XtraBox[");
        for (b bVar : this.f33529p) {
            for (c cVar : bVar.f33533c) {
                stringBuffer.append(bVar.f33532b);
                stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
                stringBuffer.append(cVar.toString());
                stringBuffer.append(";");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f33531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f33532b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Vector<c> f33533c;

        private b() {
            this.f33533c = new Vector<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(ByteBuffer byteBuffer) {
            byteBuffer.putInt(g());
            byteBuffer.putInt(this.f33532b.length());
            a.P(byteBuffer, this.f33532b);
            byteBuffer.putInt(this.f33533c.size());
            for (int i10 = 0; i10 < this.f33533c.size(); i10++) {
                this.f33533c.elementAt(i10).e(byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int g() {
            int length = this.f33532b.length() + 12;
            for (int i10 = 0; i10 < this.f33533c.size(); i10++) {
                length += this.f33533c.elementAt(i10).f();
            }
            return length;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(ByteBuffer byteBuffer) {
            this.f33531a = byteBuffer.getInt();
            this.f33532b = a.I(byteBuffer, byteBuffer.getInt());
            int i10 = byteBuffer.getInt();
            for (int i11 = 0; i11 < i10; i11++) {
                c cVar = new c((c) null);
                cVar.h(byteBuffer);
                this.f33533c.addElement(cVar);
            }
            if (this.f33531a == g()) {
                return;
            }
            throw new RuntimeException("Improperly handled Xtra tag: Sizes don't match ( " + this.f33531a + net.lingala.zip4j.util.e.F0 + g() + ") on " + this.f33532b);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f33532b);
            stringBuffer.append(" [");
            stringBuffer.append(this.f33531a);
            stringBuffer.append(net.lingala.zip4j.util.e.F0);
            stringBuffer.append(this.f33533c.size());
            stringBuffer.append("]:\n");
            for (int i10 = 0; i10 < this.f33533c.size(); i10++) {
                stringBuffer.append("  ");
                stringBuffer.append(this.f33533c.elementAt(i10).toString());
                stringBuffer.append("\n");
            }
            return stringBuffer.toString();
        }

        /* synthetic */ b(b bVar) {
            this();
        }

        /* synthetic */ b(String str, b bVar) {
            this(str);
        }

        private b(String str) {
            this();
            this.f33532b = str;
        }
    }

    public a(String str) {
        super(str);
        this.f33528o = false;
        this.f33529p = new Vector<>();
    }
}
