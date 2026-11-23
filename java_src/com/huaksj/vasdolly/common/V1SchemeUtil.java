package com.huaksj.vasdolly.common;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* JADX INFO: loaded from: classes5.dex */
public class V1SchemeUtil {

    public static class ChannelExistException extends Exception {
        static final long serialVersionUID = -3387516993124229949L;

        public ChannelExistException() {
        }

        public ChannelExistException(String str) {
            super(str);
        }
    }

    public static boolean a(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                long length = randomAccessFile2.length();
                byte[] bArr = b.f34400d;
                byte[] bArr2 = new byte[bArr.length];
                randomAccessFile2.seek(length - ((long) bArr.length));
                randomAccessFile2.readFully(bArr2);
                boolean zE = e(bArr2);
                randomAccessFile2.close();
                return zE;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean b(File file) {
        JarEntry jarEntry;
        try {
            JarFile jarFile = new JarFile(file);
            try {
                JarEntry jarEntry2 = jarFile.getJarEntry("META-INF/MANIFEST.MF");
                Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                while (true) {
                    if (!enumerationEntries.hasMoreElements()) {
                        jarEntry = null;
                        break;
                    }
                    JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                    if (jarEntryNextElement.getName().matches("META-INF/\\w+\\.SF")) {
                        jarEntry = jarFile.getJarEntry(jarEntryNextElement.getName());
                        break;
                    }
                }
                jarFile.close();
                if (jarEntry2 == null || jarEntry == null) {
                    jarFile.close();
                    return false;
                }
                jarFile.close();
                return true;
            } catch (Throwable th) {
                try {
                    jarFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void c(File file, File file2) throws Throwable {
        FileChannel fileChannel;
        if (!file2.exists()) {
            file2.createNewFile();
        }
        FileChannel channel = null;
        try {
            FileChannel channel2 = new FileInputStream(file).getChannel();
            try {
                channel = new FileOutputStream(file2).getChannel();
                channel.transferFrom(channel2, 0L, channel2.size());
                channel2.close();
                channel.close();
            } catch (Throwable th) {
                th = th;
                FileChannel fileChannel2 = channel;
                channel = channel2;
                fileChannel = fileChannel2;
                if (channel != null) {
                    channel.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
        }
    }

    public static c<ByteBuffer, Long> d(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        if (file == null || !file.exists() || !file.isFile()) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                c<ByteBuffer, Long> cVarG = com.huaksj.vasdolly.common.apk.a.g(randomAccessFile2);
                if (com.huaksj.vasdolly.common.apk.c.i(randomAccessFile2, cVarG.c().longValue())) {
                    throw new SignatureNotFoundException("ZIP64 APK not supported");
                }
                randomAccessFile2.close();
                return cVarG;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean e(byte[] bArr) {
        if (bArr.length != b.f34400d.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr2 = b.f34400d;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    public static String f(File file) throws Exception {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                long length = randomAccessFile2.length();
                byte[] bArr = b.f34400d;
                byte[] bArr2 = new byte[bArr.length];
                long length2 = length - ((long) bArr.length);
                randomAccessFile2.seek(length2);
                randomAccessFile2.readFully(bArr2);
                if (!e(bArr2)) {
                    throw new Exception("zip v1 magic not found");
                }
                long j10 = length2 - 2;
                randomAccessFile2.seek(j10);
                int iG = g(randomAccessFile2);
                if (iG <= 0) {
                    throw new Exception("zip channel info not found");
                }
                randomAccessFile2.seek(j10 - ((long) iG));
                byte[] bArr3 = new byte[iG];
                randomAccessFile2.readFully(bArr3);
                String strTrim = new String(bArr3, "UTF-8").trim();
                randomAccessFile2.close();
                return strTrim;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static short g(DataInput dataInput) throws IOException {
        byte[] bArr = new byte[2];
        dataInput.readFully(bArr);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getShort(0);
    }

    public static void h(File file) throws Exception {
        if (file == null || !file.exists() || !file.isFile()) {
            throw new Exception("param error , file : " + file);
        }
        c<ByteBuffer, Long> cVarD = d(file);
        if (cVarD.b().remaining() == 22) {
            System.out.println("file : " + file.getName() + " , has no comment");
            return;
        }
        System.out.println("file : " + file.getName() + " , has comment");
        int iE = com.huaksj.vasdolly.common.apk.c.e(cVarD.b(), 20);
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
            try {
                randomAccessFile2.seek((cVarD.c().longValue() + 22) - 2);
                j(0, randomAccessFile2);
                randomAccessFile2.setLength(file.length() - ((long) iE));
                System.out.println("file : " + file.getName() + " , remove comment success");
                randomAccessFile2.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void i(File file, String str) throws Exception {
        if (file == null || !file.exists() || !file.isFile() || str == null || str.isEmpty()) {
            throw new Exception("param error , file : " + file + " , channel : " + str);
        }
        byte[] bytes = str.getBytes("UTF-8");
        c<ByteBuffer, Long> cVarD = d(file);
        RandomAccessFile randomAccessFile = null;
        if (cVarD.b().remaining() == 22) {
            System.out.println("file : " + file.getAbsolutePath() + " , has no comment");
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                try {
                    randomAccessFile2.seek(file.length() - 2);
                    int length = bytes.length + 2;
                    byte[] bArr = b.f34400d;
                    j(length + bArr.length, randomAccessFile2);
                    randomAccessFile2.write(bytes);
                    j(bytes.length, randomAccessFile2);
                    randomAccessFile2.write(bArr);
                    randomAccessFile2.close();
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            System.out.println("file : " + file.getAbsolutePath() + " , has comment");
            if (a(file)) {
                try {
                    String strF = f(file);
                    if (strF != null) {
                        file.delete();
                        throw new ChannelExistException("file : " + file.getAbsolutePath() + " has a channel : " + strF + ", only ignore");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            int iE = com.huaksj.vasdolly.common.apk.c.e(cVarD.b(), 20);
            int length2 = bytes.length + iE + 2;
            byte[] bArr2 = b.f34400d;
            int length3 = length2 + bArr2.length;
            try {
                RandomAccessFile randomAccessFile3 = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                try {
                    randomAccessFile3.seek((cVarD.c().longValue() + 22) - 2);
                    j(length3, randomAccessFile3);
                    randomAccessFile3.seek(cVarD.c().longValue() + 22 + ((long) iE));
                    randomAccessFile3.write(bytes);
                    j(bytes.length, randomAccessFile3);
                    randomAccessFile3.write(bArr2);
                    randomAccessFile3.close();
                } catch (Throwable th3) {
                    th = th3;
                    randomAccessFile = randomAccessFile3;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    private static void j(int i10, DataOutput dataOutput) throws IOException {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putShort((short) i10);
        dataOutput.write(byteBufferOrder.array());
    }
}
