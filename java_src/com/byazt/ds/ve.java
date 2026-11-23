package com.byazt.ds;

import android.os.Build;
import android.os.Environment;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import net.lingala.zip4j.util.e;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 54})
public abstract class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13165c;
    public boolean tt;
    public boolean uj;
    public boolean ve;

    public ve(boolean z10, boolean z11) {
        this.tt = z10;
        this.ve = z11;
        this.uj = false;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:? A[SYNTHETIC] */
    public String c(String str, String str2) throws Throwable {
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        int i10;
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return str2;
        }
        String str3 = Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.snssdk.api.embed/cache";
        String str4 = str3 + e.F0 + str;
        FileLock fileLockLock = null;
        try {
            File file = new File(str3);
            if (!file.exists() && !file.mkdirs()) {
                return str2;
            }
            File file2 = new File(str4);
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rwd");
            try {
                fileLockLock = randomAccessFile2.getChannel().lock();
                if (file2.isFile() && (i10 = randomAccessFile2.read((bArr = new byte[129]), 0, 129)) > 0 && i10 < 129) {
                    String str5 = new String(bArr, 0, i10, "UTF-8");
                    if (i.c(str5)) {
                        if (fileLockLock != null) {
                            try {
                                fileLockLock.release();
                            } catch (Exception unused) {
                            }
                        }
                        try {
                            randomAccessFile2.close();
                        } catch (Exception unused2) {
                        }
                        return str5;
                    }
                }
                byte[] bytes = str2.getBytes("UTF-8");
                randomAccessFile2.setLength(0L);
                randomAccessFile2.write(bytes);
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                    } catch (Exception unused3) {
                    }
                }
                try {
                    randomAccessFile2.close();
                } catch (Exception unused4) {
                }
                return str2;
            } catch (IOException e10) {
                randomAccessFile = randomAccessFile2;
                e = e10;
            } catch (Throwable th) {
                randomAccessFile = randomAccessFile2;
                th = th;
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                    } catch (Exception unused5) {
                    }
                }
                if (randomAccessFile != null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (Exception unused6) {
                    throw th;
                }
            }
        } catch (IOException e11) {
            e = e11;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                if (com.byazt.lu.uj.n().f16788c.checkSelfPermission(g.f74785i) != 0) {
                    throw new SecurityException(e);
                }
                com.byazt.yv.da.tt(e);
            }
            if (fileLockLock != null) {
                try {
                    fileLockLock.release();
                } catch (Exception unused7) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception unused8) {
                }
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
            if (fileLockLock != null) {
                fileLockLock.release();
            }
            if (randomAccessFile != null) {
                throw th;
            }
            randomAccessFile.close();
            throw th;
        }
    }

    public abstract boolean c(JSONObject jSONObject) throws JSONException, SecurityException;

    public ve(boolean z10, boolean z11, boolean z12) {
        this.tt = z10;
        this.ve = z11;
        this.uj = z12;
    }
}
