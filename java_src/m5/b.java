package m5;

import android.text.TextUtils;
import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94165a = "V1";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94166b = "V2";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f94167c = "V1_V2";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f94168d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f94169e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f94170f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f94171g = 3;

    private static void a(File file, File file2) {
        try {
            Runtime.getRuntime().exec("cp " + file.getAbsolutePath() + " " + file2.getAbsolutePath());
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:55:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    public static void b(File file, File file2) throws Throwable {
        FileChannel fileChannel;
        FileOutputStream fileOutputStream;
        FileChannel channel;
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            System.out.println("No copying induces same absolute path, dest: " + file2.getAbsolutePath());
            return;
        }
        FileInputStream fileInputStream = null;
        channel = null;
        FileChannel channel2 = null;
        fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2, false);
                try {
                    channel = fileInputStream2.getChannel();
                    try {
                        channel2 = fileOutputStream.getChannel();
                        long size = channel.size();
                        for (long jTransferTo = 0; jTransferTo != size; jTransferTo += channel.transferTo(0 + jTransferTo, size - jTransferTo, channel2)) {
                        }
                        fileInputStream2.close();
                        fileOutputStream.close();
                        channel.close();
                        if (channel2 != null) {
                            channel2.close();
                        }
                    } catch (IOException e10) {
                        e = e10;
                        fileChannel = channel2;
                        fileInputStream = fileInputStream2;
                        try {
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (channel != null) {
                                channel.close();
                            }
                            if (fileChannel != null) {
                                fileChannel.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
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
                        fileChannel = channel2;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        if (channel != null) {
                            channel.close();
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        throw th;
                    }
                } catch (IOException e11) {
                    e = e11;
                    channel = null;
                    fileInputStream = fileInputStream2;
                    fileChannel = channel;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    channel = null;
                    fileInputStream = fileInputStream2;
                    fileChannel = channel;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
                fileOutputStream = null;
                channel = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                channel = null;
            }
        } catch (IOException e13) {
            e = e13;
            fileChannel = null;
            fileOutputStream = null;
            channel = null;
        } catch (Throwable th5) {
            th = th5;
            fileChannel = null;
            fileOutputStream = null;
            channel = null;
        }
    }

    public static void c(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2, false);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 <= 0) {
                            fileInputStream2.close();
                            fileOutputStream.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private static void d(File file, String str, Map<String, String> map) throws SignatureNotFoundException, IOException {
        String name = file.getName();
        long jCurrentTimeMillis = System.currentTimeMillis();
        System.out.println("------ File " + name + " generate channel apk  , begin ------");
        com.huaksj.vasdolly.common.a aVarG = o5.b.g(file, false);
        System.out.println("generatedChannelApk , channel = " + map + " , apkChannelName = " + file.getName());
        o5.a.c(aVarG, file, g(file, str, map));
        aVarG.d();
        System.out.println("------ File " + name + " generate channel apk , end ------");
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        System.out.println("------ total " + map.size() + " channel apk , cost : " + jCurrentTimeMillis2 + " ------");
    }

    private static void e(File file, String str, Map<String, String> map) {
        if (!n5.a.a(file)) {
            System.out.println("File " + file.getName() + " not signed by v1 , please check your signingConfig , if not have v1 signature , you can't install Apk below 7.0");
            return;
        }
        String name = file.getName();
        String strD = n5.a.d(file);
        if (!TextUtils.isEmpty(strD)) {
            System.out.println("baseApk : " + file.getAbsolutePath() + " has a channel : " + strD + ", only ignore");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        System.out.println("------ File " + name + " generate v1 channel apk  , begin ------");
        try {
            o5.a.b(file, g(file, str, map));
        } catch (Exception e10) {
            System.out.println("generateV1ChannelApk error , please check it and fix it ，and that you should generate all V1 Channel Apk again!");
            e10.printStackTrace();
        }
        System.out.println("------ File " + name + " generate v1 channel apk , end ------");
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        System.out.println("------ total " + map.size() + " channel apk , cost : " + jCurrentTimeMillis2 + " ------");
    }

    public static String f(String str, String str2) {
        if (str.contains("base")) {
            return str.replace("base", str2);
        }
        return str2 + "-" + str;
    }

    private static String g(File file, String str, Map<String, String> map) {
        HashMap map2 = new HashMap();
        Map<String, String> mapG = a.g(file);
        if (mapG != null) {
            map2.putAll(mapG);
        }
        if (map != null) {
            map.remove(n5.a.f94477a);
            map2.putAll(map);
        }
        if (str != null && str.length() > 0) {
            map2.put(n5.a.f94477a, str);
        }
        return new JSONObject(map2).toString();
    }

    private static File h(File file, String str, String str2) {
        return file.getAbsolutePath().endsWith(".apk") ? file : new File(file, f(str, str2));
    }

    private static int i(File file) throws Exception {
        return 0;
    }

    public static String j(File file) {
        String strE = n5.a.e(file);
        return strE == null ? n5.a.d(file) : strE;
    }

    public static List<String> k(File file) {
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return arrayList;
                    }
                    String[] strArrSplit = line.split("#");
                    if (strArrSplit == null || strArrSplit.length <= 0 || (str = strArrSplit[0]) == null || str.trim().length() <= 0) {
                        System.out.println("skip invalid channel line : " + line);
                    } else {
                        arrayList.add(strArrSplit[0].trim());
                    }
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean l(File file) {
        try {
            o5.a.g(file, true);
            return true;
        } catch (Exception e10) {
            try {
                e10.printStackTrace();
                try {
                    o5.a.f(file);
                    return true;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return false;
                }
            } catch (Exception e12) {
                System.out.println(e12.getMessage());
                e12.printStackTrace();
                return false;
            }
        }
    }

    public static void m(File file, String str, Map<String, String> map) {
        if (map.isEmpty()) {
            System.out.println("channel list is empty , please set channel list");
            return;
        }
        try {
            d(file, str, map);
        } catch (Exception e10) {
            System.out.println(e10.getMessage());
            e10.printStackTrace();
            try {
                e(file, str, map);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
