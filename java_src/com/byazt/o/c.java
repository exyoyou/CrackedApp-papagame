package com.byazt.o;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 20})
public class c implements i {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17746da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17747i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f17748n;
    public int sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f17749t;
    public uj tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f17750u;
    public a uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f17751x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f17752z;
    public boolean ve = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0391c f17745a = new C0391c();

    public c() {
        sp();
    }

    private final void sp() {
        this.f17751x = -1;
        this.f17747i = -1;
        this.f17746da = -1;
        this.sl = -1;
        this.f17749t = null;
        this.f17750u = -1;
        this.yp = -1;
        this.f17752z = -1;
    }

    private final void x() throws IOException {
        if (this.uj == null) {
            tt.c(this.tt, 524291);
            this.tt.ve();
            this.uj = a.c(this.tt);
            this.f17745a.n();
            this.ve = true;
        }
        int i10 = this.f17751x;
        if (i10 == 1) {
            return;
        }
        sp();
        while (true) {
            if (this.sp) {
                this.sp = false;
                this.f17745a.a();
            }
            int i11 = 3;
            if (i10 == 3 && this.f17745a.uj() == 1 && this.f17745a.tt() == 0) {
                this.f17751x = 1;
                return;
            }
            int iTt = i10 == 0 ? 1048834 : this.tt.tt();
            if (iTt == 524672) {
                int iTt2 = this.tt.tt();
                if (iTt2 < 8 || iTt2 % 4 != 0) {
                    throw new IOException("Invalid resource ids size (" + iTt2 + ").");
                }
                this.f17748n = this.tt.tt((iTt2 / 4) - 2);
            } else {
                if (iTt < 1048832 || iTt > 1048836) {
                    throw new IOException("Invalid chunk type (" + iTt + ").");
                }
                if (iTt == 1048834 && i10 == -1) {
                    this.f17751x = 0;
                    return;
                }
                this.tt.ve();
                int iTt3 = this.tt.tt();
                this.tt.ve();
                if (iTt != 1048832 && iTt != 1048833) {
                    this.f17747i = iTt3;
                    if (iTt == 1048834) {
                        this.sl = this.tt.tt();
                        this.f17746da = this.tt.tt();
                        this.tt.ve();
                        int iTt4 = this.tt.tt();
                        this.f17750u = (iTt4 >>> 16) - 1;
                        int iTt5 = this.tt.tt();
                        this.f17752z = (iTt5 >>> 16) - 1;
                        this.yp = (65535 & iTt5) - 1;
                        this.f17749t = this.tt.tt((iTt4 & 65535) * 5);
                        while (true) {
                            int[] iArr = this.f17749t;
                            if (i11 >= iArr.length) {
                                this.f17745a.n();
                                this.f17751x = 2;
                                return;
                            } else {
                                iArr[i11] = iArr[i11] >>> 24;
                                i11 += 5;
                            }
                        }
                    } else {
                        if (iTt == 1048835) {
                            this.sl = this.tt.tt();
                            this.f17746da = this.tt.tt();
                            this.f17751x = 3;
                            this.sp = true;
                            return;
                        }
                        if (iTt == 1048836) {
                            this.f17746da = this.tt.tt();
                            this.tt.ve();
                            this.tt.ve();
                            this.f17751x = 4;
                            return;
                        }
                    }
                } else if (iTt == 1048832) {
                    this.f17745a.c(this.tt.tt(), this.tt.tt());
                } else {
                    this.tt.ve();
                    this.tt.ve();
                    this.f17745a.ve();
                }
            }
        }
    }

    @Override // com.byazt.o.sp
    public int a() {
        return -1;
    }

    public void c(InputStream inputStream) {
        c();
        if (inputStream != null) {
            this.tt = new uj(inputStream, false);
        }
    }

    public int n() {
        if (this.f17751x != 2) {
            return -1;
        }
        return this.f17749t.length / 5;
    }

    public int tt() throws x, IOException {
        if (this.tt == null) {
            throw new x("Parser is not opened.", this, null);
        }
        try {
            x();
            return this.f17751x;
        } catch (IOException e10) {
            c();
            throw e10;
        }
    }

    @Override // com.byazt.o.sp
    public String uj() {
        return "XML line #" + ve();
    }

    @Override // com.byazt.o.sp
    public int ve() {
        return this.f17747i;
    }

    /* JADX INFO: renamed from: com.byazt.o.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 44})
    private static final class C0391c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f17753c = new int[32];
        public int tt;
        public int ve;

        public final void a() {
            int i10 = this.tt;
            if (i10 != 0) {
                int i11 = i10 - 1;
                int i12 = this.f17753c[i11] * 2;
                if ((i11 - 1) - i12 != 0) {
                    this.tt = i10 - (i12 + 2);
                    this.ve--;
                }
            }
        }

        public final void c() {
            this.tt = 0;
            this.ve = 0;
        }

        public final void n() {
            c(2);
            int i10 = this.tt;
            int[] iArr = this.f17753c;
            iArr[i10] = 0;
            iArr[i10 + 1] = 0;
            this.tt = i10 + 2;
            this.ve++;
        }

        public final int tt() {
            int i10 = this.tt;
            if (i10 == 0) {
                return 0;
            }
            return this.f17753c[i10 - 1];
        }

        public final int uj() {
            return this.ve;
        }

        public final boolean ve() {
            int i10;
            int[] iArr;
            int i11;
            int i12 = this.tt;
            if (i12 == 0 || (i11 = (iArr = this.f17753c)[(i10 = i12 - 1)]) == 0) {
                return false;
            }
            int i13 = i11 - 1;
            int i14 = i10 - 2;
            iArr[i14] = i13;
            iArr[i14 - ((i13 * 2) + 1)] = i13;
            this.tt = i12 - 2;
            return true;
        }

        public final void c(int i10, int i11) {
            if (this.ve == 0) {
                n();
            }
            c(2);
            int i12 = this.tt;
            int i13 = i12 - 1;
            int[] iArr = this.f17753c;
            int i14 = iArr[i13];
            int i15 = (i13 - 1) - (i14 * 2);
            int i16 = i14 + 1;
            iArr[i15] = i16;
            iArr[i13] = i10;
            iArr[i13 + 1] = i11;
            iArr[i13 + 2] = i16;
            this.tt = i12 + 2;
        }

        private void c(int i10) {
            int[] iArr = this.f17753c;
            int length = iArr.length;
            int i11 = this.tt;
            int i12 = length - i11;
            if (i12 <= i10) {
                int[] iArr2 = new int[(iArr.length + i12) * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i11);
                this.f17753c = iArr2;
            }
        }
    }

    private final int n(int i10) {
        if (this.f17751x != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i11 = i10 * 5;
        if (i11 < this.f17749t.length) {
            return i11;
        }
        throw new IndexOutOfBoundsException("Invalid attribute index (" + i10 + ").");
    }

    public String uj(int i10) {
        int iN = n(i10);
        int[] iArr = this.f17749t;
        if (iArr[iN + 3] != 3) {
            return "";
        }
        return this.uj.c(iArr[iN + 2]);
    }

    public int ve(int i10) {
        return this.f17749t[n(i10) + 4];
    }

    public void c() {
        if (this.ve) {
            this.ve = false;
            this.tt.c();
            this.tt = null;
            this.uj = null;
            this.f17748n = null;
            this.f17745a.c();
            sp();
        }
    }

    public int tt(int i10) {
        return this.f17749t[n(i10) + 3];
    }

    public String c(int i10) {
        int i11 = this.f17749t[n(i10) + 1];
        return i11 == -1 ? "" : this.uj.c(i11);
    }
}
