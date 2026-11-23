package com.byazt.aas;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.tencent.stat.DeviceInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_THREAD_PRIORITY})
public class qp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f11470c;

    /* JADX WARN: Code duplicated, block: B:47:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String c(String str) {
        BufferedReader bufferedReader;
        Exception e10;
        FileReader fileReader;
        StringBuilder sb2 = new StringBuilder();
        FileReader fileReader2 = null;
        try {
            File file = new File("data/data/com.union_test.toutiao" + e.F0 + str);
            if (!file.exists()) {
                return null;
            }
            fileReader = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                        } catch (Exception e11) {
                            e10 = e11;
                            com.byazt.nr.m.c(e10);
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Throwable unused) {
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused2) {
                                }
                            }
                            return sb2.toString();
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    th = th;
                    fileReader2 = fileReader;
                    if (fileReader2 != null) {
                        try {
                            fileReader2.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (Throwable unused4) {
                        throw th;
                    }
                }
                String string = sb2.toString();
                try {
                    fileReader.close();
                } catch (Throwable unused5) {
                }
                try {
                    bufferedReader.close();
                } catch (Throwable unused6) {
                }
                return string;
            } catch (Exception e12) {
                bufferedReader = null;
                e10 = e12;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception e13) {
            bufferedReader = null;
            e10 = e13;
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        com.byazt.nr.m.c(e10);
        if (fileReader != null) {
            fileReader.close();
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        return sb2.toString();
    }

    public static String tt(String str) {
        try {
            if (!c()) {
                return str;
            }
            String strL = com.byazt.omf.x.m().l();
            return TextUtils.isEmpty(strL) ? str : Uri.parse(str).buildUpon().appendQueryParameter(tt(), strL).appendQueryParameter(DeviceInfo.TAG_ANDROID_ID, "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static String ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String strVe = com.byazt.fh.c.ve();
            if (!TextUtils.isEmpty(strVe)) {
                strVe = strVe.replaceAll("\\.", "");
            }
            return Uri.parse(str).buildUpon().appendQueryParameter("sdkVersion", strVe).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String tt() {
        if (TextUtils.isEmpty(f11470c)) {
            f11470c = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return f11470c;
    }

    public static boolean c() {
        if (com.byazt.nr.m.ve()) {
            return com.byazt.omf.x.m().hd();
        }
        return false;
    }

    public static String c(String str, String str2) {
        return str.contains("https://api-access.pangolin-sdk-toutiao.com") ? str.replace("https://api-access.pangolin-sdk-toutiao.com", str2) : str;
    }

    public static void c(Map<String, String> map) {
        if (c()) {
            map.put("x-app-id", "5001121");
            String strL = com.byazt.omf.x.m().l();
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            map.put("x-device-id", strL);
        }
    }
}
