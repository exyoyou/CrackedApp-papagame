package com.join.mgps.Util;

import com.join.mgps.dto.UNZipPathBackBean;
import java.io.File;
import java.io.IOException;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes4.dex */
public class x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f50113d = "CompressOperate_zip4j";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private mc.c f50114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private pc.p f50115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50116c = 0;

    private String a(String sourceFileName) {
        if (sourceFileName.indexOf(o0.f49827a) <= 0) {
            return sourceFileName;
        }
        String strSubstring = sourceFileName.substring(0, sourceFileName.length() - 4);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("checkString: 校验过的sourceFileName是：");
        sb2.append(strSubstring);
        return strSubstring;
    }

    public static String c(File zipFile, String folderPath) throws Exception {
        mc.c cVar = new mc.c(zipFile);
        cVar.N("GBK");
        if (!cVar.H()) {
            throw new ZipException("压缩文件不合法,可能被损坏.");
        }
        List listA = cVar.A();
        for (int i10 = 0; listA != null && i10 < listA.size(); i10++) {
            String str = new String((folderPath + File.separator + ((pc.h) listA.get(i10)).p()).getBytes("8859_1"), "UTF-8");
            if (str.endsWith(".apk") || str.endsWith(".APK")) {
                return str;
            }
        }
        return "";
    }

    public static String d(File zipFile, String folderPath, String packageName) throws Throwable {
        try {
            mc.c cVar = new mc.c(zipFile);
            cVar.N("GBK");
            if (!cVar.H()) {
                throw new ZipException("压缩文件不合法,可能被损坏.");
            }
            try {
                List listA = cVar.A();
                for (int i10 = 0; listA != null && i10 < listA.size(); i10++) {
                    String str = new String((folderPath + File.separator + ((pc.h) listA.get(i10)).p()).getBytes("8859_1"), "UTF-8");
                    if (!str.endsWith(packageName + ".zip")) {
                        if (!str.endsWith(packageName + ".iso")) {
                            if (!str.endsWith(packageName + ".ISO")) {
                                if (!str.endsWith(packageName + ".bin")) {
                                    if (!str.endsWith(packageName + ".cue")) {
                                        if (!str.endsWith(packageName + ".pbp")) {
                                            if (!str.endsWith(packageName + ".img")) {
                                                if (!str.endsWith(packageName + ".mdf")) {
                                                    if (!str.endsWith(packageName + ".wsc")) {
                                                        if (!str.endsWith(packageName + ".ws")) {
                                                            if (!str.endsWith(packageName + ".nds")) {
                                                                if (!str.endsWith(packageName + ".z64")) {
                                                                    if (!str.endsWith(packageName + ".n64")) {
                                                                        if (!str.endsWith(packageName + ".cdi")) {
                                                                            if (!str.endsWith(packageName + ".CDI")) {
                                                                                if (!str.endsWith(packageName + ".gdi")) {
                                                                                    if (!str.endsWith(packageName + ".chd")) {
                                                                                        if (!str.endsWith(packageName + ".mds")) {
                                                                                            if (!str.endsWith(packageName + ".cci")) {
                                                                                                if (!str.endsWith(packageName + ".cia")) {
                                                                                                    if (!str.endsWith(packageName + ".3ds")) {
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return str;
                }
                return "";
            } catch (ZipException e10) {
                e10.printStackTrace();
                return "";
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            throw new IOException(e11);
        }
    }

    public static String f(com.join.mgps.task.e unAndroidZIPThread, File zipFile, String folderPath) throws Exception {
        File file = new File(folderPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        mc.c cVar = new mc.c(zipFile);
        cVar.N("GBK");
        if (!cVar.H()) {
            throw new ZipException("压缩文件不合法,可能被损坏.");
        }
        List listA = cVar.A();
        String str = "";
        for (int i10 = 0; listA != null && i10 < listA.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(folderPath);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(((pc.h) listA.get(i10)).p());
            String string = sb2.toString();
            if (string.endsWith(".apk") || string.endsWith(".APK")) {
                str = new String(string.getBytes("8859_1"), "UTF-8");
            }
            cVar.q(((pc.h) listA.get(i10)).p(), folderPath + str2);
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x024f A[Catch: all -> 0x038e, Exception -> 0x0390, TryCatch #3 {Exception -> 0x0390, blocks: (B:7:0x0025, B:9:0x002c, B:11:0x0032, B:13:0x0061, B:15:0x0067, B:16:0x006c, B:18:0x0083, B:20:0x009a, B:22:0x00b1, B:24:0x00c8, B:26:0x00df, B:28:0x00f6, B:30:0x010d, B:32:0x0124, B:34:0x013b, B:36:0x0152, B:38:0x0169, B:40:0x0180, B:42:0x0197, B:44:0x01ae, B:46:0x01c5, B:48:0x01dc, B:50:0x01f3, B:52:0x020a, B:54:0x0221, B:56:0x0238, B:70:0x02c5, B:72:0x02d6, B:73:0x02dd, B:75:0x02ef, B:77:0x030e, B:78:0x0311, B:80:0x0317, B:82:0x031d, B:83:0x0344, B:85:0x034a, B:87:0x0354, B:93:0x036a, B:88:0x0358, B:90:0x035e, B:92:0x0364, B:94:0x036d, B:58:0x024f, B:60:0x02a5, B:63:0x02ac, B:64:0x02af, B:66:0x02b5, B:67:0x02bc, B:69:0x02c2), top: B:109:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x02a5 A[Catch: all -> 0x038e, Exception -> 0x0390, TryCatch #3 {Exception -> 0x0390, blocks: (B:7:0x0025, B:9:0x002c, B:11:0x0032, B:13:0x0061, B:15:0x0067, B:16:0x006c, B:18:0x0083, B:20:0x009a, B:22:0x00b1, B:24:0x00c8, B:26:0x00df, B:28:0x00f6, B:30:0x010d, B:32:0x0124, B:34:0x013b, B:36:0x0152, B:38:0x0169, B:40:0x0180, B:42:0x0197, B:44:0x01ae, B:46:0x01c5, B:48:0x01dc, B:50:0x01f3, B:52:0x020a, B:54:0x0221, B:56:0x0238, B:70:0x02c5, B:72:0x02d6, B:73:0x02dd, B:75:0x02ef, B:77:0x030e, B:78:0x0311, B:80:0x0317, B:82:0x031d, B:83:0x0344, B:85:0x034a, B:87:0x0354, B:93:0x036a, B:88:0x0358, B:90:0x035e, B:92:0x0364, B:94:0x036d, B:58:0x024f, B:60:0x02a5, B:63:0x02ac, B:64:0x02af, B:66:0x02b5, B:67:0x02bc, B:69:0x02c2), top: B:109:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x02b5 A[Catch: all -> 0x038e, Exception -> 0x0390, TryCatch #3 {Exception -> 0x0390, blocks: (B:7:0x0025, B:9:0x002c, B:11:0x0032, B:13:0x0061, B:15:0x0067, B:16:0x006c, B:18:0x0083, B:20:0x009a, B:22:0x00b1, B:24:0x00c8, B:26:0x00df, B:28:0x00f6, B:30:0x010d, B:32:0x0124, B:34:0x013b, B:36:0x0152, B:38:0x0169, B:40:0x0180, B:42:0x0197, B:44:0x01ae, B:46:0x01c5, B:48:0x01dc, B:50:0x01f3, B:52:0x020a, B:54:0x0221, B:56:0x0238, B:70:0x02c5, B:72:0x02d6, B:73:0x02dd, B:75:0x02ef, B:77:0x030e, B:78:0x0311, B:80:0x0317, B:82:0x031d, B:83:0x0344, B:85:0x034a, B:87:0x0354, B:93:0x036a, B:88:0x0358, B:90:0x035e, B:92:0x0364, B:94:0x036d, B:58:0x024f, B:60:0x02a5, B:63:0x02ac, B:64:0x02af, B:66:0x02b5, B:67:0x02bc, B:69:0x02c2), top: B:109:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x02bc A[Catch: all -> 0x038e, Exception -> 0x0390, TryCatch #3 {Exception -> 0x0390, blocks: (B:7:0x0025, B:9:0x002c, B:11:0x0032, B:13:0x0061, B:15:0x0067, B:16:0x006c, B:18:0x0083, B:20:0x009a, B:22:0x00b1, B:24:0x00c8, B:26:0x00df, B:28:0x00f6, B:30:0x010d, B:32:0x0124, B:34:0x013b, B:36:0x0152, B:38:0x0169, B:40:0x0180, B:42:0x0197, B:44:0x01ae, B:46:0x01c5, B:48:0x01dc, B:50:0x01f3, B:52:0x020a, B:54:0x0221, B:56:0x0238, B:70:0x02c5, B:72:0x02d6, B:73:0x02dd, B:75:0x02ef, B:77:0x030e, B:78:0x0311, B:80:0x0317, B:82:0x031d, B:83:0x0344, B:85:0x034a, B:87:0x0354, B:93:0x036a, B:88:0x0358, B:90:0x035e, B:92:0x0364, B:94:0x036d, B:58:0x024f, B:60:0x02a5, B:63:0x02ac, B:64:0x02af, B:66:0x02b5, B:67:0x02bc, B:69:0x02c2), top: B:109:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x02c2 A[Catch: all -> 0x038e, Exception -> 0x0390, TryCatch #3 {Exception -> 0x0390, blocks: (B:7:0x0025, B:9:0x002c, B:11:0x0032, B:13:0x0061, B:15:0x0067, B:16:0x006c, B:18:0x0083, B:20:0x009a, B:22:0x00b1, B:24:0x00c8, B:26:0x00df, B:28:0x00f6, B:30:0x010d, B:32:0x0124, B:34:0x013b, B:36:0x0152, B:38:0x0169, B:40:0x0180, B:42:0x0197, B:44:0x01ae, B:46:0x01c5, B:48:0x01dc, B:50:0x01f3, B:52:0x020a, B:54:0x0221, B:56:0x0238, B:70:0x02c5, B:72:0x02d6, B:73:0x02dd, B:75:0x02ef, B:77:0x030e, B:78:0x0311, B:80:0x0317, B:82:0x031d, B:83:0x0344, B:85:0x034a, B:87:0x0354, B:93:0x036a, B:88:0x0358, B:90:0x035e, B:92:0x0364, B:94:0x036d, B:58:0x024f, B:60:0x02a5, B:63:0x02ac, B:64:0x02af, B:66:0x02b5, B:67:0x02bc, B:69:0x02c2), top: B:109:0x0025 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x024f, please report this as an issue */
    public static UNZipPathBackBean g(com.join.mgps.task.h unzipThread, File zipFile, String folderPath, String packageName) throws IOException {
        File file;
        File file2;
        UNZipPathBackBean uNZipPathBackBean = new UNZipPathBackBean();
        File file3 = new File(folderPath);
        if (!file3.exists()) {
            file3.mkdirs();
        }
        try {
            mc.c cVar = new mc.c(zipFile);
            cVar.N("GBK");
            if (!cVar.H()) {
                throw new ZipException("压缩文件不合法,可能被损坏.");
            }
            try {
                List listA = cVar.A();
                for (int i10 = 0; listA != null && i10 < listA.size(); i10++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(folderPath);
                    String str = File.separator;
                    sb2.append(str);
                    sb2.append(((pc.h) listA.get(i10)).p());
                    String string = sb2.toString();
                    File file4 = new File(string);
                    if (!((pc.h) listA.get(i10)).C()) {
                        if (string.endsWith(packageName + ".zip")) {
                            uNZipPathBackBean.setGameZipPath(string);
                            File file5 = new File(string);
                            uNZipPathBackBean.setSoucePath(file5.getParent() + "/img");
                            file = new File(file5.getParent() + "/img");
                            file2 = new File(file5.getParent() + "/img/.nomedia");
                            if (file.exists()) {
                                UtilsMy.delete(file);
                            }
                            if (!file.exists()) {
                                file.mkdirs();
                                file2.createNewFile();
                            } else if (!file2.exists()) {
                                file2.createNewFile();
                            }
                        } else {
                            if (string.endsWith(packageName + ".iso")) {
                                uNZipPathBackBean.setGameZipPath(string);
                                File file6 = new File(string);
                                uNZipPathBackBean.setSoucePath(file6.getParent() + "/img");
                                file = new File(file6.getParent() + "/img");
                                file2 = new File(file6.getParent() + "/img/.nomedia");
                                if (file.exists()) {
                                    UtilsMy.delete(file);
                                }
                                if (!file.exists()) {
                                    file.mkdirs();
                                    file2.createNewFile();
                                } else if (!file2.exists()) {
                                    file2.createNewFile();
                                }
                            } else {
                                if (string.endsWith(packageName + ".ISO")) {
                                    uNZipPathBackBean.setGameZipPath(string);
                                    File file7 = new File(string);
                                    uNZipPathBackBean.setSoucePath(file7.getParent() + "/img");
                                    file = new File(file7.getParent() + "/img");
                                    file2 = new File(file7.getParent() + "/img/.nomedia");
                                    if (file.exists()) {
                                        UtilsMy.delete(file);
                                    }
                                    if (!file.exists()) {
                                        file.mkdirs();
                                        file2.createNewFile();
                                    } else if (!file2.exists()) {
                                        file2.createNewFile();
                                    }
                                } else {
                                    if (string.endsWith(packageName + ".bin")) {
                                        uNZipPathBackBean.setGameZipPath(string);
                                        File file8 = new File(string);
                                        uNZipPathBackBean.setSoucePath(file8.getParent() + "/img");
                                        file = new File(file8.getParent() + "/img");
                                        file2 = new File(file8.getParent() + "/img/.nomedia");
                                        if (file.exists()) {
                                            UtilsMy.delete(file);
                                        }
                                        if (!file.exists()) {
                                            file.mkdirs();
                                            file2.createNewFile();
                                        } else if (!file2.exists()) {
                                            file2.createNewFile();
                                        }
                                    } else {
                                        if (string.endsWith(packageName + ".cue")) {
                                            uNZipPathBackBean.setGameZipPath(string);
                                            File file9 = new File(string);
                                            uNZipPathBackBean.setSoucePath(file9.getParent() + "/img");
                                            file = new File(file9.getParent() + "/img");
                                            file2 = new File(file9.getParent() + "/img/.nomedia");
                                            if (file.exists()) {
                                                UtilsMy.delete(file);
                                            }
                                            if (!file.exists()) {
                                                file.mkdirs();
                                                file2.createNewFile();
                                            } else if (!file2.exists()) {
                                                file2.createNewFile();
                                            }
                                        } else {
                                            if (string.endsWith(packageName + ".pbp")) {
                                                uNZipPathBackBean.setGameZipPath(string);
                                                File file10 = new File(string);
                                                uNZipPathBackBean.setSoucePath(file10.getParent() + "/img");
                                                file = new File(file10.getParent() + "/img");
                                                file2 = new File(file10.getParent() + "/img/.nomedia");
                                                if (file.exists()) {
                                                    UtilsMy.delete(file);
                                                }
                                                if (!file.exists()) {
                                                    file.mkdirs();
                                                    file2.createNewFile();
                                                } else if (!file2.exists()) {
                                                    file2.createNewFile();
                                                }
                                            } else {
                                                if (string.endsWith(packageName + ".img")) {
                                                    uNZipPathBackBean.setGameZipPath(string);
                                                    File file11 = new File(string);
                                                    uNZipPathBackBean.setSoucePath(file11.getParent() + "/img");
                                                    file = new File(file11.getParent() + "/img");
                                                    file2 = new File(file11.getParent() + "/img/.nomedia");
                                                    if (file.exists()) {
                                                        UtilsMy.delete(file);
                                                    }
                                                    if (!file.exists()) {
                                                        file.mkdirs();
                                                        file2.createNewFile();
                                                    } else if (!file2.exists()) {
                                                        file2.createNewFile();
                                                    }
                                                } else {
                                                    if (string.endsWith(packageName + ".mdf")) {
                                                        uNZipPathBackBean.setGameZipPath(string);
                                                        File file12 = new File(string);
                                                        uNZipPathBackBean.setSoucePath(file12.getParent() + "/img");
                                                        file = new File(file12.getParent() + "/img");
                                                        file2 = new File(file12.getParent() + "/img/.nomedia");
                                                        if (file.exists()) {
                                                            UtilsMy.delete(file);
                                                        }
                                                        if (!file.exists()) {
                                                            file.mkdirs();
                                                            file2.createNewFile();
                                                        } else if (!file2.exists()) {
                                                            file2.createNewFile();
                                                        }
                                                    } else {
                                                        if (string.endsWith(packageName + ".wsc")) {
                                                            uNZipPathBackBean.setGameZipPath(string);
                                                            File file13 = new File(string);
                                                            uNZipPathBackBean.setSoucePath(file13.getParent() + "/img");
                                                            file = new File(file13.getParent() + "/img");
                                                            file2 = new File(file13.getParent() + "/img/.nomedia");
                                                            if (file.exists()) {
                                                                UtilsMy.delete(file);
                                                            }
                                                            if (!file.exists()) {
                                                                file.mkdirs();
                                                                file2.createNewFile();
                                                            } else if (!file2.exists()) {
                                                                file2.createNewFile();
                                                            }
                                                        } else {
                                                            if (string.endsWith(packageName + ".ws")) {
                                                                uNZipPathBackBean.setGameZipPath(string);
                                                                File file14 = new File(string);
                                                                uNZipPathBackBean.setSoucePath(file14.getParent() + "/img");
                                                                file = new File(file14.getParent() + "/img");
                                                                file2 = new File(file14.getParent() + "/img/.nomedia");
                                                                if (file.exists()) {
                                                                    UtilsMy.delete(file);
                                                                }
                                                                if (!file.exists()) {
                                                                    file.mkdirs();
                                                                    file2.createNewFile();
                                                                } else if (!file2.exists()) {
                                                                    file2.createNewFile();
                                                                }
                                                            } else {
                                                                if (string.endsWith(packageName + ".nds")) {
                                                                    uNZipPathBackBean.setGameZipPath(string);
                                                                    File file15 = new File(string);
                                                                    uNZipPathBackBean.setSoucePath(file15.getParent() + "/img");
                                                                    file = new File(file15.getParent() + "/img");
                                                                    file2 = new File(file15.getParent() + "/img/.nomedia");
                                                                    if (file.exists()) {
                                                                        UtilsMy.delete(file);
                                                                    }
                                                                    if (!file.exists()) {
                                                                        file.mkdirs();
                                                                        file2.createNewFile();
                                                                    } else if (!file2.exists()) {
                                                                        file2.createNewFile();
                                                                    }
                                                                } else {
                                                                    if (string.endsWith(packageName + ".z64")) {
                                                                        uNZipPathBackBean.setGameZipPath(string);
                                                                        File file16 = new File(string);
                                                                        uNZipPathBackBean.setSoucePath(file16.getParent() + "/img");
                                                                        file = new File(file16.getParent() + "/img");
                                                                        file2 = new File(file16.getParent() + "/img/.nomedia");
                                                                        if (file.exists()) {
                                                                            UtilsMy.delete(file);
                                                                        }
                                                                        if (!file.exists()) {
                                                                            file.mkdirs();
                                                                            file2.createNewFile();
                                                                        } else if (!file2.exists()) {
                                                                            file2.createNewFile();
                                                                        }
                                                                    } else {
                                                                        if (string.endsWith(packageName + ".n64")) {
                                                                            uNZipPathBackBean.setGameZipPath(string);
                                                                            File file17 = new File(string);
                                                                            uNZipPathBackBean.setSoucePath(file17.getParent() + "/img");
                                                                            file = new File(file17.getParent() + "/img");
                                                                            file2 = new File(file17.getParent() + "/img/.nomedia");
                                                                            if (file.exists()) {
                                                                                UtilsMy.delete(file);
                                                                            }
                                                                            if (!file.exists()) {
                                                                                file.mkdirs();
                                                                                file2.createNewFile();
                                                                            } else if (!file2.exists()) {
                                                                                file2.createNewFile();
                                                                            }
                                                                        } else {
                                                                            if (string.endsWith(packageName + ".cdi")) {
                                                                                uNZipPathBackBean.setGameZipPath(string);
                                                                                File file18 = new File(string);
                                                                                uNZipPathBackBean.setSoucePath(file18.getParent() + "/img");
                                                                                file = new File(file18.getParent() + "/img");
                                                                                file2 = new File(file18.getParent() + "/img/.nomedia");
                                                                                if (file.exists()) {
                                                                                    UtilsMy.delete(file);
                                                                                }
                                                                                if (!file.exists()) {
                                                                                    file.mkdirs();
                                                                                    file2.createNewFile();
                                                                                } else if (!file2.exists()) {
                                                                                    file2.createNewFile();
                                                                                }
                                                                            } else {
                                                                                if (string.endsWith(packageName + ".CDI")) {
                                                                                    uNZipPathBackBean.setGameZipPath(string);
                                                                                    File file19 = new File(string);
                                                                                    uNZipPathBackBean.setSoucePath(file19.getParent() + "/img");
                                                                                    file = new File(file19.getParent() + "/img");
                                                                                    file2 = new File(file19.getParent() + "/img/.nomedia");
                                                                                    if (file.exists()) {
                                                                                        UtilsMy.delete(file);
                                                                                    }
                                                                                    if (!file.exists()) {
                                                                                        file.mkdirs();
                                                                                        file2.createNewFile();
                                                                                    } else if (!file2.exists()) {
                                                                                        file2.createNewFile();
                                                                                    }
                                                                                } else {
                                                                                    if (string.endsWith(packageName + ".gdi")) {
                                                                                        uNZipPathBackBean.setGameZipPath(string);
                                                                                        File file110 = new File(string);
                                                                                        uNZipPathBackBean.setSoucePath(file110.getParent() + "/img");
                                                                                        file = new File(file110.getParent() + "/img");
                                                                                        file2 = new File(file110.getParent() + "/img/.nomedia");
                                                                                        if (file.exists()) {
                                                                                            UtilsMy.delete(file);
                                                                                        }
                                                                                        if (!file.exists()) {
                                                                                            file.mkdirs();
                                                                                            file2.createNewFile();
                                                                                        } else if (!file2.exists()) {
                                                                                            file2.createNewFile();
                                                                                        }
                                                                                    } else {
                                                                                        if (string.endsWith(packageName + ".chd")) {
                                                                                            uNZipPathBackBean.setGameZipPath(string);
                                                                                            File file111 = new File(string);
                                                                                            uNZipPathBackBean.setSoucePath(file111.getParent() + "/img");
                                                                                            file = new File(file111.getParent() + "/img");
                                                                                            file2 = new File(file111.getParent() + "/img/.nomedia");
                                                                                            if (file.exists()) {
                                                                                                UtilsMy.delete(file);
                                                                                            }
                                                                                            if (!file.exists()) {
                                                                                                file.mkdirs();
                                                                                                file2.createNewFile();
                                                                                            } else if (!file2.exists()) {
                                                                                                file2.createNewFile();
                                                                                            }
                                                                                        } else {
                                                                                            if (string.endsWith(packageName + ".mds")) {
                                                                                                uNZipPathBackBean.setGameZipPath(string);
                                                                                                File file112 = new File(string);
                                                                                                uNZipPathBackBean.setSoucePath(file112.getParent() + "/img");
                                                                                                file = new File(file112.getParent() + "/img");
                                                                                                file2 = new File(file112.getParent() + "/img/.nomedia");
                                                                                                if (file.exists()) {
                                                                                                    UtilsMy.delete(file);
                                                                                                }
                                                                                                if (!file.exists()) {
                                                                                                    file.mkdirs();
                                                                                                    file2.createNewFile();
                                                                                                } else if (!file2.exists()) {
                                                                                                    file2.createNewFile();
                                                                                                }
                                                                                            } else {
                                                                                                if (string.endsWith(packageName + ".cci")) {
                                                                                                    uNZipPathBackBean.setGameZipPath(string);
                                                                                                    File file113 = new File(string);
                                                                                                    uNZipPathBackBean.setSoucePath(file113.getParent() + "/img");
                                                                                                    file = new File(file113.getParent() + "/img");
                                                                                                    file2 = new File(file113.getParent() + "/img/.nomedia");
                                                                                                    if (file.exists()) {
                                                                                                        UtilsMy.delete(file);
                                                                                                    }
                                                                                                    if (!file.exists()) {
                                                                                                        file.mkdirs();
                                                                                                        file2.createNewFile();
                                                                                                    } else if (!file2.exists()) {
                                                                                                        file2.createNewFile();
                                                                                                    }
                                                                                                } else {
                                                                                                    if (string.endsWith(packageName + ".cia")) {
                                                                                                        uNZipPathBackBean.setGameZipPath(string);
                                                                                                        File file114 = new File(string);
                                                                                                        uNZipPathBackBean.setSoucePath(file114.getParent() + "/img");
                                                                                                        file = new File(file114.getParent() + "/img");
                                                                                                        file2 = new File(file114.getParent() + "/img/.nomedia");
                                                                                                        if (file.exists()) {
                                                                                                            UtilsMy.delete(file);
                                                                                                        }
                                                                                                        if (!file.exists()) {
                                                                                                            file.mkdirs();
                                                                                                            file2.createNewFile();
                                                                                                        } else if (!file2.exists()) {
                                                                                                            file2.createNewFile();
                                                                                                        }
                                                                                                    } else {
                                                                                                        if (string.endsWith(packageName + ".3ds")) {
                                                                                                            uNZipPathBackBean.setGameZipPath(string);
                                                                                                            File file115 = new File(string);
                                                                                                            uNZipPathBackBean.setSoucePath(file115.getParent() + "/img");
                                                                                                            file = new File(file115.getParent() + "/img");
                                                                                                            file2 = new File(file115.getParent() + "/img/.nomedia");
                                                                                                            if (file.exists() && !file.isDirectory()) {
                                                                                                                UtilsMy.delete(file);
                                                                                                            }
                                                                                                            if (!file.exists()) {
                                                                                                                file.mkdirs();
                                                                                                                file2.createNewFile();
                                                                                                            } else if (!file2.exists()) {
                                                                                                                file2.createNewFile();
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        File file20 = new File(string);
                        if (file20.getName().equals("arc.nsa")) {
                            uNZipPathBackBean.setGameZipPath(file20.getParent());
                        }
                        if (((pc.h) listA.get(i10)).p().equals("pad_setting.json")) {
                            File file21 = new File(folderPath + str + "pad_diy_setting.json");
                            if (file21.exists()) {
                                UtilsMy.delete(file21);
                            }
                        }
                        if (file20.exists() && file20.isFile()) {
                            File file22 = new File(file20.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                            file20.renameTo(file22);
                            file22.delete();
                        }
                        if (!file20.exists()) {
                            File parentFile = file20.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            } else if (parentFile.exists() && parentFile.isFile()) {
                                parentFile.delete();
                                parentFile.mkdirs();
                            }
                            file20.createNewFile();
                        }
                        cVar.q(((pc.h) listA.get(i10)).p(), folderPath + str);
                    } else if (!file4.exists()) {
                        file4.mkdirs();
                    }
                }
                return uNZipPathBackBean;
            } catch (Exception e10) {
                e10.printStackTrace();
                throw new IOException(e10);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            throw new IOException(e11);
        }
    }

    public int b(String filePath, String zipFilePath, String password) throws Throwable {
        File file = new File(filePath);
        File file2 = new File(zipFilePath);
        try {
            mc.c cVar = new mc.c(file2);
            this.f50114a = cVar;
            cVar.N("GBK");
            pc.p pVar = new pc.p();
            this.f50115b = pVar;
            pVar.s(8);
            this.f50115b.r(5);
            if (password != null && password != "") {
                this.f50115b.u(true);
                this.f50115b.v(0);
                this.f50115b.z(password.toCharArray());
            }
            if (file2.isDirectory()) {
                String str = zipFilePath + net.lingala.zip4j.util.e.F0 + a(file.getName()) + ".zip";
                StringBuilder sb2 = new StringBuilder();
                sb2.append("保存压缩文件的路径(zipFilePath)：");
                sb2.append(str);
                b(filePath, str, password);
            }
            if (file.isDirectory()) {
                this.f50114a.c(file, this.f50115b);
            } else {
                this.f50114a.a(file, this.f50115b);
            }
            return this.f50116c;
        } catch (ZipException e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("compressZip4j: 异常：");
            sb3.append(e10);
            this.f50116c = -1;
            return -1;
        }
    }

    public int e(String zipFilePath, String filePath, String password) throws Throwable {
        File file = new File(zipFilePath);
        File file2 = new File(filePath);
        try {
            mc.c cVar = new mc.c(file);
            this.f50114a = cVar;
            cVar.N("GBK");
            if (!this.f50114a.H()) {
                throw new ZipException("压缩文件不合法,可能被损坏.");
            }
            if (file2.isDirectory() && !file2.exists()) {
                file2.mkdir();
            }
            if (this.f50114a.E()) {
                this.f50114a.P(password.toCharArray());
            }
            this.f50114a.o(filePath);
            return this.f50116c;
        } catch (ZipException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("uncompressZip4j: 异常：");
            sb2.append(e10);
            this.f50116c = -1;
            return -1;
        }
    }
}
