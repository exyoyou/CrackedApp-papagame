package com.yxcorp.kuaishou.addfp.android.a;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.kuaishou.weapon.p0.g;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.yxcorp.kuaishou.addfp.android.b.f;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile d f90318e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f90319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap f90320b = new ConcurrentHashMap(10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f90321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f90322d;

    private d(Context context) {
        this.f90319a = null;
        this.f90322d = 0;
        try {
            this.f90321c = context;
            this.f90319a = new e(context);
            if (Build.VERSION.SDK_INT >= 30) {
                this.f90322d = this.f90321c.getApplicationInfo().targetSdkVersion;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public synchronized Pair a() {
        byte[] bArrDecode;
        try {
            if (this.f90320b != null) {
                StringBuilder sb2 = new StringBuilder();
                if (!TextUtils.isEmpty((String) this.f90320b.get("cache_e"))) {
                    return Pair.create(Pair.create(Boolean.TRUE, sb2.toString()), this.f90320b);
                }
            }
            this.f90320b.clear();
            String strB = this.f90319a.b();
            if (!TextUtils.isEmpty(strB)) {
                try {
                    bArrDecode = Base64.decode(strB, 0);
                } catch (Throwable unused) {
                    bArrDecode = null;
                }
                if (bArrDecode == null) {
                    try {
                        bArrDecode = Base64.decode(strB, 8);
                    } catch (Throwable unused2) {
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(com.yxcorp.kuaishou.addfp.android.b.b.b(bArrDecode, "20212102sjcudiab".getBytes())));
                    this.f90320b.put("cache_e", jSONObject.optString("cache_e", ""));
                    this.f90320b.put("cache_m", jSONObject.optString("cache_m", ""));
                    this.f90320b.put("c_time", Long.toString(jSONObject.optLong("c_time", 0L)));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            ConcurrentHashMap concurrentHashMap = this.f90320b;
            if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                StringBuilder sb3 = new StringBuilder();
                if (!TextUtils.isEmpty((String) this.f90320b.get("cache_e"))) {
                    return Pair.create(Pair.create(Boolean.TRUE, sb3.toString()), this.f90320b);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Pair.create(Pair.create(Boolean.TRUE, GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD), null);
    }

    public LinkedHashMap b(String str) {
        Throwable th;
        ObjectInputStream objectInputStream = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                ObjectInputStream objectInputStream2 = new ObjectInputStream(new ByteArrayInputStream(com.yxcorp.kuaishou.addfp.android.b.b.b(Base64.decode(str.getBytes(), 0), "20212102sjcudiab".getBytes())));
                try {
                    LinkedHashMap linkedHashMap = (LinkedHashMap) objectInputStream2.readObject();
                    try {
                        objectInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return linkedHashMap;
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = objectInputStream2;
                    try {
                        th.printStackTrace();
                        return new LinkedHashMap();
                    } finally {
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return new LinkedHashMap();
    }

    public static d a(Context context) {
        if (f90318e == null) {
            synchronized (d.class) {
                if (f90318e == null) {
                    f90318e = new d(context);
                }
            }
        }
        return f90318e;
    }

    public boolean b() {
        return this.f90322d >= 30;
    }

    public String a(String str) {
        try {
            File file = new File(com.yxcorp.kuaishou.addfp.android.b.b.a(this.f90321c, false), new String(Base64.decode(str, 0)));
            if (!file.exists()) {
                return "";
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb2.toString().trim();
                }
                sb2.append(line);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private String a(HashMap map) {
        ObjectOutputStream objectOutputStream;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(map);
                String str = new String(Base64.encode(com.yxcorp.kuaishou.addfp.android.b.b.c(byteArrayOutputStream.toByteArray(), "20212102sjcudiab".getBytes()), 0));
                try {
                    objectOutputStream.close();
                } catch (IOException unused) {
                }
                return str;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    if (objectOutputStream == null) {
                        return "";
                    }
                    try {
                        return "";
                    } catch (IOException unused2) {
                        return "";
                    }
                } finally {
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
        }
    }

    public static void a(Context context, String str) {
        FileWriter fileWriter;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                File file = new File(com.yxcorp.kuaishou.addfp.android.b.b.a(context, false), new String(Base64.decode("Lm91a2R0ZnQ=", 0)));
                new File(file.getParent()).mkdirs();
                fileWriter = new FileWriter(file, false);
                try {
                    fileWriter.write(str);
                    fileWriter.flush();
                    fileWriter.close();
                } catch (Throwable unused) {
                    if (fileWriter != null) {
                        fileWriter.close();
                    }
                }
            } catch (Throwable unused2) {
                fileWriter = null;
            }
        } catch (IOException unused3) {
        }
    }

    public synchronized void a(String str, String str2) {
        byte[] bArrEncode;
        HashMap linkedHashMap = null;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f90320b.put("c_time", Long.toString(jCurrentTimeMillis));
            this.f90320b.put("cache_e", str);
            this.f90320b.put("cache_m", str2);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("c_time", jCurrentTimeMillis);
            jSONObject.put("cache_e", str);
            jSONObject.put("cache_m", str2);
            byte[] bArrC = com.yxcorp.kuaishou.addfp.android.b.b.c(jSONObject.toString().getBytes(), "20212102sjcudiab".getBytes());
            try {
                bArrEncode = Base64.encode(bArrC, 0);
            } catch (Throwable unused) {
                bArrEncode = null;
            }
            if (bArrEncode == null) {
                try {
                    bArrEncode = Base64.encode(bArrC, 8);
                } catch (Throwable unused2) {
                }
            }
            if (bArrEncode != null) {
                this.f90319a.a(new String(bArrEncode));
            }
        } catch (Throwable unused3) {
        }
        try {
            String strA = com.yxcorp.kuaishou.addfp.c.a.a.a(this.f90321c, "k_w_o_d_out_dtt");
            if (TextUtils.isEmpty(strA) && f.a(this.f90321c, new String[]{g.f74785i, g.f74786j})) {
                strA = a("Lm91a2R0ZnQ=");
            }
            if (!TextUtils.isEmpty(strA) && (linkedHashMap = b(strA)) != null) {
                c cVar = b.f90312a;
                String strA2 = cVar.a();
                if (!TextUtils.isEmpty(strA2)) {
                    if (linkedHashMap.containsKey(strA2)) {
                        linkedHashMap.remove(strA2);
                    }
                    linkedHashMap.put(cVar.a(), str);
                }
            }
            if (linkedHashMap == null || linkedHashMap.size() == 0) {
                linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(b.f90312a.a(), str);
            }
            String strA3 = a(linkedHashMap);
            if (!TextUtils.isEmpty(strA3)) {
                try {
                    Settings.System.putString(this.f90321c.getContentResolver(), "k_w_o_d_out_dtt", strA3);
                } catch (Throwable unused4) {
                }
                if (f.a(this.f90321c, new String[]{g.f74785i, g.f74786j})) {
                    a(this.f90321c, strA3);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
