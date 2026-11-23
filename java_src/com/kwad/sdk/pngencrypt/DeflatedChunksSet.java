package com.kwad.sdk.pngencrypt;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public class DeflatedChunksSet {
    protected final boolean bjR;
    protected byte[] bkh;
    private int bki;
    private int bkj;
    private int bkk;
    State bkl;
    private final boolean bkm;
    private d bkn;
    private long bko;
    private long bkp;
    int bkq;
    int bkr;
    public final String bks;
    private Inflater inf;

    enum State {
        WAITING_FOR_INPUT,
        ROW_READY,
        DONE,
        CLOSED;

        public final boolean isClosed() {
            return this == CLOSED;
        }

        public final boolean isDone() {
            return this == DONE || this == CLOSED;
        }
    }

    public DeflatedChunksSet(String str, boolean z10, int i10, int i11, Inflater inflater, byte[] bArr) {
        State state = State.WAITING_FOR_INPUT;
        this.bkl = state;
        this.bko = 0L;
        this.bkp = 0L;
        this.bkq = -1;
        this.bkr = -1;
        this.bks = str;
        this.bjR = z10;
        this.bkj = i10;
        if (i10 <= 0 || i11 < i10) {
            throw new PngjException("bad inital row len " + i10);
        }
        if (inflater != null) {
            this.inf = inflater;
            this.bkm = false;
        } else {
            this.inf = new Inflater();
            this.bkm = true;
        }
        this.bkh = (bArr == null || bArr.length < i10) ? new byte[i11] : bArr;
        this.bkk = -1;
        this.bkl = state;
        try {
            fk(i10);
        } catch (RuntimeException e10) {
            close();
            throw e10;
        }
    }

    private boolean SQ() {
        State state;
        int iInflate;
        try {
            if (this.bkl == State.ROW_READY) {
                new PngjException("invalid state");
            }
            if (this.bkl.isDone()) {
                return false;
            }
            byte[] bArr = this.bkh;
            if (bArr == null || bArr.length < this.bkj) {
                this.bkh = new byte[this.bkj];
            }
            if (this.bki < this.bkj && !this.inf.finished()) {
                try {
                    Inflater inflater = this.inf;
                    byte[] bArr2 = this.bkh;
                    int i10 = this.bki;
                    iInflate = inflater.inflate(bArr2, i10, this.bkj - i10);
                } catch (DataFormatException e10) {
                    new PngjException("error decompressing zlib stream ", e10);
                    iInflate = 0;
                }
                this.bki += iInflate;
                this.bkp += (long) iInflate;
            }
            if (this.bki == this.bkj) {
                state = State.ROW_READY;
            } else if (this.inf.finished()) {
                state = this.bki > 0 ? State.ROW_READY : State.DONE;
            } else {
                state = State.WAITING_FOR_INPUT;
            }
            this.bkl = state;
            if (state != State.ROW_READY) {
                return false;
            }
            SR();
            return true;
        } catch (RuntimeException e11) {
            close();
            throw e11;
        }
    }

    public final void Gr() {
        if (isDone()) {
            return;
        }
        this.bkl = State.DONE;
    }

    protected void SR() {
    }

    protected int SS() {
        throw new PngjException("not implemented");
    }

    public final int ST() {
        return this.bkk;
    }

    protected final void a(d dVar) {
        if (!this.bks.equals(dVar.SD().f75331id)) {
            new PngjException("Bad chunk inside IdatSet, id:" + dVar.SD().f75331id + ", expected:" + this.bks);
        }
        this.bkn = dVar;
        int i10 = this.bkq + 1;
        this.bkq = i10;
        int i11 = this.bkr;
        if (i11 >= 0) {
            dVar.fj(i10 + i11);
        }
    }

    protected final void b(byte[] bArr, int i10, int i11) {
        this.bko += (long) i11;
        if (i11 <= 0 || this.bkl.isDone()) {
            return;
        }
        if (this.bkl == State.ROW_READY) {
            new PngjException("this should only be called if waitingForMoreInput");
        }
        if (this.inf.needsDictionary() || !this.inf.needsInput()) {
            throw new RuntimeException("should not happen");
        }
        this.inf.setInput(bArr, i10, i11);
        if (!this.bjR) {
            SQ();
            return;
        }
        while (SQ()) {
            fk(SS());
            isDone();
        }
    }

    public void close() {
        Inflater inflater;
        try {
            if (!this.bkl.isClosed()) {
                this.bkl = State.CLOSED;
            }
            if (!this.bkm || (inflater = this.inf) == null) {
                return;
            }
            inflater.end();
            this.inf = null;
        } catch (Exception unused) {
        }
    }

    public final void fk(int i10) {
        this.bki = 0;
        this.bkk++;
        if (i10 <= 0) {
            this.bkj = 0;
            Gr();
        } else {
            if (this.inf.finished()) {
                this.bkj = 0;
                Gr();
                return;
            }
            this.bkl = State.WAITING_FOR_INPUT;
            this.bkj = i10;
            if (this.bjR) {
                return;
            }
            SQ();
        }
    }

    public final boolean ho(String str) {
        if (this.bkl.isClosed()) {
            return false;
        }
        if (str.equals(this.bks)) {
            return true;
        }
        if (this.bkl.isDone()) {
            if (!this.bkl.isClosed()) {
                close();
            }
            return false;
        }
        throw new PngjException("Unexpected chunk " + str + " while " + this.bks + " set is not done");
    }

    public final boolean isClosed() {
        return this.bkl.isClosed();
    }

    public final boolean isDone() {
        return this.bkl.isDone();
    }

    public String toString() {
        return new StringBuilder("idatSet : " + this.bkn.SD().f75331id + " state=" + this.bkl + " rows=" + this.bkk + " bytes=" + this.bko + net.lingala.zip4j.util.e.F0 + this.bkp).toString();
    }
}
