package com.coremedia.iso.boxes.fragment;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes9.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f24800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte f24801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte f24802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte f24803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte f24804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte f24805f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f24806g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f24807h;

    public g() {
    }

    public void a(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.i(byteBuffer, ((long) (this.f24800a << BinaryMemcacheOpcodes.TOUCH)) | 0 | ((long) (this.f24801b << 26)) | ((long) (this.f24802c << BinaryMemcacheOpcodes.FLUSHQ)) | ((long) (this.f24803d << BinaryMemcacheOpcodes.DECREMENTQ)) | ((long) (this.f24804e << BinaryMemcacheOpcodes.DELETEQ)) | ((long) (this.f24805f << BinaryMemcacheOpcodes.SETQ)) | ((long) ((this.f24806g ? 1 : 0) << 16)) | ((long) this.f24807h));
    }

    public int b() {
        return this.f24800a;
    }

    public int c() {
        return this.f24807h;
    }

    public int d() {
        return this.f24802c;
    }

    public int e() {
        return this.f24804e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f24801b == gVar.f24801b && this.f24800a == gVar.f24800a && this.f24807h == gVar.f24807h && this.f24802c == gVar.f24802c && this.f24804e == gVar.f24804e && this.f24803d == gVar.f24803d && this.f24806g == gVar.f24806g && this.f24805f == gVar.f24805f;
    }

    public int f() {
        return this.f24803d;
    }

    public int g() {
        return this.f24805f;
    }

    public boolean h() {
        return this.f24806g;
    }

    public int hashCode() {
        return (((((((((((((this.f24800a * 31) + this.f24801b) * 31) + this.f24802c) * 31) + this.f24803d) * 31) + this.f24804e) * 31) + this.f24805f) * 31) + (this.f24806g ? 1 : 0)) * 31) + this.f24807h;
    }

    public void i(int i10) {
        this.f24800a = (byte) i10;
    }

    public void j(int i10) {
        this.f24807h = i10;
    }

    public void k(int i10) {
        this.f24802c = (byte) i10;
    }

    public void l(int i10) {
        this.f24804e = (byte) i10;
    }

    public void m(int i10) {
        this.f24803d = (byte) i10;
    }

    public void n(boolean z10) {
        this.f24806g = z10;
    }

    public void o(int i10) {
        this.f24805f = (byte) i10;
    }

    public String toString() {
        return "SampleFlags{reserved=" + ((int) this.f24800a) + ", isLeading=" + ((int) this.f24801b) + ", depOn=" + ((int) this.f24802c) + ", isDepOn=" + ((int) this.f24803d) + ", hasRedundancy=" + ((int) this.f24804e) + ", padValue=" + ((int) this.f24805f) + ", isDiffSample=" + this.f24806g + ", degradPrio=" + this.f24807h + '}';
    }

    public g(ByteBuffer byteBuffer) {
        long jL = com.coremedia.iso.g.l(byteBuffer);
        this.f24800a = (byte) (((-268435456) & jL) >> 28);
        this.f24801b = (byte) ((201326592 & jL) >> 26);
        this.f24802c = (byte) ((50331648 & jL) >> 24);
        this.f24803d = (byte) ((12582912 & jL) >> 22);
        this.f24804e = (byte) ((3145728 & jL) >> 20);
        this.f24805f = (byte) ((917504 & jL) >> 17);
        this.f24806g = ((65536 & jL) >> 16) > 0;
        this.f24807h = (int) (jL & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }
}
