package com.byazt.wun;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.byazt.aas.nb;
import com.byazt.bv.BaseConstants;
import com.byazt.hv.TTDownloadField;
import com.byazt.hy.n;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.byazt.va.ve;
import com.byazt.vif.uj;
import com.byazt.whk.tt;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.analytics.pro.bm;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 461, 20})
public class c implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f21685c;
    public static final FileFilter tt = new FileFilter() { // from class: com.byazt.wun.c.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i10 = 3; i10 < name.length(); i10++) {
                if (!Character.isDigit(name.charAt(i10))) {
                    return false;
                }
            }
            return true;
        }
    };

    private void a(String str) {
        try {
            ve veVarVe = n.c().tt().ve();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bm.f84421x, "android");
            jSONObject.put("device_model", Build.MODEL);
            veVarVe.c(Uri.parse(nb.sl("/api/ad/union/sdk/device_score")).buildUpon().appendQueryParameter("is_bidding", "1").appendQueryParameter(BaseConstants.EVENT_LABEL_EXTRA, com.byazt.nr.c.tt(jSONObject.toString())).toString());
            com.byazt.hm.tt ttVarC = veVarVe.c();
            if (ttVarC == null || !ttVarC.i()) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(ttVarC.n());
            if (jSONObject2.optInt("code") != 200) {
                c("bytebench_value", "-1.0", str);
                return;
            }
            double dOptDouble = jSONObject2.optDouble("score");
            if (dOptDouble <= 0.0d) {
                c("bytebench_value", "-1.0", str);
                return;
            }
            c("bytebench_update_time", String.valueOf(System.currentTimeMillis()), str);
            c("bytebench_value", String.valueOf(dOptDouble), str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("score", dOptDouble);
            yp.c().sp(jSONObject3);
        } catch (Exception e10) {
            m.c(e10);
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("score", -1);
                yp.c().sp(jSONObject4);
            } catch (JSONException e11) {
                m.c(e11);
            }
        }
    }

    public static c c() {
        if (f21685c == null) {
            synchronized (c.class) {
                if (f21685c == null) {
                    f21685c = new c();
                }
            }
        }
        return f21685c;
    }

    private static int n(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    private int sp(String str) {
        int iTt = tt(gt.getContext());
        int iN = n();
        int i10 = 2;
        if (iTt != 0 && iTt != 1 && iN != 0) {
            if (iTt == 2 && iN > 0) {
                i10 = 1;
            } else if (iTt <= 2) {
                i10 = -1000;
            } else if (iN > 1) {
                i10 = 0;
            } else {
                i10 = 1;
            }
        }
        c("ram_level", String.valueOf(iTt), str);
        c("cpu_level", String.valueOf(iN), str);
        c("update_time", String.valueOf(System.currentTimeMillis()), str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ram", iTt);
            jSONObject.put("cpu", iN);
            jSONObject.put("level", i10);
        } catch (JSONException e10) {
            m.c(e10);
        }
        yp.c().a(jSONObject);
        c(i10, str);
        return i10;
    }

    public static int uj() {
        try {
            int iUj = uj("/sys/devices/system/cpu/possible");
            if (iUj == -1) {
                iUj = uj("/sys/devices/system/cpu/present");
            }
            return iUj == -1 ? new File("/sys/devices/system/cpu/").listFiles(tt).length : iUj;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public static int ve() {
        int iIntValue = -1;
        for (int i10 = 0; i10 < uj(); i10++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i10 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists() && file.canRead()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i11 = 0;
                        while (Character.isDigit(bArr[i11]) && i11 < 128) {
                            i11++;
                        }
                        Integer numValueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i11)));
                        if (numValueOf.intValue() > iIntValue) {
                            iIntValue = numValueOf.intValue();
                        }
                    } catch (NumberFormatException unused) {
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                return -1;
            }
        }
        if (iIntValue == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int iC = c("cpu MHz", fileInputStream2) * 1000;
                if (iC > iIntValue) {
                    iIntValue = iC;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return iIntValue;
    }

    @Override // com.byazt.whk.tt
    public String tt() {
        return "DeviceRate";
    }

    public boolean tt(String str) {
        String strC = c("update_time", str);
        return strC.isEmpty() || System.currentTimeMillis() - Long.parseLong(strC) >= 2592000000L;
    }

    private static int n() {
        int iVe = ve() / 1000;
        if (iVe <= 1600) {
            return 0;
        }
        if (iVe <= 2000) {
            return 1;
        }
        return iVe <= 2500 ? 2 : 3;
    }

    private static int uj(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                String line = bufferedReader.readLine();
                bufferedReader.close();
                int iN = n(line);
                fileInputStream.close();
                return iN;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException unused) {
            return -1;
        }
    }

    private static int tt(Context context) {
        long jC = c(context) / 1048576;
        if (jC <= 2000) {
            return 0;
        }
        if (jC <= BaseCloudFileManager.ACK_TIMEOUT) {
            return 1;
        }
        if (jC <= 4000) {
            return 2;
        }
        return jC <= ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS ? 3 : 4;
    }

    @TargetApi(16)
    public static long c(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    private static int c(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int i10 = fileInputStream.read(bArr);
            int i11 = 0;
            while (i11 < i10) {
                byte b10 = bArr[i11];
                if (b10 == 10 || i11 == 0) {
                    if (b10 == 10) {
                        i11++;
                    }
                    for (int i12 = i11; i12 < i10; i12++) {
                        int i13 = i12 - i11;
                        if (bArr[i12] != str.charAt(i13)) {
                            break;
                        }
                        if (i13 == str.length() - 1) {
                            return c(bArr, i12);
                        }
                    }
                }
                i11++;
            }
            return -1;
        } catch (IOException | NumberFormatException e10) {
            m.c(e10);
            return -1;
        }
    }

    private static int c(byte[] bArr, int i10) {
        byte b10;
        while (i10 < bArr.length && (b10 = bArr[i10]) != 10) {
            if (Character.isDigit(b10)) {
                int i11 = i10 + 1;
                while (i11 < bArr.length && Character.isDigit(bArr[i11])) {
                    i11++;
                }
                return Integer.parseInt(new String(bArr, 0, i10, i11 - i10));
            }
            i10++;
        }
        return -1;
    }

    public boolean ve(String str) {
        String strC = c("bytebench_update_time", str);
        return strC.isEmpty() || System.currentTimeMillis() - Long.parseLong(strC) >= 2592000000L;
    }

    public void c(String str) {
        if (gt.tt().ka() && tt(str)) {
            sp(str);
        }
        try {
            if (Double.parseDouble(com.byazt.whk.c.c().c("DeviceRate", "bytebench_value", str)) <= 0.0d || (gt.tt().mc() && ve(str))) {
                a(str);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.whk.tt
    public String c(String str, String str2) {
        return uj.c(null, tt()).get(str, "");
    }

    @Override // com.byazt.whk.tt
    public void c(String str, String str2, String str3) {
        uj.c(null, tt()).put(str, str2);
    }

    private void c(int i10, String str) {
        c("device_level", String.valueOf(i10), str);
        com.byazt.by.uj.c().x(i10);
    }
}
