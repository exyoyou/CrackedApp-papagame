package cn.fly.tcp.b;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a implements Serializable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Charset f1562e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1566d;

    public a(int i10) {
        this(i10, null);
    }

    static a b(ByteBuffer byteBuffer) throws IllegalArgumentException {
        int i10;
        int iPosition = byteBuffer.position();
        a aVarC = c(byteBuffer);
        if (aVarC != null && (i10 = aVarC.f1563a) > 0) {
            if (i10 > byteBuffer.remaining()) {
                return null;
            }
            byte[] bArr = new byte[aVarC.f1563a];
            byteBuffer.get(bArr);
            aVarC.f1566d = new String(bArr, f1562e);
        }
        return aVarC;
    }

    static a c(ByteBuffer byteBuffer) throws IllegalArgumentException {
        if (byteBuffer.get() != 1) {
            return null;
        }
        int i10 = byteBuffer.getInt();
        if (i10 < 0) {
            throw new IllegalArgumentException("invalid tcp body length: " + i10);
        }
        int i11 = byteBuffer.getInt();
        if (i11 > 0 && i11 <= 9999) {
            return new a(i10, i11, byteBuffer.getLong(), null);
        }
        throw new IllegalArgumentException("invalid tcp message type: " + i11);
    }

    public byte[] a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(b());
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.putInt(this.f1563a);
        byteBufferAllocate.putInt(this.f1564b);
        byteBufferAllocate.putLong(this.f1565c);
        String str = this.f1566d;
        if (str != null) {
            byteBufferAllocate.put(str.getBytes(f1562e));
        }
        return byteBufferAllocate.array();
    }

    public a(int i10, String str) {
        this(str != null ? str.getBytes(f1562e).length : 0, i10, 0L, str);
    }

    a(int i10, int i11, long j10, String str) {
        this.f1563a = i10;
        this.f1564b = i11;
        this.f1565c = j10;
        this.f1566d = str;
    }

    public static List<a> a(ByteBuffer byteBuffer) throws IllegalArgumentException {
        a aVarB;
        ArrayList arrayList = new ArrayList();
        while (byteBuffer.remaining() >= 17 && (aVarB = b(byteBuffer)) != null) {
            arrayList.add(aVarB);
        }
        return arrayList;
    }

    public int b() {
        return this.f1563a + 17;
    }
}
