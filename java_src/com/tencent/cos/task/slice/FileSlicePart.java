package com.tencent.cos.task.slice;

import android.os.Environment;
import android.text.TextUtils;
import com.tencent.cos.COSClient;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class FileSlicePart implements Serializable {
    private static final long serialVersionUID = -8625186156974023016L;
    public String appid;
    public String biz_attr;
    public String bucket;
    public String cosPath;
    public String insertOnly;
    public int requestId;
    public String session;
    public String sha;
    public String sign;
    public ArrayList<SlicePart> sliceParts;
    public int sliceSize;
    public boolean slice_init_flag;
    public String srcPath;

    public synchronized void deleteFile(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            file.delete();
        }
    }

    public String getDirPath() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Environment.getExternalStorageDirectory());
        String str = File.separator;
        sb2.append(str);
        sb2.append("android");
        sb2.append(str);
        sb2.append("data");
        sb2.append(str);
        sb2.append(COSClient.getContext().getPackageName());
        sb2.append(str);
        sb2.append("caches");
        String string = sb2.toString();
        File file = new File(string);
        if (!file.exists()) {
            file.mkdirs();
        }
        return string;
    }

    protected synchronized void init(FileSlicePart fileSlicePart) {
        this.appid = fileSlicePart.appid;
        this.bucket = fileSlicePart.bucket;
        this.cosPath = fileSlicePart.cosPath;
        this.srcPath = fileSlicePart.srcPath;
        this.biz_attr = fileSlicePart.biz_attr;
        this.insertOnly = fileSlicePart.insertOnly;
        this.sliceSize = fileSlicePart.sliceSize;
        this.sha = fileSlicePart.sha;
        this.sliceParts = fileSlicePart.sliceParts;
        this.sign = fileSlicePart.sign;
        this.session = fileSlicePart.session;
        this.slice_init_flag = fileSlicePart.slice_init_flag;
        this.requestId = fileSlicePart.requestId;
    }

    public synchronized boolean isValid(String str) {
        if (TextUtils.isEmpty(str) && this.srcPath.equals(str)) {
            File file = new File(str);
            File file2 = new File(this.srcPath);
            if (file.canRead() && file.length() == file2.length()) {
                return file.lastModified() == file2.lastModified();
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:? A[Catch: all -> 0x00c2, SYNTHETIC, TRY_LEAVE, TryCatch #16 {, blocks: (B:7:0x0015, B:11:0x001d, B:14:0x0023, B:10:0x001a, B:40:0x005d, B:45:0x0067, B:43:0x0062, B:53:0x0076, B:58:0x0080, B:56:0x007b, B:66:0x008f, B:71:0x0099, B:69:0x0094, B:79:0x00a8, B:84:0x00b2, B:82:0x00ad, B:92:0x00be, B:99:0x00ca, B:103:0x00d2, B:102:0x00cf, B:97:0x00c5), top: B:123:0x0002, inners: #0, #5, #9, #15, #18, #20, #25 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v19, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v21, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public synchronized void loadFileSlicePart(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        ClassNotFoundException e10;
        IOException e11;
        StreamCorruptedException e12;
        FileNotFoundException e13;
        try {
            try {
                fileInputStream = new FileInputStream((String) str);
                try {
                    str = new ObjectInputStream(fileInputStream);
                    try {
                        init((FileSlicePart) str.readObject());
                        try {
                            fileInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                        try {
                            str.close();
                        } catch (IOException e15) {
                            e = e15;
                            e.printStackTrace();
                        }
                    } catch (FileNotFoundException e16) {
                        e13 = e16;
                        e13.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e17) {
                                e17.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e18) {
                                e = e18;
                                e.printStackTrace();
                            }
                        }
                    } catch (StreamCorruptedException e19) {
                        e12 = e19;
                        e12.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e20) {
                                e20.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e21) {
                                e = e21;
                                e.printStackTrace();
                            }
                        }
                    } catch (IOException e22) {
                        e11 = e22;
                        e11.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e23) {
                                e23.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e24) {
                                e = e24;
                                e.printStackTrace();
                            }
                        }
                    } catch (ClassNotFoundException e25) {
                        e10 = e25;
                        e10.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e26) {
                                e26.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e27) {
                                e = e27;
                                e.printStackTrace();
                            }
                        }
                    }
                } catch (FileNotFoundException e28) {
                    e13 = e28;
                    str = 0;
                } catch (StreamCorruptedException e29) {
                    e12 = e29;
                    str = 0;
                } catch (IOException e30) {
                    e11 = e30;
                    str = 0;
                } catch (ClassNotFoundException e31) {
                    e10 = e31;
                    str = 0;
                } catch (Throwable th2) {
                    th = th2;
                    str = 0;
                    if (fileInputStream == null) {
                        if (str != 0) {
                            throw th;
                        }
                        str.close();
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e32) {
                        e32.printStackTrace();
                    }
                    if (str != 0) {
                        throw th;
                    }
                    try {
                        str.close();
                        throw th;
                    } catch (IOException e33) {
                        e33.printStackTrace();
                        throw th;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e34) {
            fileInputStream = null;
            e13 = e34;
            str = 0;
        } catch (StreamCorruptedException e35) {
            fileInputStream = null;
            e12 = e35;
            str = 0;
        } catch (IOException e36) {
            fileInputStream = null;
            e11 = e36;
            str = 0;
        } catch (ClassNotFoundException e37) {
            fileInputStream = null;
            e10 = e37;
            str = 0;
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
            str = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[Catch: all -> 0x0078, SYNTHETIC, TRY_LEAVE, TryCatch #13 {, blocks: (B:7:0x0012, B:11:0x001a, B:14:0x0020, B:10:0x0017, B:32:0x0046, B:37:0x0050, B:35:0x004b, B:45:0x005f, B:50:0x0069, B:48:0x0064, B:58:0x0074, B:65:0x0080, B:69:0x0088, B:68:0x0085, B:63:0x007b), top: B:89:0x0002, inners: #0, #1, #7, #10, #11 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.ObjectOutputStream] */
    public synchronized void saveFileSlicePart(String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e10;
        FileNotFoundException e11;
        try {
            try {
                fileOutputStream = new FileOutputStream((String) str);
                try {
                    str = new ObjectOutputStream(fileOutputStream);
                    try {
                        str.writeObject(this);
                        str.flush();
                        try {
                            fileOutputStream.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                        try {
                            str.close();
                        } catch (IOException e13) {
                            e = e13;
                            e.printStackTrace();
                        }
                    } catch (FileNotFoundException e14) {
                        e11 = e14;
                        e11.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e15) {
                                e15.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e16) {
                                e = e16;
                                e.printStackTrace();
                            }
                        }
                    } catch (IOException e17) {
                        e10 = e17;
                        e10.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e18) {
                                e18.printStackTrace();
                            }
                        }
                        if (str != 0) {
                            try {
                                str.close();
                            } catch (IOException e19) {
                                e = e19;
                                e.printStackTrace();
                            }
                        }
                    }
                } catch (FileNotFoundException e20) {
                    e11 = e20;
                    str = 0;
                } catch (IOException e21) {
                    e10 = e21;
                    str = 0;
                } catch (Throwable th2) {
                    th = th2;
                    str = 0;
                    if (fileOutputStream == null) {
                        if (str != 0) {
                            throw th;
                        }
                        str.close();
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                    if (str != 0) {
                        throw th;
                    }
                    try {
                        str.close();
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
            fileOutputStream = null;
            e11 = e24;
            str = 0;
        } catch (IOException e25) {
            fileOutputStream = null;
            e10 = e25;
            str = 0;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            str = 0;
        }
    }

    public synchronized void updateAfterSliceInit(String str, int i10, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.session = str;
        this.sliceSize = i10;
        this.sha = str2;
        this.slice_init_flag = true;
        saveFileSlicePart(str3);
    }

    public synchronized void updateSlicePart(int i10, boolean z10) {
        this.sliceParts.get(i10).setOverFlag(z10);
    }
}
