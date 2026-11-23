package com.byazt.wr;

import android.text.TextUtils;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.byazt.dna.nu;
import com.byazt.dna.z;
import com.byazt.nr.m;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.t;
import com.xinzhu.overmind.server.os.f;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1361, 13})
public class tt implements com.byazt.yy.c, com.byazt.yy.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.iy.ve f21662c;
    public final com.byazt.iy.ve tt;
    public final boolean ve;

    public tt(com.byazt.iy.ve veVar, boolean z10) {
        this.f21662c = veVar;
        this.tt = veVar;
        this.ve = z10;
    }

    private void c(String str) {
        int i10;
        nu nuVar;
        com.byazt.iy.ve encrypt;
        if (TextUtils.isEmpty(str)) {
            i10 = 0;
        } else {
            try {
                i10 = Integer.parseInt(str);
            } catch (Throwable unused) {
                i10 = 0;
            }
        }
        if (i10 == 0) {
            this.f21662c = null;
            return;
        }
        com.byazt.iy.ve veVar = this.f21662c;
        if ((veVar != null && veVar.type() == i10) || (nuVar = (nu) com.byazt.ut.uj.getService("kv_store_factory")) == null || (encrypt = nuVar.getEncrypt(i10)) == null) {
            return;
        }
        this.f21662c = encrypt;
    }

    private Pair<String, String> getType(String str) {
        if (str.contains(o0.f49827a)) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length >= 2) {
                return new Pair<>(strArrSplit[0], strArrSplit[1]);
            }
        }
        return new Pair<>("s", str);
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00e0  */
    @Override // com.byazt.yy.c
    public Map<String, Object> c(File file) {
        FileReader fileReader;
        byte b10;
        if (file == null || !file.exists()) {
            return null;
        }
        if (!file.canRead()) {
            m.tt("PropReaderWriter", "can't read file ".concat(String.valueOf(file)));
            return null;
        }
        Properties properties = new Properties();
        try {
            fileReader = new FileReader(file);
            try {
                properties.load(fileReader);
                Object obj = properties.get(".i.tt_ect");
                if (obj != null) {
                    c(String.valueOf(obj));
                }
                Enumeration<?> enumerationPropertyNames = properties.propertyNames();
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(properties.size());
                while (enumerationPropertyNames.hasMoreElements()) {
                    String strDecrypt = (String) enumerationPropertyNames.nextElement();
                    String property = properties.getProperty(strDecrypt);
                    if (strDecrypt != null && !strDecrypt.startsWith(".i.tt_ect")) {
                        if (this.ve) {
                            strDecrypt = this.f21662c.decrypt(strDecrypt);
                        }
                        com.byazt.iy.ve veVar = this.f21662c;
                        if (veVar != null) {
                            property = veVar.decrypt(property);
                        }
                        Pair<String, String> type = getType(strDecrypt);
                        String str = (String) type.second;
                        String str2 = (String) type.first;
                        int iHashCode = str2.hashCode();
                        if (iHashCode != 98) {
                            if (iHashCode != 102) {
                                if (iHashCode != 105) {
                                    if (iHashCode != 108) {
                                        if (iHashCode != 115) {
                                            if (iHashCode == 3680 && str2.equals("ss")) {
                                                b10 = 4;
                                            } else {
                                                b10 = -1;
                                            }
                                        } else if (str2.equals("s")) {
                                            b10 = 6;
                                        } else {
                                            b10 = -1;
                                        }
                                    } else if (str2.equals(t.f74879d)) {
                                        b10 = 1;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (str2.equals("i")) {
                                    b10 = 0;
                                } else {
                                    b10 = -1;
                                }
                            } else if (str2.equals(f.TAG)) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str2.equals(t.f74887l)) {
                            b10 = 3;
                        } else {
                            b10 = -1;
                        }
                        if (b10 == 0) {
                            concurrentHashMap.put(str, Integer.valueOf(Integer.parseInt(property)));
                        } else if (b10 == 1) {
                            concurrentHashMap.put(str, Long.valueOf(Long.parseLong(property)));
                        } else if (b10 == 2) {
                            concurrentHashMap.put(str, Float.valueOf(Float.parseFloat(property)));
                        } else if (b10 == 3) {
                            concurrentHashMap.put(str, Boolean.valueOf(Boolean.parseBoolean(property)));
                        } else if (b10 != 4) {
                            concurrentHashMap.put(str, property);
                        } else {
                            JSONArray jSONArray = new JSONArray(property);
                            HashSet hashSet = new HashSet((int) (((double) jSONArray.length()) / 0.75d));
                            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                hashSet.add(jSONArray.optString(i10));
                            }
                            concurrentHashMap.put(str, hashSet);
                        }
                    }
                }
                try {
                    fileReader.close();
                } catch (Throwable unused) {
                }
                return concurrentHashMap;
            } catch (Throwable th) {
                th = th;
                try {
                    boolean zDelete = file.delete();
                    z zVar = (z) com.byazt.ut.uj.getService(NotificationCompat.CATEGORY_EVENT);
                    if (zVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("file", file.getAbsolutePath());
                            jSONObject.put("delete", zDelete);
                            jSONObject.put("msg", "read failed");
                            jSONObject.put("class", "PropReaderWriter");
                        } catch (JSONException unused2) {
                        }
                        zVar.onExceptionEvent("kv", jSONObject, th);
                    }
                    m.tt("PropReader", "read failed， try delete = " + zDelete + "," + file.getAbsolutePath(), th);
                    if (fileReader == null) {
                        return null;
                    }
                    try {
                        return null;
                    } catch (Throwable unused3) {
                        return null;
                    }
                } finally {
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Throwable unused4) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileReader = null;
        }
    }

    @Override // com.byazt.yy.tt
    public void c(Map<String, Object> map, File file) throws Throwable {
        FileWriter fileWriter;
        Throwable th;
        String strConcat;
        if (file == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        Properties properties = new Properties();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null) {
                if (entry.getValue() instanceof Set) {
                    Set set = (Set) entry.getValue();
                    JSONArray jSONArray = new JSONArray();
                    Iterator it2 = set.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put((String) it2.next());
                    }
                    strConcat = "ss.".concat(key);
                    value = jSONArray.toString();
                } else if (entry.getValue() instanceof Boolean) {
                    strConcat = "b.".concat(key);
                } else if (entry.getValue() instanceof Integer) {
                    strConcat = "i.".concat(key);
                } else if (entry.getValue() instanceof Long) {
                    strConcat = "l.".concat(key);
                } else if ((entry.getValue() instanceof Float) || (entry.getValue() instanceof Double)) {
                    strConcat = "f.".concat(key);
                } else {
                    strConcat = "s.".concat(key);
                }
                String strValueOf = String.valueOf(value);
                if (this.ve) {
                    strConcat = this.tt.encrypt(strConcat);
                }
                com.byazt.iy.ve veVar = this.tt;
                if (veVar != null) {
                    strValueOf = veVar.encrypt(strValueOf);
                }
                properties.put(strConcat, strValueOf);
            }
        }
        try {
            fileWriter = new FileWriter(file);
            try {
                com.byazt.iy.ve veVar2 = this.tt;
                properties.put(".i.tt_ect", veVar2 != null ? String.valueOf(veVar2.type()) : "0");
                properties.store(fileWriter, (String) null);
                fileWriter.flush();
                try {
                    fileWriter.close();
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            fileWriter = null;
            th = th3;
        }
    }
}
