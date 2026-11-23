package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.googlecode.mp4parser.util.o;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f33652d = "seig";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte f33654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private UUID f33655c;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(20);
        com.coremedia.iso.i.h(byteBufferAllocate, this.f33653a ? 1 : 0);
        if (this.f33653a) {
            com.coremedia.iso.i.m(byteBufferAllocate, this.f33654b);
            byteBufferAllocate.put(o.b(this.f33655c));
        } else {
            byteBufferAllocate.put(new byte[17]);
        }
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        this.f33653a = com.coremedia.iso.g.k(byteBuffer) == 1;
        this.f33654b = (byte) com.coremedia.iso.g.p(byteBuffer);
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        this.f33655c = o.a(bArr);
    }

    public byte d() {
        return this.f33654b;
    }

    public UUID e() {
        return this.f33655c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f33653a != aVar.f33653a || this.f33654b != aVar.f33654b) {
            return false;
        }
        UUID uuid = this.f33655c;
        UUID uuid2 = aVar.f33655c;
        return uuid == null ? uuid2 == null : uuid.equals(uuid2);
    }

    public boolean f() {
        return this.f33653a;
    }

    public void g(boolean z10) {
        this.f33653a = z10;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f33652d;
    }

    public void h(int i10) {
        this.f33654b = (byte) i10;
    }

    public int hashCode() {
        int i10 = (((this.f33653a ? 7 : 19) * 31) + this.f33654b) * 31;
        UUID uuid = this.f33655c;
        return i10 + (uuid != null ? uuid.hashCode() : 0);
    }

    public void i(UUID uuid) {
        this.f33655c = uuid;
    }

    public String toString() {
        return "CencSampleEncryptionInformationGroupEntry{isEncrypted=" + this.f33653a + ", ivSize=" + ((int) this.f33654b) + ", kid=" + this.f33655c + '}';
    }
}
