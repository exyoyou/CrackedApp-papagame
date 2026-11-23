package com.kwad.sdk.utils.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.UShort;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static final int PAGE_SIZE;
    private static final int[] brN = {0, 1, 4, 4, 8, 8};
    private static final byte[] brO = new byte[0];
    private static final int brP;
    private static final int brQ;
    private static final int brR;
    private final String apn;
    private final Map<String, b> brS;
    private FileChannel brU;
    private FileChannel brV;
    private RandomAccessFile brW;
    private RandomAccessFile brX;
    private MappedByteBuffer brY;
    private MappedByteBuffer brZ;
    private com.kwad.sdk.utils.a.b bsa;
    private int bsb;
    private long bsc;
    private int bsf;
    private int bsg;
    private int bsh;
    private boolean bsi;
    private String bsj;
    private int bsk;
    private int bsm;
    private final String name;
    private final d brT = com.kwad.sdk.utils.a.d.bsx;
    private final Map<String, com.kwad.sdk.utils.a.a.b> bsd = new HashMap();
    private boolean bse = false;
    private final ArrayList<e> bsl = new ArrayList<>();
    private boolean bsn = true;
    private final Executor bso = new f();

    public static class a {
        static int bsq = 11;
        static final C0959c bsr = new C0959c(11);
        private final String apn;
        private int bsm = 0;
        private b[] bss;
        private final String name;

        public a(String str, String str2) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("path is empty");
            }
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            if (!str.endsWith(net.lingala.zip4j.util.e.F0)) {
                str = str + '/';
            }
            this.apn = str;
            this.name = str2;
        }

        public final c XC() {
            String str = this.apn + this.name;
            c cVarIz = C0959c.iz(str);
            if (cVarIz == null) {
                synchronized (a.class) {
                    cVarIz = C0959c.iz(str);
                    if (cVarIz == null) {
                        cVarIz = new c(this.apn, this.name, this.bss, this.bsm);
                        C0959c.b(str, cVarIz);
                    }
                }
            }
            Integer num = C0959c.bsw.get(str);
            if (num != null) {
                C0959c.bsw.put(str, Integer.valueOf(num.intValue() + 1));
            } else {
                C0959c.bsw.put(str, 1);
            }
            return cVarIz;
        }
    }

    public interface b<T> {
        String XD();

        T f(byte[] bArr, int i10, int i11);

        byte[] u(T t10);
    }

    /* JADX INFO: renamed from: com.kwad.sdk.utils.a.c$c, reason: collision with other inner class name */
    static class C0959c {
        private static Map<String, c> bst;
        private static List<String> bsu;
        private static int bsv;
        public static Map<String, Integer> bsw;

        public C0959c(int i10) {
            int size = getSize(i10);
            bst = new ConcurrentHashMap(size);
            bsw = new HashMap(size);
            bsu = new CopyOnWriteArrayList();
            bsv = i10;
        }

        public static void b(String str, c cVar) {
            if (bst == null) {
                bst = new ConcurrentHashMap(getSize(bsv));
            }
            if (bsu == null) {
                bsu = new CopyOnWriteArrayList();
            }
            if (bst.containsKey(str)) {
                bsu.remove(str);
                bsu.add(str);
            } else {
                bsu.add(str);
            }
            bst.put(str, cVar);
            if (bst.size() > bsv) {
                Integer num = bsw.get(bsu.get(0));
                if (num != null && num.intValue() != 2) {
                    gq(bsv + 1);
                    return;
                }
                c cVar2 = bst.get(bsu.get(0));
                if (cVar2 != null) {
                    cVar2.release();
                }
                bst.remove(bsu.get(0));
                bsu.remove(0);
            }
        }

        private static int getSize(int i10) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }

        private static void gq(int i10) {
            com.kwad.sdk.utils.a.d.bsx.i("Ks_UnionKv", "reSize:" + i10);
            bsv = i10;
        }

        public static c iz(String str) {
            if (bst == null) {
                bst = new ConcurrentHashMap(getSize(bsv));
            }
            if (bsu == null) {
                bsu = new CopyOnWriteArrayList();
            }
            c cVar = bst.get(str);
            if (cVar == null) {
                return null;
            }
            bsu.remove(str);
            bsu.add(str);
            return cVar;
        }

        public static void remove(String str) {
            List<String> list = bsu;
            if (list != null) {
                list.remove(str);
            }
            Map<String, c> map = bst;
            if (map != null) {
                map.remove(str);
            }
        }
    }

    public interface d {
        void a(String str, Exception exc);

        void e(String str, Throwable th);

        void i(String str, String str2);
    }

    static class e implements Comparable<e> {
        int end;
        int start;

        e(int i10, int i11) {
            this.start = i10;
            this.end = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e eVar) {
            return this.start - eVar.start;
        }
    }

    static {
        int iXF = h.XF();
        PAGE_SIZE = iXF;
        brP = iXF - 192;
        int iMax = Math.max(iXF << 1, 16384);
        brQ = iMax;
        brR = iMax << 1;
    }

    c(String str, String str2, b[] bVarArr, int i10) {
        this.apn = str;
        this.name = str2;
        this.bsm = i10;
        HashMap map = new HashMap();
        g gVar = g.bsE;
        map.put(gVar.XD(), gVar);
        if (bVarArr != null && bVarArr.length > 0) {
            for (b bVar : bVarArr) {
                String strXD = bVar.XD();
                if (map.containsKey(strXD)) {
                    iy("duplicate encoder tag:" + strXD);
                } else {
                    map.put(strXD, bVar);
                }
            }
        }
        this.brS = map;
        synchronized (this.bsd) {
            com.kwad.sdk.utils.a.d.getExecutor().execute(new Runnable() { // from class: com.kwad.sdk.utils.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.Xk();
                }
            });
            while (!this.bse) {
                try {
                    this.bsd.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    private int M(int i10, int i11) {
        if (i11 > 536870912) {
            IllegalStateException illegalStateException = new IllegalStateException("data size out of limit");
            if (com.kwad.library.a.a.pe.booleanValue()) {
                throw illegalStateException;
            }
            z(illegalStateException);
        }
        int i12 = PAGE_SIZE;
        if (i11 <= i12) {
            return i12;
        }
        while (i10 < i11) {
            int i13 = brQ;
            i10 = i10 <= i13 ? i10 << 1 : i10 + i13;
        }
        return i10;
    }

    private void N(int i10, int i11) {
        this.bsk += i11 - i10;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList != null) {
            arrayList.add(new e(i10, i11));
        }
    }

    private void XA() {
        ArrayList<e> arrayList = this.bsl;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size() - 1;
        e eVar = this.bsl.get(size);
        while (size > 0) {
            size--;
            e eVar2 = this.bsl.get(size);
            if (eVar.start == eVar2.end) {
                eVar2.end = eVar.end;
                this.bsl.remove(size + 1);
            }
            eVar = eVar2;
        }
    }

    private void XB() {
        this.bsk = 0;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Xk() {
        synchronized (this.bsd) {
            this.bse = true;
            this.bsd.notify();
        }
        long jNanoTime = System.nanoTime();
        if (!Xn() && this.bsm == 0) {
            Xl();
        }
        if (this.bsa == null) {
            this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
        }
        if (this.brT != null) {
            info("loading finish, data len:" + this.bsb + ", get keys:" + this.bsd.size() + ", use time:" + ((System.nanoTime() - jNanoTime) / C.MICROS_PER_SECOND) + " ms");
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0110  */
    /* JADX WARN: Code duplicated, block: B:49:0x019b  */
    private void Xl() {
        boolean z10;
        boolean z11;
        File file = new File(this.apn, this.name + ".kva");
        File file2 = new File(this.apn, this.name + ".kvb");
        try {
            if (h.ag(file) && h.ag(file2)) {
                this.brW = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                this.brX = new RandomAccessFile(file2, net.lingala.zip4j.util.e.f94694e0);
                long length = this.brW.length();
                long length2 = this.brX.length();
                this.brU = this.brW.getChannel();
                this.brV = this.brX.getChannel();
                try {
                    MappedByteBuffer map = this.brU.map(FileChannel.MapMode.READ_WRITE, 0L, length > 0 ? length : PAGE_SIZE);
                    this.brY = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.brV.map(FileChannel.MapMode.READ_WRITE, 0L, length2 > 0 ? length2 : PAGE_SIZE);
                    this.brZ = map2;
                    map2.order(byteOrder);
                    this.bsa = new com.kwad.sdk.utils.a.b(this.brY.capacity());
                    if (length == 0 && length2 == 0) {
                        this.bsb = 12;
                        return;
                    }
                    int i10 = this.brY.getInt();
                    long j10 = this.brY.getLong();
                    int i11 = this.brZ.getInt();
                    long j11 = this.brZ.getLong();
                    if (i10 < 0 || i10 > length - 12) {
                        z10 = false;
                    } else {
                        this.bsb = i10 + 12;
                        this.brY.rewind();
                        this.brY.get(this.bsa.brM, 0, this.bsb);
                        if (j10 == this.bsa.L(12, i10) && Xo() == 0) {
                            this.bsc = j10;
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    }
                    if (z10) {
                        if (length == length2 && Xm()) {
                            return;
                        }
                        g(new Exception("B file error"));
                        a(this.brY, this.brZ, this.bsb);
                        return;
                    }
                    if (i11 < 0 || i11 > length2 - 12) {
                        z11 = false;
                    } else {
                        this.bsd.clear();
                        XB();
                        this.bsb = i11 + 12;
                        if (this.bsa.brM.length != this.brZ.capacity()) {
                            this.bsa = new com.kwad.sdk.utils.a.b(this.brZ.capacity());
                        }
                        this.brZ.rewind();
                        this.brZ.get(this.bsa.brM, 0, this.bsb);
                        if (j11 == this.bsa.L(12, i11) && Xo() == 0) {
                            g(new Exception("A file error"));
                            a(this.brZ, this.brY, this.bsb);
                            this.bsc = j11;
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    }
                    if (z11) {
                        return;
                    }
                    iy("both files error");
                    Xu();
                    return;
                } catch (IOException e10) {
                    z(e10);
                    Xt();
                    j(file, file2);
                    return;
                }
            }
            z(new Exception("open file failed"));
            Xt();
        } catch (Throwable th) {
            z(th);
            Xv();
            Xt();
        }
    }

    private boolean Xm() {
        com.kwad.sdk.utils.a.b bVar = new com.kwad.sdk.utils.a.b(this.bsb);
        MappedByteBuffer mappedByteBuffer = this.brZ;
        if (mappedByteBuffer != null) {
            mappedByteBuffer.rewind();
            this.brZ.get(bVar.brM, 0, this.bsb);
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 == null) {
            return true;
        }
        byte[] bArr = bVar2.brM;
        byte[] bArr2 = bVar.brM;
        for (int i10 = 0; i10 < this.bsb; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private boolean Xn() {
        File file = new File(this.apn, this.name + ".kvc");
        File file2 = new File(this.apn, this.name + ".tmp");
        boolean z10 = false;
        try {
            if (!file.exists()) {
                file = file2.exists() ? file2 : null;
            }
            if (file != null) {
                if (!af(file)) {
                    Xv();
                    Xs();
                    return false;
                }
                if (this.bsm != 0) {
                    return false;
                }
                if (!a(this.bsa)) {
                    this.bsm = 1;
                    return false;
                }
                info("recover from c file");
                try {
                    Xs();
                    return true;
                } catch (Exception e10) {
                    e = e10;
                    z10 = true;
                    z(e);
                    return z10;
                }
            }
            if (this.bsm == 0) {
                return false;
            }
            File file3 = new File(this.apn, this.name + ".kva");
            File file4 = new File(this.apn, this.name + ".kvb");
            if (!file3.exists() || !file4.exists()) {
                return false;
            }
            j(file3, file4);
            return false;
        } catch (Exception e11) {
            e = e11;
        }
    }

    private int Xo() {
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        bVar.position = 12;
        while (true) {
            try {
                int i10 = bVar.position;
                int i11 = this.bsb;
                if (i10 >= i11) {
                    if (i10 == i11) {
                        return 0;
                    }
                    g(new Exception("parse dara failed"));
                    return -1;
                }
                byte b10 = bVar.get();
                byte b11 = (byte) (b10 & Utf8.REPLACEMENT_BYTE);
                if (b11 <= 0 || b11 > 8) {
                    throw new Exception("parse dara failed");
                }
                int i12 = bVar.get() & 255;
                if (b10 < 0) {
                    bVar.position += i12;
                    int i13 = b11 <= 5 ? brN[b11] : bVar.getShort() & UShort.MAX_VALUE;
                    com.kwad.sdk.utils.a.b bVar2 = this.bsa;
                    int i14 = bVar2.position + i13;
                    bVar2.position = i14;
                    N(i10, i14);
                } else {
                    String string = bVar.getString(i12);
                    int i15 = bVar.position;
                    boolean z10 = true;
                    if (b11 > 5) {
                        int i16 = 65535 & bVar.getShort();
                        if ((b10 & 64) == 0) {
                            z10 = false;
                        }
                        f(i16, z10);
                        if (b11 == 6) {
                            this.bsd.put(string, new com.kwad.sdk.utils.a.a.i(i10, i15 + 2, z10 ? bVar.gi(i16) : bVar.getString(i16), i16, z10));
                        } else if (b11 == 7) {
                            this.bsd.put(string, new com.kwad.sdk.utils.a.a.C0958a(i10, i15 + 2, z10 ? bVar.getString(i16) : bVar.getBytes(i16), i16, z10));
                        } else if (z10) {
                            this.bsd.put(string, new com.kwad.sdk.utils.a.a.h(i10, i15 + 2, bVar.getString(i16), i16, true));
                        } else {
                            int i17 = bVar.get() & 255;
                            String string2 = bVar.getString(i17);
                            b bVar3 = this.brS.get(string2);
                            int i18 = i16 - (i17 + 1);
                            if (i18 < 0) {
                                throw new Exception("parse dara failed");
                            }
                            if (bVar3 != null) {
                                try {
                                    Object objF = bVar3.f(bVar.brM, bVar.position, i18);
                                    if (objF != null) {
                                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.h(i10, i15 + 2, objF, i16, false));
                                    }
                                } catch (Exception e10) {
                                    z(e10);
                                }
                            } else {
                                iy("object with tag: " + string2 + " without encoder");
                            }
                            bVar.position += i18;
                        }
                    } else if (b11 == 1) {
                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.c(i15, bVar.get() == 1));
                    } else if (b11 == 2) {
                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.f(i15, bVar.getInt()));
                    } else if (b11 == 3) {
                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.e(i15, bVar.getFloat()));
                    } else if (b11 != 4) {
                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.d(i15, bVar.getDouble()));
                    } else {
                        this.bsd.put(string, new com.kwad.sdk.utils.a.a.g(i15, bVar.getLong()));
                    }
                }
            } catch (Exception e11) {
                g(e11);
                return -1;
            }
        }
    }

    private void Xp() {
        if (this.bsm == 0 || !this.bsn) {
            return;
        }
        Xq();
    }

    private boolean Xq() {
        int i10 = this.bsm;
        if (i10 == 1) {
            Executor executor = this.bso;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.kwad.sdk.utils.a.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.this.Xr();
                    }
                });
            }
        } else if (i10 == 2) {
            return Xr();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean Xr() {
        try {
            File file = new File(this.apn, this.name + ".tmp");
            if (h.ag(file)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                randomAccessFile.setLength(this.bsb);
                randomAccessFile.write(this.bsa.brM, 0, this.bsb);
                randomAccessFile.close();
                File file2 = new File(this.apn, this.name + ".kvc");
                if (!file2.exists() || file2.delete()) {
                    if (file.renameTo(file2)) {
                        return true;
                    }
                    g(new Exception("rename failed"));
                }
            }
        } catch (Exception e10) {
            z(e10);
        }
        return false;
    }

    private void Xs() {
        try {
            h.h(new File(this.apn, this.name + ".kvc"));
            h.h(new File(this.apn, this.name + ".tmp"));
        } catch (Exception e10) {
            z(e10);
        }
    }

    private void Xt() {
        this.bsm = 1;
        h.closeQuietly(this.brU);
        h.closeQuietly(this.brV);
        this.brU = null;
        this.brV = null;
        this.brY = null;
        this.brZ = null;
    }

    private void Xu() {
        if (this.bsm == 0) {
            try {
                a(this.brY);
                a(this.brZ);
            } catch (Throwable unused) {
                Xt();
            }
        }
        Xv();
        h.h(new File(this.apn + this.name));
    }

    private void Xv() {
        this.bsb = 12;
        this.bsc = 0L;
        XB();
        this.bsd.clear();
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null || bVar.brM.length != PAGE_SIZE) {
            this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
        } else {
            bVar.J(0, 0);
            this.bsa.h(4, 0L);
        }
    }

    private void Xw() {
        com.kwad.sdk.utils.a.b bVar;
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            this.bsc ^= bVar2.L(this.bsf, this.bsg);
        }
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putInt(0, -1);
                b(this.brY);
                this.brY.putInt(0, this.bsb - 12);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                b(mappedByteBuffer2);
            }
        } else {
            if (this.bsi && (bVar = this.bsa) != null) {
                bVar.J(0, this.bsb - 12);
            }
            com.kwad.sdk.utils.a.b bVar3 = this.bsa;
            if (bVar3 != null) {
                bVar3.h(4, this.bsc);
            }
        }
        this.bsi = false;
        this.bsh = 0;
        this.bsg = 0;
    }

    private int Xx() {
        int i10 = this.bsb;
        if (i10 <= 16384) {
            return 4096;
        }
        return i10 <= 65536 ? 8192 : 16384;
    }

    private void Xy() {
        gn(this.bsg);
        int i10 = this.bsb;
        this.bsf = i10;
        this.bsb = this.bsg + i10;
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            bVar.position = i10;
        }
        this.bsi = true;
    }

    private void Xz() {
        if (this.bsk < (Xx() << 1)) {
            if (this.bsl.size() < (this.bsb < 16384 ? 80 : 160)) {
                return;
            }
        }
        go(0);
    }

    private boolean af(File file) {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i10 = (int) length;
            int iM = M(PAGE_SIZE, i10);
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar == null || bVar.brM.length != iM) {
                bVar = new com.kwad.sdk.utils.a.b(new byte[iM]);
                this.bsa = bVar;
            } else {
                bVar.position = 0;
            }
            h.a(file, bVar.brM, i10);
            int i11 = bVar.getInt();
            long j10 = bVar.getLong();
            this.bsb = i11 + 12;
            if (i11 >= 0 && i11 <= i10 - 12 && j10 == bVar.L(12, i11) && Xo() == 0) {
                this.bsc = j10;
                return true;
            }
        }
        return false;
    }

    private static void f(int i10, boolean z10) {
        if (z10) {
            if (i10 != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i10 < 0 || i10 >= 2048) {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private static long g(long j10, int i10) {
        int i11 = (i10 & 7) << 3;
        return (j10 >>> (64 - i11)) | (j10 << i11);
    }

    private static void gm(int i10) {
        if (i10 > 255) {
            throw new IllegalArgumentException("key's length must less than 256");
        }
    }

    private void gn(int i10) {
        if (this.bsa == null) {
            this.bsa = new com.kwad.sdk.utils.a.b(PAGE_SIZE);
        }
        int length = this.bsa.brM.length;
        int i11 = this.bsb + i10;
        if (i11 >= length) {
            int i12 = this.bsk;
            if (i12 > i10 && i12 > Xx()) {
                go(i10);
                return;
            }
            int iM = M(length, i11);
            byte[] bArr = new byte[iM];
            System.arraycopy(this.bsa.brM, 0, bArr, 0, this.bsb);
            this.bsa.brM = bArr;
            if (this.bsm == 0) {
                try {
                    long j10 = iM;
                    MappedByteBuffer map = this.brU.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
                    this.brY = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.brV.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
                    this.brZ = map2;
                    map2.order(byteOrder);
                } catch (Throwable th) {
                    z(new Exception("map failed", th));
                    this.bsa.J(0, this.bsb - 12);
                    this.bsa.h(4, this.bsc);
                    Xt();
                }
            }
        }
    }

    private void go(int i10) {
        int i11;
        ArrayList<e> arrayList = this.bsl;
        if (arrayList == null || this.bsa == null) {
            return;
        }
        Collections.sort(arrayList);
        XA();
        e eVar = this.bsl.get(0);
        int i12 = eVar.start;
        int i13 = this.bsb;
        int i14 = i13 - this.bsk;
        int i15 = i14 - 12;
        int i16 = i14 - i12;
        int i17 = i13 - i12;
        boolean z10 = i15 < i17 + i16;
        if (!z10) {
            this.bsc ^= this.bsa.L(i12, i17);
        }
        int size = this.bsl.size();
        int i18 = size - 1;
        int i19 = this.bsb - this.bsl.get(i18).end;
        int[] iArr = new int[(i19 > 0 ? size : i18) << 1];
        int i20 = eVar.start;
        int i21 = eVar.end;
        for (int i22 = 1; i22 < size; i22++) {
            e eVar2 = this.bsl.get(i22);
            int i23 = eVar2.start - i21;
            byte[] bArr = this.bsa.brM;
            System.arraycopy(bArr, i21, bArr, i20, i23);
            int i24 = (i22 - 1) << 1;
            iArr[i24] = i21;
            iArr[i24 + 1] = i21 - i20;
            i20 += i23;
            i21 = eVar2.end;
        }
        if (i19 > 0) {
            byte[] bArr2 = this.bsa.brM;
            System.arraycopy(bArr2, i21, bArr2, i20, i19);
            int i25 = i18 << 1;
            iArr[i25] = i21;
            iArr[i25 + 1] = i21 - i20;
        }
        XB();
        if (z10) {
            this.bsc = this.bsa.L(12, i15);
        } else {
            this.bsc ^= this.bsa.L(i12, i16);
        }
        this.bsb = i14;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                i11 = 0;
                mappedByteBuffer.putInt(0, -1);
                this.brY.putLong(4, this.bsc);
                this.brY.position(i12);
                this.brY.put(this.bsa.brM, i12, i16);
                this.brY.putInt(0, i15);
            } else {
                i11 = 0;
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putInt(i11, i15);
                this.brZ.putLong(4, this.bsc);
                this.brZ.position(i12);
                this.brZ.put(this.bsa.brM, i12, i16);
            }
        } else {
            this.bsa.J(0, i15);
            this.bsa.h(4, this.bsc);
        }
        a(i12, iArr);
        int i26 = i14 + i10;
        if (this.bsa.brM.length - i26 > brR) {
            gp(i26);
        }
        info("gc finish");
    }

    private void gp(int i10) {
        int i11 = PAGE_SIZE;
        int iM = M(i11, i10 + i11);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            byte[] bArr = bVar.brM;
            if (iM >= bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[iM];
            System.arraycopy(bArr, 0, bArr2, 0, this.bsb);
            this.bsa.brM = bArr2;
        }
        if (this.bsm == 0) {
            try {
                long j10 = iM;
                this.brU.truncate(j10);
                MappedByteBuffer map = this.brU.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
                this.brY = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.brV.truncate(j10);
                MappedByteBuffer map2 = this.brV.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
                this.brZ = map2;
                map2.order(byteOrder);
            } catch (Throwable th) {
                z(new Exception("map failed", th));
                Xt();
            }
        }
        info("truncate finish");
    }

    private void info(String str) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.i(this.name, str);
        }
    }

    private static void ix(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    private void iy(String str) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.e(this.name, new Exception(str));
        }
    }

    private void j(File file, File file2) {
        try {
            if (af(file)) {
                return;
            }
        } catch (IOException e10) {
            g(e10);
        }
        Xv();
        try {
            if (af(file2)) {
                return;
            }
        } catch (Exception e11) {
            g(e11);
        }
        Xv();
    }

    private synchronized void putDouble(String str, double d10) {
        ix(str);
        com.kwad.sdk.utils.a.a.d dVar = (com.kwad.sdk.utils.a.a.d) this.bsd.get(str);
        if (dVar != null) {
            if (dVar.value != d10) {
                long jDoubleToRawLongBits = Double.doubleToRawLongBits(d10);
                long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(dVar.value) ^ jDoubleToRawLongBits;
                dVar.value = d10;
                b(jDoubleToRawLongBits, jDoubleToRawLongBits2, dVar.offset);
                Xp();
            }
            return;
        }
        a(str, (byte) 5);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            int i10 = bVar.position;
            bVar.bg(Double.doubleToRawLongBits(d10));
            Xw();
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            if (map != null) {
                map.put(str, new com.kwad.sdk.utils.a.a.d(i10, d10));
            }
        }
        Xp();
    }

    private synchronized void putFloat(String str, float f10) {
        ix(str);
        com.kwad.sdk.utils.a.a.e eVar = (com.kwad.sdk.utils.a.a.e) this.bsd.get(str);
        if (eVar != null) {
            if (eVar.value != f10) {
                int iFloatToRawIntBits = Float.floatToRawIntBits(f10);
                long jFloatToRawIntBits = ((long) (Float.floatToRawIntBits(eVar.value) ^ iFloatToRawIntBits)) & 4294967295L;
                eVar.value = f10;
                b(iFloatToRawIntBits, jFloatToRawIntBits, eVar.offset);
                Xp();
            }
            return;
        }
        a(str, (byte) 3);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            int i10 = bVar.position;
            bVar.gf(Float.floatToRawIntBits(f10));
            Xw();
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            if (map != null) {
                map.put(str, new com.kwad.sdk.utils.a.a.e(i10, f10));
            }
        }
        Xp();
    }

    private synchronized void putStringSet(String str, Set<String> set) {
        try {
            if (set == null) {
                remove(str);
            } else {
                a(str, set, g.bsE);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void u(String str, int i10) {
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return;
        }
        bVar.e((byte) i10);
        if (i10 != str.length()) {
            this.bsa.it(str);
            return;
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        a(str, 0, i10, bVar2.brM, bVar2.position);
        this.bsa.position += i10;
    }

    private void updateBytes(int i10, byte[] bArr) {
        int length = bArr.length;
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            this.bsc ^= bVar.L(i10, length);
            com.kwad.sdk.utils.a.b bVar2 = this.bsa;
            bVar2.position = i10;
            bVar2.p(bArr);
            this.bsc ^= this.bsa.L(i10, length);
        }
        if (this.bsm != 0) {
            com.kwad.sdk.utils.a.b bVar3 = this.bsa;
            if (bVar3 != null) {
                bVar3.h(4, this.bsc);
                return;
            }
            return;
        }
        MappedByteBuffer mappedByteBuffer = this.brY;
        if (mappedByteBuffer != null) {
            mappedByteBuffer.putInt(0, -1);
            this.brY.putLong(4, this.bsc);
            this.brY.position(i10);
            this.brY.put(bArr);
            this.brY.putInt(0, this.bsb - 12);
        }
        MappedByteBuffer mappedByteBuffer2 = this.brZ;
        if (mappedByteBuffer2 != null) {
            mappedByteBuffer2.putLong(4, this.bsc);
            this.brZ.position(i10);
            this.brZ.put(bArr);
        }
    }

    private void v(String str, int i10) {
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return;
        }
        bVar.a((short) i10);
        if (i10 != str.length()) {
            this.bsa.it(str);
        } else {
            com.kwad.sdk.utils.a.b bVar2 = this.bsa;
            a(str, 0, i10, bVar2.brM, bVar2.position);
        }
    }

    private void z(Throwable th) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.e(this.name, th);
        }
    }

    public final synchronized boolean contains(String str) {
        return this.bsd.containsKey(str);
    }

    public final synchronized Map<String, Object> getAll() {
        Object objValueOf;
        int size = this.bsd.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, com.kwad.sdk.utils.a.a.b> entry : this.bsd.entrySet()) {
            String key = entry.getKey();
            com.kwad.sdk.utils.a.a.b value = entry.getValue();
            switch (value.Xi()) {
                case 1:
                    objValueOf = Boolean.valueOf(((com.kwad.sdk.utils.a.a.c) value).value);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((com.kwad.sdk.utils.a.a.f) value).value);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((com.kwad.sdk.utils.a.a.e) value).value);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((com.kwad.sdk.utils.a.a.g) value).value);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((com.kwad.sdk.utils.a.a.d) value).value);
                    break;
                case 6:
                    com.kwad.sdk.utils.a.a.i iVar = (com.kwad.sdk.utils.a.a.i) value;
                    objValueOf = iVar.brK ? a(iVar) : iVar.value;
                    break;
                case 7:
                    com.kwad.sdk.utils.a.a.C0958a c0958a = (com.kwad.sdk.utils.a.a.C0958a) value;
                    objValueOf = c0958a.brK ? a(c0958a) : c0958a.value;
                    break;
                case 8:
                    com.kwad.sdk.utils.a.a.h hVar = (com.kwad.sdk.utils.a.a.h) value;
                    objValueOf = hVar.brK ? a(hVar) : ((com.kwad.sdk.utils.a.a.h) value).value;
                    break;
                default:
                    objValueOf = null;
                    break;
            }
            map.put(key, objValueOf);
        }
        return map;
    }

    public final synchronized boolean getBoolean(String str, boolean z10) {
        com.kwad.sdk.utils.a.a.c cVar = (com.kwad.sdk.utils.a.a.c) this.bsd.get(str);
        if (cVar == null) {
            return z10;
        }
        return cVar.value;
    }

    public final synchronized int getInt(String str, int i10) {
        com.kwad.sdk.utils.a.a.f fVar = (com.kwad.sdk.utils.a.a.f) this.bsd.get(str);
        if (fVar == null) {
            return i10;
        }
        return fVar.value;
    }

    public final synchronized long getLong(String str, long j10) {
        com.kwad.sdk.utils.a.a.g gVar = (com.kwad.sdk.utils.a.a.g) this.bsd.get(str);
        if (gVar == null) {
            return j10;
        }
        return gVar.value;
    }

    public final synchronized String getString(String str, String str2) {
        com.kwad.sdk.utils.a.a.i iVar = (com.kwad.sdk.utils.a.a.i) this.bsd.get(str);
        if (iVar == null) {
            return str2;
        }
        if (iVar.brK) {
            return a(iVar);
        }
        return (String) iVar.value;
    }

    public final void putAll(Map<String, Object> map) {
        a(map, (Map<Class, b>) null);
    }

    public final synchronized void putBoolean(String str, boolean z10) {
        ix(str);
        com.kwad.sdk.utils.a.a.c cVar = (com.kwad.sdk.utils.a.a.c) this.bsd.get(str);
        if (cVar != null) {
            if (cVar.value != z10) {
                cVar.value = z10;
                a((byte) (z10 ? 1 : 0), cVar.offset);
                Xp();
            }
            return;
        }
        a(str, (byte) 1);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            int i10 = bVar.position;
            bVar.e((byte) (z10 ? 1 : 0));
            Xw();
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            if (map != null) {
                map.put(str, new com.kwad.sdk.utils.a.a.c(i10, z10));
            }
        }
        Xp();
    }

    public final synchronized void putInt(String str, int i10) {
        ix(str);
        com.kwad.sdk.utils.a.a.f fVar = (com.kwad.sdk.utils.a.a.f) this.bsd.get(str);
        if (fVar != null) {
            int i11 = fVar.value;
            if (i11 != i10) {
                fVar.value = i10;
                b(i10, ((long) (i11 ^ i10)) & 4294967295L, fVar.offset);
                Xp();
            }
            return;
        }
        a(str, (byte) 2);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            int i12 = bVar.position;
            bVar.gf(i10);
            Xw();
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            if (map != null) {
                map.put(str, new com.kwad.sdk.utils.a.a.f(i12, i10));
            }
        }
        Xp();
    }

    public final synchronized void putLong(String str, long j10) {
        ix(str);
        com.kwad.sdk.utils.a.a.g gVar = (com.kwad.sdk.utils.a.a.g) this.bsd.get(str);
        if (gVar != null) {
            long j11 = gVar.value;
            if (j11 != j10) {
                gVar.value = j10;
                b(j10, j10 ^ j11, gVar.offset);
                Xp();
            }
            return;
        }
        a(str, (byte) 4);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            int i10 = bVar.position;
            bVar.bg(j10);
            Xw();
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            if (map != null) {
                map.put(str, new com.kwad.sdk.utils.a.a.g(i10, j10));
            }
        }
        Xp();
    }

    public final synchronized void putString(String str, String str2) {
        byte[] bArrIw;
        byte[] bArr;
        byte[] bArr2;
        ix(str);
        if (str2 == null) {
            remove(str);
            return;
        }
        com.kwad.sdk.utils.a.a.i iVar = (com.kwad.sdk.utils.a.a.i) this.bsd.get(str);
        if (str2.length() * 3 < 2048) {
            a(str, str2, iVar);
            return;
        }
        if (!str2.isEmpty()) {
            if (iVar == null && str2.length() < 2048) {
                int iIu = com.kwad.sdk.utils.a.b.iu(str2);
                bArr = new byte[iIu];
                if (iIu == str2.length()) {
                    a(str2, 0, iIu, bArr, 0);
                    bArr2 = bArr;
                } else {
                    bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
                }
            } else if (iVar == null || iVar.brK) {
                bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
            } else {
                int iIu2 = com.kwad.sdk.utils.a.b.iu(str2);
                bArr = new byte[iIu2];
                if (iIu2 == str2.length()) {
                    a(str2, 0, iIu2, bArr, 0);
                    bArr2 = bArr;
                } else {
                    bArrIw = com.kwad.sdk.utils.a.b.iw(str2);
                }
            }
            a(str, str2, bArr2, iVar, (byte) 6);
        }
        bArrIw = brO;
        bArr2 = bArrIw;
        a(str, str2, bArr2, iVar, (byte) 6);
    }

    public final void release() {
        h.closeQuietly(this.brW);
        h.closeQuietly(this.brX);
        h.closeQuietly(this.brU);
        h.closeQuietly(this.brV);
        this.brU = null;
        this.brV = null;
        this.brY = null;
        this.brZ = null;
        String str = this.apn + this.name;
        C0959c c0959c = a.bsr;
        C0959c.remove(str);
    }

    public final synchronized void remove(String str) {
        com.kwad.sdk.utils.a.a.b bVar = this.bsd.get(str);
        if (bVar != null) {
            this.bsd.remove(str);
            byte bXi = bVar.Xi();
            String str2 = null;
            if (bXi <= 5) {
                int iIu = com.kwad.sdk.utils.a.b.iu(str);
                int i10 = bVar.offset;
                a(bXi, i10 - (iIu + 2), i10 + brN[bXi]);
            } else {
                com.kwad.sdk.utils.a.a.j jVar = (com.kwad.sdk.utils.a.a.j) bVar;
                a(bXi, jVar.start, jVar.offset + jVar.brJ);
                if (jVar.brK) {
                    str2 = (String) jVar.value;
                }
            }
            byte b10 = (byte) (bXi | (-128));
            if (this.bsm == 0) {
                MappedByteBuffer mappedByteBuffer = this.brY;
                if (mappedByteBuffer != null) {
                    mappedByteBuffer.putLong(4, this.bsc);
                    this.brY.put(this.bsh, b10);
                }
                MappedByteBuffer mappedByteBuffer2 = this.brZ;
                if (mappedByteBuffer2 != null) {
                    mappedByteBuffer2.putLong(4, this.bsc);
                    this.brZ.put(this.bsh, b10);
                }
            } else {
                com.kwad.sdk.utils.a.b bVar2 = this.bsa;
                if (bVar2 != null) {
                    bVar2.h(4, this.bsc);
                }
            }
            this.bsh = 0;
            if (str2 != null) {
                h.h(new File(this.apn + this.name, str2));
            }
            Xz();
            Xp();
        }
    }

    public final synchronized String toString() {
        return "FastKV: path:" + this.apn + " name:" + this.name;
    }

    private boolean a(com.kwad.sdk.utils.a.b bVar) {
        int length = bVar.brM.length;
        File file = new File(this.apn, this.name + ".kva");
        File file2 = new File(this.apn, this.name + ".kvb");
        try {
            if (!h.ag(file) || !h.ag(file2)) {
                throw new Exception("open file failed");
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, net.lingala.zip4j.util.e.f94694e0);
            long j10 = length;
            randomAccessFile.setLength(j10);
            randomAccessFile2.setLength(j10);
            this.brU = randomAccessFile.getChannel();
            this.brV = randomAccessFile2.getChannel();
            MappedByteBuffer map = this.brU.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
            this.brY = map;
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            map.order(byteOrder);
            MappedByteBuffer map2 = this.brV.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
            this.brZ = map2;
            map2.order(byteOrder);
            this.brY.put(bVar.brM, 0, this.bsb);
            this.brZ.put(bVar.brM, 0, this.bsb);
            return true;
        } catch (Exception e10) {
            z(e10);
            return false;
        }
    }

    private synchronized void b(String str, byte[] bArr) {
        ix(str);
        if (bArr == null) {
            remove(str);
        } else {
            a(str, bArr, bArr, (com.kwad.sdk.utils.a.a.C0958a) this.bsd.get(str), (byte) 7);
        }
    }

    private void g(Exception exc) {
        d dVar = this.brT;
        if (dVar != null) {
            dVar.a(this.name, exc);
        }
    }

    private void b(MappedByteBuffer mappedByteBuffer) {
        if (mappedByteBuffer == null) {
            return;
        }
        if (this.bsi && mappedByteBuffer != this.brY) {
            mappedByteBuffer.putInt(0, this.bsb - 12);
        }
        mappedByteBuffer.putLong(4, this.bsc);
        int i10 = this.bsh;
        if (i10 != 0) {
            mappedByteBuffer.put(i10, this.bsa.brM[i10]);
        }
        if (this.bsg != 0) {
            mappedByteBuffer.position(this.bsf);
            mappedByteBuffer.put(this.bsa.brM, this.bsf, this.bsg);
        }
    }

    private void b(int i10, long j10, int i11) {
        long jG = g(j10, i11) ^ this.bsc;
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.putInt(i11, i10);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.putInt(i11, i10);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.J(i11, i10);
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i10) {
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                MappedByteBuffer map = (mappedByteBuffer2 == this.brZ ? this.brV : this.brU).map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.brZ) {
                    this.brZ = map;
                } else {
                    this.brY = map;
                }
                mappedByteBuffer2 = map;
            } catch (Exception e10) {
                z(e10);
                Xt();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i10);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void b(long j10, long j11, int i10) {
        long jG = g(j11, i10) ^ this.bsc;
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.putLong(i10, j10);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.putLong(i10, j10);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.h(i10, j10);
        }
    }

    private String a(com.kwad.sdk.utils.a.a.i iVar) {
        byte[] bytes;
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) iVar.value));
            String str = new String(bArrAh);
            return (bArrAh == null || TextUtils.isEmpty(str) || (bytes = com.kwad.sdk.utils.a.b.j(bArrAh, com.kwad.sdk.utils.a.b.iu(str)).getBytes()) == null || bytes.length == 0) ? "" : new String(bytes, com.kwad.sdk.utils.a.b.UTF_8);
        } catch (Exception e10) {
            z(e10);
        }
        return "";
    }

    private int b(String str, byte[] bArr, byte b10) {
        a(str, b10, bArr.length + 2);
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar == null) {
            return 0;
        }
        bVar.a((short) bArr.length);
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        int i10 = bVar2.position;
        bVar2.p(bArr);
        return i10;
    }

    private byte[] a(com.kwad.sdk.utils.a.a.C0958a c0958a) {
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) c0958a.value));
            return bArrAh != null ? bArrAh : brO;
        } catch (Exception e10) {
            z(e10);
            return brO;
        }
    }

    private Object a(com.kwad.sdk.utils.a.a.h hVar) {
        try {
            byte[] bArrAh = h.ah(new File(this.apn + this.name, (String) hVar.value));
            if (bArrAh != null) {
                int i10 = bArrAh[0] & 255;
                String str = new String(bArrAh, 1, i10, com.kwad.sdk.utils.a.b.UTF_8);
                b bVar = this.brS.get(str);
                if (bVar != null) {
                    int i11 = i10 + 1;
                    return bVar.f(bArrAh, i11, bArrAh.length - i11);
                }
                g(new Exception("No encoder for tag:" + str));
                return null;
            }
            g(new Exception("Read object data failed"));
            return null;
        } catch (Exception e10) {
            z(e10);
            return null;
        }
    }

    private synchronized <T> void a(String str, T t10, b<T> bVar) {
        byte[] bArrU;
        ix(str);
        if (bVar == null) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Encoder is null");
            if (!com.kwad.library.a.a.pe.booleanValue()) {
                z(illegalArgumentException);
                return;
            }
            throw illegalArgumentException;
        }
        String strXD = bVar.XD();
        if (!strXD.isEmpty() && strXD.length() <= 50) {
            if (!this.brS.containsKey(strXD)) {
                IllegalArgumentException illegalArgumentException2 = new IllegalArgumentException("Encoder hasn't been registered");
                if (!com.kwad.library.a.a.pe.booleanValue()) {
                    z(illegalArgumentException2);
                    return;
                }
                throw illegalArgumentException2;
            }
            if (t10 == null) {
                remove(str);
                return;
            }
            try {
                bArrU = bVar.u(t10);
            } catch (Exception e10) {
                z(e10);
                bArrU = null;
            }
            if (bArrU == null) {
                remove(str);
                return;
            }
            int iIu = com.kwad.sdk.utils.a.b.iu(strXD);
            com.kwad.sdk.utils.a.b bVar2 = new com.kwad.sdk.utils.a.b(iIu + 1 + bArrU.length);
            bVar2.e((byte) iIu);
            bVar2.it(strXD);
            bVar2.p(bArrU);
            a(str, t10, bVar2.brM, (com.kwad.sdk.utils.a.a.h) this.bsd.get(str), (byte) 8);
            return;
        }
        IllegalArgumentException illegalArgumentException3 = new IllegalArgumentException("Invalid encoder tag:" + strXD);
        if (!com.kwad.library.a.a.pe.booleanValue()) {
            z(illegalArgumentException3);
            return;
        }
        throw illegalArgumentException3;
    }

    private synchronized void a(Map<String, Object> map, Map<Class, b> map2) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && !key.isEmpty()) {
                if (value instanceof String) {
                    putString(key, (String) value);
                } else if (value instanceof Boolean) {
                    putBoolean(key, ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    putInt(key, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    putLong(key, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    putFloat(key, ((Float) value).floatValue());
                } else if (value instanceof Double) {
                    putDouble(key, ((Double) value).doubleValue());
                } else if (value instanceof Set) {
                    Set set = (Set) value;
                    if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                        putStringSet(key, (Set) value);
                    }
                } else if (value instanceof byte[]) {
                    b(key, (byte[]) value);
                } else {
                    g(new Exception("missing encoders"));
                }
            }
        }
    }

    private void a(MappedByteBuffer mappedByteBuffer) throws IOException {
        if (mappedByteBuffer == null) {
            return;
        }
        int iCapacity = mappedByteBuffer.capacity();
        int i10 = PAGE_SIZE;
        if (iCapacity != i10) {
            FileChannel fileChannel = mappedByteBuffer == this.brY ? this.brU : this.brV;
            if (fileChannel == null) {
                return;
            }
            fileChannel.truncate(i10);
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, i10);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.brY) {
                this.brY = map;
            } else {
                this.brZ = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void a(String str, byte b10) {
        a(str, b10, brN[b10]);
    }

    private void a(String str, byte b10, int i10) {
        int iIu = com.kwad.sdk.utils.a.b.iu(str);
        gm(iIu);
        this.bsg = iIu + 2 + i10;
        Xy();
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null) {
            bVar.e(b10);
        }
        u(str, iIu);
    }

    private void a(byte b10, int i10) {
        long jG = this.bsc ^ g(1L, i10);
        this.bsc = jG;
        if (this.bsm == 0) {
            MappedByteBuffer mappedByteBuffer = this.brY;
            if (mappedByteBuffer != null) {
                mappedByteBuffer.putLong(4, jG);
                this.brY.put(i10, b10);
            }
            MappedByteBuffer mappedByteBuffer2 = this.brZ;
            if (mappedByteBuffer2 != null) {
                mappedByteBuffer2.putLong(4, this.bsc);
                this.brZ.put(i10, b10);
            }
        } else {
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.h(4, jG);
            }
        }
        com.kwad.sdk.utils.a.b bVar2 = this.bsa;
        if (bVar2 != null) {
            bVar2.brM[i10] = b10;
        }
    }

    private static void a(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13;
        if (i11 <= str.length() && i11 >= 0) {
            int i14 = 0;
            while (i14 < i11) {
                int i15 = i14 + 1;
                char cCharAt = str.charAt(i14);
                if (cCharAt < 128) {
                    i13 = i12 + 1;
                    bArr[i12] = (byte) (((byte) cCharAt) ^ 1);
                } else {
                    i13 = i12 + 1;
                    bArr[i12] = (byte) cCharAt;
                }
                i14 = i15;
                i12 = i13;
            }
        }
    }

    private void a(String str, String str2, com.kwad.sdk.utils.a.a.i iVar) {
        int iIu = com.kwad.sdk.utils.a.b.iu(str2);
        if (iVar == null) {
            int iIu2 = com.kwad.sdk.utils.a.b.iu(str);
            gm(iIu2);
            int i10 = iIu2 + 4;
            this.bsg = i10 + iIu;
            Xy();
            com.kwad.sdk.utils.a.b bVar = this.bsa;
            if (bVar != null) {
                bVar.e((byte) 6);
            }
            u(str, iIu2);
            v(str2, iIu);
            Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
            int i11 = this.bsf;
            map.put(str, new com.kwad.sdk.utils.a.a.i(i11, i11 + i10, str2, iIu, false));
            Xw();
        } else {
            int i12 = iVar.offset;
            int i13 = i12 - iVar.start;
            int i14 = iVar.brJ;
            boolean z10 = false;
            String str3 = null;
            if (i14 == iIu) {
                this.bsc ^= this.bsa.L(i12, i14);
                if (iIu == str2.length()) {
                    a(str2, 0, iIu, this.bsa.brM, iVar.offset);
                } else {
                    com.kwad.sdk.utils.a.b bVar2 = this.bsa;
                    if (bVar2 != null) {
                        bVar2.position = iVar.offset;
                        bVar2.it(str2);
                    }
                }
                this.bsf = iVar.offset;
                this.bsg = iIu;
            } else {
                this.bsg = i13 + iIu;
                Xy();
                com.kwad.sdk.utils.a.b bVar3 = this.bsa;
                if (bVar3 != null) {
                    bVar3.e((byte) 6);
                }
                int i15 = i13 - 3;
                com.kwad.sdk.utils.a.b bVar4 = this.bsa;
                if (bVar4 != null) {
                    byte[] bArr = bVar4.brM;
                    System.arraycopy(bArr, iVar.start + 1, bArr, bVar4.position, i15);
                }
                com.kwad.sdk.utils.a.b bVar5 = this.bsa;
                if (bVar5 != null) {
                    bVar5.position += i15;
                }
                v(str2, iIu);
                a((byte) 6, iVar.start, iVar.offset + iVar.brJ);
                str3 = iVar.brK ? (String) iVar.value : null;
                iVar.brK = false;
                int i16 = this.bsf;
                iVar.start = i16;
                iVar.offset = i16 + i13;
                iVar.brJ = iIu;
                z10 = true;
            }
            iVar.value = str2;
            Xw();
            if (z10) {
                Xz();
            }
            if (str3 != null) {
                h.h(new File(this.apn + this.name, str3));
            }
        }
        Xp();
    }

    private void a(String str, Object obj, byte[] bArr, com.kwad.sdk.utils.a.a.j jVar, byte b10) {
        if (jVar == null) {
            a(str, obj, bArr, b10);
        } else if (!jVar.brK && jVar.brJ == bArr.length) {
            updateBytes(jVar.offset, bArr);
            jVar.value = obj;
        } else {
            a(str, obj, bArr, jVar);
        }
        Xp();
    }

    private void a(String str, Object obj, byte[] bArr, byte b10) {
        Object obj2;
        int length;
        com.kwad.sdk.utils.a.a.b hVar;
        int iA = a(str, bArr, b10);
        if (iA != 0) {
            String str2 = this.bsj;
            boolean z10 = str2 != null;
            if (z10) {
                this.bsj = null;
                obj2 = str2;
                length = 32;
            } else {
                obj2 = obj;
                length = bArr.length;
            }
            if (b10 == 6) {
                hVar = new com.kwad.sdk.utils.a.a.i(this.bsf, iA, (String) obj2, length, z10);
            } else if (b10 == 7) {
                hVar = new com.kwad.sdk.utils.a.a.C0958a(this.bsf, iA, obj2, length, z10);
            } else {
                hVar = new com.kwad.sdk.utils.a.a.h(this.bsf, iA, obj2, length, z10);
            }
            this.bsd.put(str, hVar);
            Xw();
        }
    }

    private void a(String str, Object obj, byte[] bArr, @NonNull com.kwad.sdk.utils.a.a.j jVar) {
        int iA = a(str, bArr, jVar.Xi());
        if (iA != 0) {
            String str2 = jVar.brK ? (String) jVar.value : null;
            a(jVar.Xi(), jVar.start, jVar.offset + jVar.brJ);
            String str3 = this.bsj;
            boolean z10 = str3 != null;
            jVar.start = this.bsf;
            jVar.offset = iA;
            jVar.brK = z10;
            if (z10) {
                jVar.value = str3;
                jVar.brJ = 32;
                this.bsj = null;
            } else {
                jVar.value = obj;
                jVar.brJ = bArr.length;
            }
            Xw();
            Xz();
            if (str2 != null) {
                h.h(new File(this.apn + this.name, str2));
            }
        }
    }

    private int a(String str, byte[] bArr, byte b10) {
        this.bsj = null;
        if (bArr.length < 2048) {
            return b(str, bArr, b10);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String strXE = h.XE();
        if (h.a(new File(this.apn + this.name, strXE), bArr)) {
            this.bsj = strXE;
            byte[] bArr2 = new byte[32];
            strXE.getBytes(0, 32, bArr2, 0);
            return b(str, bArr2, (byte) (b10 | 64));
        }
        iy("save large value failed");
        return 0;
    }

    private void a(byte b10, int i10, int i11) {
        byte[] bArr;
        N(i10, i11);
        byte b11 = (byte) (b10 | (-128));
        com.kwad.sdk.utils.a.b bVar = this.bsa;
        if (bVar != null && (bArr = bVar.brM) != null) {
            this.bsc = ((((long) (bArr[i10] ^ b11)) & 255) << ((i10 & 7) << 3)) ^ this.bsc;
            bArr[i10] = b11;
        }
        this.bsh = i10;
    }

    private void a(int i10, int[] iArr) {
        Map<String, com.kwad.sdk.utils.a.a.b> map = this.bsd;
        if (map == null) {
            return;
        }
        for (com.kwad.sdk.utils.a.a.b bVar : map.values()) {
            int i11 = bVar.offset;
            if (i11 > i10) {
                int i12 = iArr[(h.binarySearch(iArr, i11) << 1) + 1];
                bVar.offset -= i12;
                if (bVar.Xi() >= 6) {
                    ((com.kwad.sdk.utils.a.a.j) bVar).start -= i12;
                }
            }
        }
    }
}
