package com.byazt.vnu;

import java.io.DataInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 34})
public abstract class a implements DataInput {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f21300c;

    public a(i iVar) {
        this.f21300c = iVar;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        return this.f21300c.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        return this.f21300c.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return this.f21300c.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return this.f21300c.readDouble();
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return this.f21300c.readFloat();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f21300c.readFully(bArr, i10, i11);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        return this.f21300c.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        return this.f21300c.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        return this.f21300c.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        return this.f21300c.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return this.f21300c.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        return this.f21300c.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return this.f21300c.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i10) throws IOException {
        return this.f21300c.skipBytes(i10);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        this.f21300c.readFully(bArr);
    }
}
