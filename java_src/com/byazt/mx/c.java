package com.byazt.mx;

import com.android.dex.DexFormat;
import com.byazt.is.uj;
import com.byazt.is.ve;
import com.byazt.uq.i;
import com.byazt.uq.sp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipException;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final uj f17029c;
    public final com.byazt.po.tt tt = new com.byazt.po.tt();

    public c(uj ujVar) {
        this.f17029c = ujVar;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0113 A[Catch: all -> 0x0138, TryCatch #3 {all -> 0x0138, blocks: (B:25:0x00c6, B:27:0x0128, B:26:0x0113), top: B:63:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x017a  */
    /* JADX WARN: Code duplicated, block: B:54:0x017f  */
    public void c(boolean z10, boolean z11) throws Throwable {
        File file;
        RandomAccessFile randomAccessFile;
        File file2;
        File file3 = new File(this.f17029c.ve().getAbsolutePath() + ".rm_tmp");
        if (file3.exists()) {
            file3.delete();
        }
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file3, e.f94694e0);
            try {
                RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.f17029c.ve(), "r");
                try {
                    List<ve> listC = this.f17029c.c().c();
                    HashSet hashSet = new HashSet();
                    Iterator<ve> it2 = listC.iterator();
                    int iVe = 0;
                    while (it2.hasNext()) {
                        try {
                            ve next = it2.next();
                            if (c(next, z10, z11)) {
                                hashSet.add(next.t());
                            } else {
                                long jU = next.u();
                                if ("resources.arsc".equals(next.t())) {
                                    long filePointer = randomAccessFile.getFilePointer() + next.uj();
                                    long jA = filePointer % 4096 == 0 ? 0L : 4096 - ((filePointer - ((long) next.a())) % 4096);
                                    if (jA != 0) {
                                        int iA = next.a();
                                        int i10 = (int) jA;
                                        next.tt(i10);
                                        file2 = file3;
                                        try {
                                            c(randomAccessFile3, randomAccessFile, jU, next.n(), next.t());
                                            this.f17029c.uj().c(randomAccessFile, i10);
                                            c(randomAccessFile3, randomAccessFile, jU + next.n() + 2, next.da(), next.t());
                                            randomAccessFile.write(new byte[i10]);
                                            c(randomAccessFile3, randomAccessFile, jU + next.n() + 2 + ((long) next.da()) + ((long) iA), next.tt(), next.t());
                                        } catch (Throwable th) {
                                            th = th;
                                            randomAccessFile2 = randomAccessFile3;
                                            file = file2;
                                            if (randomAccessFile2 != null) {
                                                randomAccessFile2.close();
                                            }
                                            if (randomAccessFile != null) {
                                                randomAccessFile.close();
                                            }
                                            c(file);
                                            throw th;
                                        }
                                    } else {
                                        file2 = file3;
                                        c(randomAccessFile3, randomAccessFile, jU, next.ve(), next.t());
                                    }
                                } else {
                                    file2 = file3;
                                    c(randomAccessFile3, randomAccessFile, jU, next.ve(), next.t());
                                }
                                long j10 = iVe;
                                next.uj(j10);
                                iVe = (int) (j10 + next.ve());
                                it2 = it2;
                                file3 = file2;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            file2 = file3;
                        }
                    }
                    File file4 = file3;
                    try {
                        this.f17029c.c().c(hashSet);
                        this.tt.c(this.f17029c, randomAccessFile);
                        file = file4;
                        try {
                            c(this.f17029c.ve(), file);
                            randomAccessFile3.close();
                            randomAccessFile.close();
                            c(file);
                        } catch (Throwable th3) {
                            th = th3;
                            randomAccessFile2 = randomAccessFile3;
                            if (randomAccessFile2 != null) {
                                randomAccessFile2.close();
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            c(file);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        file = file4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    file = file3;
                }
            } catch (Throwable th6) {
                th = th6;
                file = file3;
            }
        } catch (Throwable th7) {
            th = th7;
            file = file3;
            randomAccessFile = null;
        }
    }

    private boolean c(ve veVar, boolean z10, boolean z11) {
        if (z10) {
            if (i.n() && veVar.t().equals(DexFormat.DEX_IN_JAR_NAME)) {
                return false;
            }
            if (veVar.t().startsWith("classes") && veVar.t().endsWith(".dex")) {
                return true;
            }
        }
        return z11 && veVar.t().startsWith("lib/") && veVar.t().endsWith(".so");
    }

    public void c(File file) throws ZipException {
        if (file.exists() && !file.delete()) {
            throw new ZipException("Could not delete temporary file");
        }
    }

    public void c(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2, long j10, long j11, String str) throws IOException {
        sp.c(randomAccessFile, randomAccessFile2, j10, j10 + j11, str);
    }

    private void c(File file, File file2) throws ZipException {
        if (!file2.renameTo(file)) {
            throw new ZipException("cannot rename modified zip file");
        }
    }
}
