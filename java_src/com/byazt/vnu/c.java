package com.byazt.vnu;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f21301a = Logger.getLogger(c.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f21302c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C0465c f21303n;
    public final x tt;
    public final n uj;
    public final sp ve;

    /* JADX INFO: renamed from: com.byazt.vnu.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 699, 44})
    public static class C0465c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final short f21304c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f21305n;
        public final int tt;
        public final int uj;
        public final int ve;

        public C0465c(short s10, int i10, int i11, int i12) {
            this.f21304c = s10;
            this.tt = i10;
            this.ve = i11;
            this.uj = i12;
            this.f21305n = i12 + i11;
        }

        public static C0465c c(sp spVar, n nVar) throws IOException {
            int iC = nVar.c();
            try {
                return new C0465c(spVar.readShort(), spVar.readShort(), spVar.readInt(), iC);
            } catch (EOFException unused) {
                return new C0465c((short) -1, 0, 0, nVar.c());
            }
        }
    }

    public c(byte[] bArr, x xVar) {
        n nVar = new n(new ByteArrayInputStream(bArr));
        this.uj = nVar;
        this.ve = new sp(new i(nVar));
        this.f21302c = bArr;
        this.tt = xVar;
    }

    private void a() throws IOException {
        tt(513);
        this.ve.readUnsignedByte();
        this.ve.readByte();
        this.ve.skipBytes(2);
        int i10 = this.ve.readInt();
        int i11 = this.ve.readInt();
        da();
        int i12 = (this.f21303n.uj + i11) - (i10 * 4);
        if (i12 != this.uj.c()) {
            f21301a.warning("Invalid data detected. Skipping: " + (i12 - this.uj.c()) + " byte(s)");
            this.ve.skipBytes(i12 - this.uj.c());
        }
        int[] iArrC = this.ve.c(i10);
        HashSet hashSet = new HashSet();
        for (int i13 : iArrC) {
            if (i13 != -1 && !hashSet.contains(Integer.valueOf(i13))) {
                sp();
                hashSet.add(Integer.valueOf(i13));
            }
        }
    }

    private void da() throws IOException {
        int i10 = this.ve.readInt();
        int i11 = 28;
        if (i10 < 28) {
            throw new RuntimeException("Config size < 28");
        }
        this.ve.readShort();
        this.ve.readShort();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readUnsignedShort();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.readByte();
        this.ve.skipBytes(1);
        this.ve.readShort();
        this.ve.readShort();
        this.ve.readShort();
        this.ve.skipBytes(2);
        if (i10 >= 32) {
            this.ve.readByte();
            this.ve.readByte();
            this.ve.readShort();
            i11 = 32;
        }
        if (i10 >= 36) {
            this.ve.readShort();
            this.ve.readShort();
            i11 = 36;
        }
        if (i10 >= 48) {
            c(4).toCharArray();
            c(8).toCharArray();
            i11 = 48;
        }
        if (i10 >= 52) {
            this.ve.readByte();
            this.ve.readByte();
            this.ve.skipBytes(2);
            i11 = 52;
        }
        if (i10 >= 56) {
            this.ve.skipBytes(4);
            i11 = 56;
        }
        int i12 = i10 - 56;
        if (i12 > 0) {
            byte[] bArr = new byte[i12];
            i11 += i12;
            this.ve.readFully(bArr);
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.equals(BigInteger.ZERO)) {
                f21301a.fine(String.format("Config flags size > %d, but exceeding bytes are all zero, so it should be ok.", 56));
            } else {
                f21301a.warning(String.format("Config flags size > %d. Size = %d. Exceeding bytes: 0x%X.", 56, Integer.valueOf(i10), bigInteger));
            }
        }
        int i13 = i10 - i11;
        if (i13 > 0) {
            this.ve.skipBytes(i13);
        }
    }

    private void i() throws IOException {
        this.ve.c((short) 8);
        this.ve.c((byte) 0);
        byte b10 = this.ve.readByte();
        int iC = sl.c(this.ve);
        int i10 = this.ve.readInt();
        if (b10 == 1) {
            sl.c(this.f21302c, i10, iC, this.tt);
        }
        if (b10 == 2) {
            sl.c(this.f21302c, i10, iC, this.tt);
        }
    }

    private void n() throws IOException {
        tt(514);
        this.ve.readUnsignedByte();
        this.ve.skipBytes(3);
        this.ve.skipBytes(this.ve.readInt() * 4);
    }

    private C0465c sl() throws IOException {
        C0465c c0465cC = C0465c.c(this.ve, this.uj);
        this.f21303n = c0465cC;
        return c0465cC;
    }

    private void sp() throws IOException {
        if (this.ve.readShort() < 0) {
            throw new RuntimeException("Entry size is under 0 bytes.");
        }
        short s10 = this.ve.readShort();
        this.ve.readInt();
        if ((s10 & 1) == 0) {
            i();
        } else {
            x();
        }
    }

    private void tt() throws IOException {
        tt(512);
        this.ve.readInt();
        this.ve.skipBytes(256);
        this.ve.c();
        this.ve.c();
        this.ve.c();
        this.ve.c();
        if (this.f21303n.tt == 288 && this.ve.readInt() > 0) {
            throw new RuntimeException("don't support");
        }
        t.c(this.ve);
        t.c(this.ve);
        sl();
        boolean z10 = true;
        while (z10) {
            short s10 = this.f21303n.f21304c;
            if (s10 == 514) {
                uj();
            } else if (s10 != 515) {
                z10 = false;
            } else {
                ve();
            }
        }
    }

    private void uj() throws IOException {
        n();
        short s10 = sl().f21304c;
        while (s10 == 514) {
            n();
            s10 = sl().f21304c;
        }
        while (s10 == 513) {
            a();
            if (this.uj.c() < this.f21303n.f21305n) {
                f21301a.warning("Unknown data detected. Skipping: " + (this.f21303n.f21305n - this.uj.c()) + " byte(s)");
                n nVar = this.uj;
                nVar.skip((long) (this.f21303n.f21305n - nVar.c()));
            }
            s10 = sl().f21304c;
        }
    }

    private void ve() throws IOException {
        tt(515);
        int i10 = this.ve.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            this.ve.readInt();
            this.ve.skipBytes(256);
        }
        while (sl().f21304c == 513) {
            uj();
        }
    }

    private void x() throws IOException {
        int iC = sl.c(this.ve);
        sl.c(this.f21302c, this.ve.readInt(), iC, this.tt);
        int i10 = this.ve.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            int iC2 = sl.c(this.ve);
            sl.c(this.f21302c, this.ve.readInt(), iC2, this.tt);
            i();
        }
    }

    public void c() throws IOException {
        ve(2);
        int i10 = this.ve.readInt();
        t.c(this.ve);
        sl();
        for (int i11 = 0; i11 < i10; i11++) {
            tt();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SimplifyVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v6 short, still in use, count: 1, list:
          (r3v6 short) from 0x0014: CAST (char) (r3v6 short)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:148)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:101)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyArgs(SimplifyVisitor.java:117)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyInsn(SimplifyVisitor.java:132)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyBlock(SimplifyVisitor.java:86)
        	at jadx.core.dex.visitors.SimplifyVisitor.visit(SimplifyVisitor.java:71)
        */
    private java.lang.String c(int r3) throws java.io.IOException {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 16
            r0.<init>(r1)
        L7:
            int r1 = r3 + (-1)
            if (r3 == 0) goto L1a
            com.byazt.vnu.sp r3 = r2.ve
            byte r3 = r3.readByte()
            short r3 = (short) r3
            if (r3 == 0) goto L1a
            char r3 = (char) r3
            r0.append(r3)
            r3 = r1
            goto L7
        L1a:
            com.byazt.vnu.sp r3 = r2.ve
            r3.skipBytes(r1)
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vnu.c.c(int):java.lang.String");
    }

    private void ve(int i10) throws IOException {
        sl();
        tt(i10);
    }

    private void tt(int i10) {
        if (this.f21303n.f21304c != i10) {
            throw new RuntimeException(String.format("Invalid chunk type: expected=0x%08x, got=0x%08x", Integer.valueOf(i10), Short.valueOf(this.f21303n.f21304c)));
        }
    }
}
