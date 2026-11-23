package com.tencent.cos.task.download;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Range {
    protected String downloadUrl;
    protected String fileName;
    protected long length;
    protected String localPath;
    protected long range;

    public Range(String str, String str2, String str3, int i10) {
        this.downloadUrl = str;
        this.localPath = str2;
        this.fileName = str3;
        this.length = i10;
        if (isEquals()) {
            return;
        }
        this.range = 0L;
        saveRangePart(str3);
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getLength() {
        return this.length;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public long getRange() {
        return this.range;
    }

    /* JADX WARN: Code duplicated, block: B:145:0x00ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:? A[Catch: all -> 0x0123, SYNTHETIC, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:13:0x002e, B:17:0x0036, B:20:0x003b, B:25:0x004c, B:29:0x0054, B:32:0x0059, B:37:0x006a, B:41:0x0072, B:44:0x0077, B:50:0x0086, B:54:0x008e, B:57:0x0093, B:63:0x00a4, B:67:0x00ac, B:70:0x00b1, B:73:0x00b6, B:77:0x00be, B:80:0x00c3, B:66:0x00a9, B:76:0x00bb, B:53:0x008b, B:40:0x006f, B:28:0x0051, B:16:0x0033, B:95:0x00e0, B:100:0x00ea, B:104:0x00f2, B:103:0x00ef, B:98:0x00e5, B:107:0x00f7, B:112:0x0101, B:115:0x0106, B:110:0x00fc, B:120:0x010f, B:125:0x0119, B:128:0x011e, B:123:0x0114), top: B:138:0x0001, inners: #0, #1, #3, #4, #5, #6, #7, #9, #10, #11, #13, #14, #16, #17, #19, #23, #25, #27 }] */
    public synchronized boolean isEquals() {
        FileInputStream fileInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        File file = new File(this.fileName);
        if (!file.exists()) {
            return false;
        }
        ObjectInputStream objectInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                objectInputStream = new ObjectInputStream(fileInputStream);
                try {
                    RangePart rangePart = (RangePart) objectInputStream.readObject();
                    if (!rangePart.getDownloadUrl().equals(this.downloadUrl)) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return false;
                    }
                    if (!rangePart.getLocalPath().equals(this.localPath)) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        return false;
                    }
                    if (!rangePart.getFileName().equals(this.fileName)) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                        return false;
                    }
                    if (rangePart.getLength() != this.length) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e16) {
                            e16.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e17) {
                            e17.printStackTrace();
                        }
                        return false;
                    }
                    long range = rangePart.getRange();
                    this.range = range;
                    if (range > this.length) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e18) {
                            e18.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e19) {
                            e19.printStackTrace();
                        }
                        return false;
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e20) {
                        e20.printStackTrace();
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e21) {
                        e21.printStackTrace();
                    }
                    return true;
                } catch (IOException unused) {
                    objectInputStream2 = objectInputStream;
                    if (objectInputStream2 == null) {
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return false;
                    }
                    try {
                        objectInputStream2.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e23) {
                            e23.printStackTrace();
                        }
                    }
                    return false;
                } catch (ClassNotFoundException unused2) {
                    objectInputStream2 = objectInputStream;
                    if (objectInputStream2 == null) {
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return false;
                    }
                    try {
                        objectInputStream2.close();
                    } catch (IOException e24) {
                        e24.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e25) {
                            e25.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInputStream == null) {
                        if (fileInputStream != null) {
                            throw th;
                        }
                        fileInputStream.close();
                        throw th;
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e26) {
                        e26.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (IOException e27) {
                        e27.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException unused3) {
            } catch (ClassNotFoundException unused4) {
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
            }
        } catch (IOException unused5) {
            fileInputStream = null;
        } catch (ClassNotFoundException unused6) {
            fileInputStream = null;
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
            objectInputStream = null;
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:103:? A[Catch: all -> 0x00aa, SYNTHETIC, TRY_LEAVE, TryCatch #6 {, blocks: (B:3:0x0001, B:5:0x000c, B:7:0x0019, B:9:0x001f, B:14:0x0035, B:18:0x003d, B:21:0x0043, B:17:0x003a, B:39:0x0069, B:44:0x0073, B:42:0x006e, B:52:0x0082, B:57:0x008c, B:55:0x0087, B:63:0x0095, B:68:0x009f, B:72:0x00a7, B:71:0x00a4, B:66:0x009a), top: B:84:0x0001, inners: #0, #1, #8, #12, #13 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.FileOutputStream] */
    public synchronized void saveRangePart(String str) {
        ?? Substring;
        Throwable th;
        IOException e10;
        FileNotFoundException e11;
        File file = new File(str);
        if (!file.exists() && (Substring = str.substring(0, str.lastIndexOf(File.separator))) != 0 && file.mkdirs()) {
            ?? file2 = new File(str);
            try {
                try {
                    Substring = new FileOutputStream((File) file2);
                    try {
                        file2 = new ObjectOutputStream(Substring);
                        try {
                            file2.writeObject(this);
                            file2.flush();
                            try {
                                file2.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                            try {
                                Substring.close();
                            } catch (IOException e13) {
                                e = e13;
                                e.printStackTrace();
                            }
                        } catch (FileNotFoundException e14) {
                            e11 = e14;
                            e11.printStackTrace();
                            if (file2 != 0) {
                                try {
                                    file2.close();
                                } catch (IOException e15) {
                                    e15.printStackTrace();
                                }
                            }
                            if (Substring != 0) {
                                try {
                                    Substring.close();
                                } catch (IOException e16) {
                                    e = e16;
                                    e.printStackTrace();
                                }
                            }
                        } catch (IOException e17) {
                            e10 = e17;
                            e10.printStackTrace();
                            if (file2 != 0) {
                                try {
                                    file2.close();
                                } catch (IOException e18) {
                                    e18.printStackTrace();
                                }
                            }
                            if (Substring != 0) {
                                try {
                                    Substring.close();
                                } catch (IOException e19) {
                                    e = e19;
                                    e.printStackTrace();
                                }
                            }
                        }
                    } catch (FileNotFoundException e20) {
                        file2 = 0;
                        e11 = e20;
                    } catch (IOException e21) {
                        file2 = 0;
                        e10 = e21;
                    } catch (Throwable th2) {
                        file2 = 0;
                        th = th2;
                        if (file2 == 0) {
                            if (Substring != 0) {
                                throw th;
                            }
                            Substring.close();
                            throw th;
                        }
                        try {
                            file2.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                        if (Substring != 0) {
                            throw th;
                        }
                        try {
                            Substring.close();
                            throw th;
                        } catch (IOException e23) {
                            e23.printStackTrace();
                            throw th;
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (FileNotFoundException e24) {
                Substring = 0;
                e11 = e24;
                file2 = 0;
            } catch (IOException e25) {
                Substring = 0;
                e10 = e25;
                file2 = 0;
            } catch (Throwable th4) {
                Substring = 0;
                th = th4;
                file2 = 0;
            }
        }
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setLength(long j10) {
        this.length = j10;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setRange(long j10) {
        this.range = j10;
    }
}
