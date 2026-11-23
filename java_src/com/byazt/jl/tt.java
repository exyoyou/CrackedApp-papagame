package com.byazt.jl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import com.byazt.nr.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 13})
public class tt extends i<com.byazt.on.c, com.byazt.on.tt> {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final c f15886da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f15887i;
    public com.byazt.on.tt sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15888x;

    @com.byazt.zqa.c(c = {0, 1, 157, 194})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte f15889c;
        public Rect tt;
        public ByteBuffer ve;

        private c() {
            this.tt = new Rect();
        }
    }

    public tt(com.byazt.zt.tt ttVar, i.c cVar) {
        super(ttVar, cVar);
        Paint paint = new Paint();
        this.f15887i = paint;
        this.f15886da = new c();
        paint.setAntiAlias(true);
    }

    @Override // com.byazt.jl.i
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.byazt.on.tt uj() {
        if (this.sp == null) {
            this.sp = new com.byazt.on.tt();
        }
        return this.sp;
    }

    @Override // com.byazt.jl.i
    public int tt() {
        return this.f15888x;
    }

    @Override // com.byazt.jl.i
    public void ve() {
        this.f15886da.ve = null;
        this.sp = null;
    }

    @Override // com.byazt.jl.i
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.byazt.on.c ve(com.byazt.on.a aVar) {
        return new com.byazt.on.c(aVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.byazt.jl.i
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Rect tt(com.byazt.on.c cVar) throws IOException {
        List<n> listC = uj.c(cVar);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[0];
        ve veVar = null;
        boolean z10 = false;
        int i10 = 0;
        int i11 = 0;
        for (n nVar : listC) {
            if (nVar instanceof com.byazt.jl.c) {
                this.f15888x = ((com.byazt.jl.c) nVar).ve;
                z10 = true;
            } else if (nVar instanceof a) {
                veVar = new ve(cVar, (a) nVar);
                veVar.f15895n = arrayList;
                veVar.ve = bArr;
                this.f15860c.add(veVar);
            } else if (nVar instanceof sp) {
                if (veVar != null) {
                    veVar.uj.add(nVar);
                }
            } else if (nVar instanceof da) {
                if (!z10) {
                    u uVar = new u(cVar);
                    uVar.f15900x = i10;
                    uVar.f15897i = i11;
                    this.f15860c.add(uVar);
                    this.f15888x = 1;
                    break;
                }
                if (veVar != null) {
                    veVar.uj.add(nVar);
                }
            } else if (nVar instanceof t) {
                t tVar = (t) nVar;
                i10 = tVar.tt;
                i11 = tVar.ve;
                bArr = tVar.f15885x;
            } else if (!(nVar instanceof sl)) {
                arrayList.add(nVar);
            }
        }
        int i12 = i10 * i11;
        int i13 = this.ve;
        this.f15864n = ByteBuffer.allocate(((i12 / (i13 * i13)) + 1) * 4);
        c cVar2 = this.f15886da;
        int i14 = this.ve;
        cVar2.ve = ByteBuffer.allocate(((i12 / (i14 * i14)) + 1) * 4);
        return new Rect(0, 0, i10, i11);
    }

    @Override // com.byazt.jl.i
    public void c(x<com.byazt.on.c, com.byazt.on.tt> xVar) {
        if (xVar == null || this.f15859a == null) {
            return;
        }
        try {
            Bitmap bitmapC = c(this.f15859a.width() / this.ve, this.f15859a.height() / this.ve);
            Canvas canvas = this.uj.get(bitmapC);
            if (canvas == null) {
                canvas = new Canvas(bitmapC);
                this.uj.put(bitmapC, canvas);
            }
            Canvas canvas2 = canvas;
            if (xVar instanceof ve) {
                this.f15864n.rewind();
                bitmapC.copyPixelsFromBuffer(this.f15864n);
                if (this.tt == 0) {
                    canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                } else {
                    canvas2.save();
                    canvas2.clipRect(this.f15886da.tt);
                    c cVar = this.f15886da;
                    byte b10 = cVar.f15889c;
                    if (b10 == 1) {
                        canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                    } else if (b10 == 2) {
                        cVar.ve.rewind();
                        bitmapC.copyPixelsFromBuffer(this.f15886da.ve);
                    }
                    canvas2.restore();
                }
                if (((ve) xVar).tt == 2) {
                    c cVar2 = this.f15886da;
                    if (cVar2.f15889c != 2) {
                        cVar2.ve.rewind();
                        bitmapC.copyPixelsToBuffer(this.f15886da.ve);
                    }
                }
                this.f15886da.f15889c = ((ve) xVar).tt;
                canvas2.save();
                if (((ve) xVar).f15894c == 0) {
                    int i10 = xVar.f15896da;
                    int i11 = this.ve;
                    int i12 = xVar.sl;
                    canvas2.clipRect(i10 / i11, i12 / i11, (i10 + xVar.f15900x) / i11, (i12 + xVar.f15897i) / i11);
                    canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                }
                Rect rect = this.f15886da.tt;
                int i13 = xVar.f15896da;
                int i14 = this.ve;
                int i15 = xVar.sl;
                rect.set(i13 / i14, i15 / i14, (i13 + xVar.f15900x) / i14, (i15 + xVar.f15897i) / i14);
                canvas2.restore();
            }
            Bitmap bitmapC2 = c(xVar.f15900x, xVar.f15897i);
            c(xVar.c(canvas2, this.f15887i, this.ve, bitmapC2, uj()));
            c(bitmapC2);
            this.f15864n.rewind();
            bitmapC.copyPixelsToBuffer(this.f15864n);
            c(bitmapC);
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
