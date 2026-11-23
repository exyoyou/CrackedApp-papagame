package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.byazt.nys.tt;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pbln {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f94427c;

    static {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8f00b5", new byte[]{BinaryMemcacheOpcodes.ADDQ, 56, 2, 26, 96});
        f94427c = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "fb6ca6", new byte[]{99, 116, 122, BinaryMemcacheOpcodes.APPENDQ, 90});
    }

    public static synchronized String c(Context context) {
        String strC;
        String strC2;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(tt.c(context).getAbsolutePath());
            sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "938338", new byte[]{com.sigmob.sdk.archives.tar.e.T}));
            String str = f94427c;
            sb2.append(str);
            String string = sb2.toString();
            if (new File(string).exists() && (strC2 = c(string)) != null && strC2.length() > 0) {
                return strC2;
            }
            InputStream inputStreamOpen = context.getResources().getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i10 = inputStreamOpen.read(bArr, 0, 4096);
                if (i10 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
            FileOutputStream fileOutputStream = new FileOutputStream(string);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.close();
            c(((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c2aadf", new byte[]{113, 56, 31, 26, 95, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.O, 68, com.sigmob.sdk.archives.tar.e.T, 113})) + string);
            strC = c(string);
            if (strC == null || strC.length() == 0) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(string, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4679e4", new byte[]{com.sigmob.sdk.archives.tar.e.O, BinaryMemcacheOpcodes.GATK}));
                randomAccessFile.seek(16L);
                randomAccessFile.write(new byte[]{2});
                randomAccessFile.close();
                strC = c(string);
            }
            if (strC == null || strC.length() == 0) {
                strC = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "169af5", new byte[]{112, 15, BinaryMemcacheOpcodes.DECREMENTQ, 84, 7, 31, BinaryMemcacheOpcodes.QUITQ, 37, 90, BinaryMemcacheOpcodes.GATQ, BinaryMemcacheOpcodes.ADDQ, 15, BinaryMemcacheOpcodes.DECREMENTQ, 84, 7, 31});
            }
            return strC;
        } catch (Throwable unused) {
            strC = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "93eee7", new byte[]{com.sigmob.sdk.archives.tar.e.R, 10, 74, 80, 4, BinaryMemcacheOpcodes.GAT, 31, 42, BinaryMemcacheOpcodes.QUITQ, 16, BinaryMemcacheOpcodes.FLUSHQ, 5, Utf8.REPLACEMENT_BYTE, 62, 116, 27, 102, com.sigmob.sdk.archives.tar.e.Q, 106, 8});
        }
    }

    private static String c(BufferedInputStream bufferedInputStream) {
        int i10;
        byte[] bArr = new byte[4096];
        StringBuilder sb2 = new StringBuilder();
        do {
            try {
                i10 = bufferedInputStream.read(bArr);
                if (i10 > 0) {
                    sb2.append(new String(bArr, 0, i10));
                }
            } catch (Exception unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "af79b2", new byte[]{117, 109, 71});
            }
        } while (i10 >= 4096);
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:56:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:? A[SYNTHETIC] */
    private static String c(String str) throws Throwable {
        Process processExec;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        BufferedInputStream bufferedInputStream2 = null;
        bufferedOutputStream2 = null;
        str = null;
        String str2 = null;
        try {
            processExec = Runtime.getRuntime().exec((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c5ccef", new byte[]{97, Utf8.REPLACEMENT_BYTE}));
            try {
                bufferedOutputStream = new BufferedOutputStream(processExec.getOutputStream());
                try {
                    bufferedInputStream = new BufferedInputStream(processExec.getInputStream());
                    try {
                        bufferedOutputStream.write(str.getBytes());
                        bufferedOutputStream.write(10);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        processExec.waitFor();
                        String strC = c(bufferedInputStream);
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused) {
                            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "24e528", new byte[]{38, Utf8.REPLACEMENT_BYTE, BinaryMemcacheOpcodes.INCREMENTQ, 126, 8});
                        }
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused2) {
                            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ed2807", new byte[]{113, 111, 66, 115, 10});
                        }
                        str2 = strC;
                    } catch (Exception unused3) {
                        try {
                            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e7ba05", new byte[]{113, 60, BinaryMemcacheOpcodes.ADDQ, 42, 10});
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException unused4) {
                                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4f7c49", new byte[]{32, 109, 71, 40, 14});
                                }
                            }
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException unused5) {
                                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "38f4b6", new byte[]{39, com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.DECREMENTQ, ByteCompanionObject.MAX_VALUE, com.sigmob.sdk.archives.tar.e.S});
                                }
                            }
                            if (processExec != null) {
                            }
                            return str2;
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream2 = bufferedOutputStream;
                            bufferedOutputStream = bufferedOutputStream2;
                            bufferedInputStream2 = bufferedInputStream;
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException unused6) {
                                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "09fe31", new byte[]{BinaryMemcacheOpcodes.GATKQ, com.sigmob.sdk.archives.tar.e.J, BinaryMemcacheOpcodes.DECREMENTQ, 46, 9});
                                }
                            }
                            if (bufferedInputStream2 != null) {
                                try {
                                    bufferedInputStream2.close();
                                } catch (IOException unused7) {
                                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0a56c3", new byte[]{BinaryMemcacheOpcodes.GATKQ, 106, 69, 125, 89});
                                }
                            }
                            if (processExec != null) {
                                throw th;
                            }
                            processExec.destroy();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream2 = bufferedInputStream;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        if (bufferedInputStream2 != null) {
                            bufferedInputStream2.close();
                        }
                        if (processExec != null) {
                            throw th;
                        }
                        processExec.destroy();
                        throw th;
                    }
                } catch (Exception unused8) {
                    bufferedInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    if (bufferedInputStream2 != null) {
                        bufferedInputStream2.close();
                    }
                    if (processExec != null) {
                        throw th;
                    }
                    processExec.destroy();
                    throw th;
                }
            } catch (Exception unused9) {
                bufferedOutputStream = null;
                bufferedInputStream = null;
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e7ba05", new byte[]{113, 60, BinaryMemcacheOpcodes.ADDQ, 42, 10});
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                return str2;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
                bufferedOutputStream = bufferedOutputStream2;
                bufferedInputStream2 = bufferedInputStream;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
                if (processExec != null) {
                    throw th;
                }
                processExec.destroy();
                throw th;
            }
        } catch (Exception unused10) {
            processExec = null;
        } catch (Throwable th5) {
            th = th5;
            processExec = null;
            bufferedInputStream = null;
        }
        processExec.destroy();
        return str2;
    }
}
