package com.byazt.bt;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.view.MotionEventCompat;
import com.byazt.nr.m;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.bg;
import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f12064a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static c f12066n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static AtomicBoolean f12065c = new AtomicBoolean(false);
    public static final Map<String, String> tt = new ConcurrentHashMap();
    public static volatile long ve = 0;
    public static final AtomicBoolean uj = new AtomicBoolean(false);

    public interface c {
        void c(String str);

        void tt(String str);
    }

    public static void c(c cVar) {
        f12066n = cVar;
    }

    public static String[] tt(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        return uj(cVar, z10, i10, veVar);
    }

    private static String[] uj(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        String[] strArr = {"", ""};
        Map<String, String> mapC = c(false, cVar, z10, i10, veVar);
        if (mapC != null) {
            strArr[0] = mapC.get("local_ipv4");
            strArr[1] = mapC.get("local_ipv6");
        }
        return strArr;
    }

    private static String[] ve(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        String[] strArrTt = tt(cVar, z10, i10, veVar);
        if (TextUtils.isEmpty(strArrTt[0]) && TextUtils.isEmpty(strArrTt[1])) {
            x.c("", cVar, i10);
        }
        return strArrTt;
    }

    public static String c(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        Map<String, String> mapC = c(false, cVar, z10, i10, veVar);
        String str = mapC != null ? mapC.get("mac") : "";
        return str == null ? "" : str;
    }

    private static String tt(byte[] bArr) {
        return (bArr[0] & 255) + o0.f49827a + (bArr[1] & 255) + o0.f49827a + (bArr[2] & 255) + o0.f49827a + (bArr[3] & 255);
    }

    private static Map<String, String> c(boolean z10, com.byazt.dna.c cVar, int i10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + e0.a.f90863b;
        if (!z10) {
            if (f12065c.get()) {
                ve = 0L;
                f12065c.set(false);
            }
            if (jElapsedRealtime - ve < e0.a.f90863b) {
                uj.set(true);
                return tt;
            }
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                ve = jElapsedRealtime;
                uj.set(true);
                return null;
            }
            HashMap map = new HashMap();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement != null) {
                    map.put(networkInterfaceNextElement.getName(), networkInterfaceNextElement);
                }
            }
            c(map, cVar, i10);
            c(map, cVar);
            ve = jElapsedRealtime;
            uj.set(true);
            return tt;
        } catch (Throwable unused) {
        }
    }

    public static Map<String, String> c(boolean z10, com.byazt.dna.c cVar, boolean z11, int i10, com.byazt.lz.ve veVar) {
        Map<String, String> mapC;
        if (!c(cVar, z11, veVar)) {
            return tt;
        }
        if (uj.get()) {
            return c(z10, cVar, i10);
        }
        synchronized (tt.class) {
            mapC = c(z10, cVar, i10);
        }
        return mapC;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0066  */
    /* JADX WARN: Code duplicated, block: B:31:0x006c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b0  */
    public static String[] c(boolean z10, AtomicBoolean atomicBoolean, com.byazt.dna.c cVar, boolean z11, int i10, com.byazt.lz.ve veVar) {
        String strDecryptAESWithCBC;
        String strDecryptAESWithCBC2;
        long j10;
        String str;
        String[] strArrVe;
        String[] strArr = {"", ""};
        String strC = x.c(cVar);
        long j11 = 0;
        try {
            com.byazt.dna.n nVar = (com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service");
            if (TextUtils.isEmpty(strC)) {
                strDecryptAESWithCBC2 = null;
                j10 = 0;
            } else {
                JSONObject jSONObject = new JSONObject(strC);
                strDecryptAESWithCBC2 = nVar.decryptAESWithCBC(jSONObject.getString(HmInputMappingContent.FIELD_VALUE));
                try {
                    j10 = jSONObject.getLong("time");
                } catch (JSONException e10) {
                    e = e10;
                    strDecryptAESWithCBC = null;
                    j10 = 0;
                    m.c(e);
                    if (strDecryptAESWithCBC2 == null) {
                        strArr[0] = strDecryptAESWithCBC2;
                        strArr[1] = strDecryptAESWithCBC;
                        if (z10) {
                            return strArr;
                        }
                    } else {
                        strArr[0] = strDecryptAESWithCBC2;
                        strArr[1] = strDecryptAESWithCBC;
                        if (z10) {
                            return strArr;
                        }
                    }
                    if (atomicBoolean.getAndSet(false)) {
                        strArrVe = ve(cVar, z11, i10, veVar);
                        return !TextUtils.isEmpty(strArrVe[0]) ? strArrVe : strArrVe;
                    }
                    if (strDecryptAESWithCBC2 != null) {
                        strDecryptAESWithCBC2 = null;
                    }
                    if (strDecryptAESWithCBC != null) {
                    }
                    if (!TextUtils.isEmpty(strDecryptAESWithCBC2)) {
                    }
                    strArr[0] = strDecryptAESWithCBC2;
                    strArr[1] = str;
                    return strArr;
                }
            }
            try {
                String strTt = x.tt(cVar);
                if (TextUtils.isEmpty(strTt)) {
                    strDecryptAESWithCBC = null;
                } else {
                    JSONObject jSONObject2 = new JSONObject(strTt);
                    strDecryptAESWithCBC = nVar.decryptAESWithCBC(jSONObject2.getString(HmInputMappingContent.FIELD_VALUE));
                    try {
                        j11 = jSONObject2.getLong("time");
                    } catch (JSONException e11) {
                        e = e11;
                        m.c(e);
                    }
                }
            } catch (JSONException e12) {
                e = e12;
                strDecryptAESWithCBC = null;
            }
        } catch (JSONException e13) {
            e = e13;
            strDecryptAESWithCBC = null;
            strDecryptAESWithCBC2 = null;
        }
        if (strDecryptAESWithCBC2 == null || strDecryptAESWithCBC != null) {
            strArr[0] = strDecryptAESWithCBC2;
            strArr[1] = strDecryptAESWithCBC;
            if (z10) {
                return strArr;
            }
        }
        if (atomicBoolean.getAndSet(false)) {
            strArrVe = ve(cVar, z11, i10, veVar);
            if (!TextUtils.isEmpty(strArrVe[0]) && TextUtils.isEmpty(strArrVe[1])) {
                if (strDecryptAESWithCBC2 == null) {
                    strDecryptAESWithCBC2 = "";
                }
                strArrVe[0] = strDecryptAESWithCBC2;
                strArrVe[1] = strDecryptAESWithCBC != null ? strDecryptAESWithCBC : "";
                return strArrVe;
            }
        }
        if (strDecryptAESWithCBC2 != null && System.currentTimeMillis() - j10 > bg.f74510s) {
            strDecryptAESWithCBC2 = null;
        }
        str = (strDecryptAESWithCBC != null || System.currentTimeMillis() - j11 <= bg.f74510s) ? strDecryptAESWithCBC : null;
        if (!TextUtils.isEmpty(strDecryptAESWithCBC2) && TextUtils.isEmpty(str)) {
            return ve(cVar, z11, i10, veVar);
        }
        strArr[0] = strDecryptAESWithCBC2;
        strArr[1] = str;
        return strArr;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0106  */
    private static void c(Map<String, NetworkInterface> map, com.byazt.dna.c cVar) {
        int i10;
        Iterator<Map.Entry<String, NetworkInterface>> it2;
        String str;
        String hostAddress;
        cVar = cVar;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        JSONArray jSONArray = new JSONArray();
        Iterator<Map.Entry<String, NetworkInterface>> it3 = map.entrySet().iterator();
        String str2 = "";
        String strC = "";
        String strC2 = strC;
        String str3 = strC2;
        while (it3.hasNext()) {
            Map.Entry<String, NetworkInterface> next = it3.next();
            if (next != null) {
                String key = next.getKey();
                NetworkInterface value = next.getValue();
                if (value != null) {
                    try {
                        if (TextUtils.equals(key, "wlan0")) {
                            strC = c(value, cVar);
                        }
                        if (TextUtils.equals(key, "eth0")) {
                            strC2 = c(value, cVar);
                        }
                    } catch (Throwable unused) {
                    }
                    List<InetAddress> listC = c(value);
                    if (listC != null) {
                        for (InetAddress inetAddress : listC) {
                            String hostAddress2 = inetAddress.getHostAddress();
                            if (TextUtils.equals(key, "wlan0") && (inetAddress instanceof Inet6Address) && inetAddress.isLinkLocalAddress() && (hostAddress = inetAddress.getHostAddress()) != null && hostAddress.startsWith("fe80")) {
                                str3 = hostAddress;
                            }
                            if (TextUtils.isEmpty(hostAddress2)) {
                                it2 = it3;
                                str = str2;
                            } else if (hostAddress2.indexOf(58) < 0) {
                                it2 = it3;
                                str = str2;
                            } else {
                                int iIndexOf = hostAddress2.indexOf(37);
                                try {
                                    it2 = it3;
                                    if ("dummy0".equals(key)) {
                                        try {
                                            JSONObject jSONObject = new JSONObject();
                                            str = str2;
                                            try {
                                                jSONObject.put("type", "client_tun");
                                                jSONObject.put(HmInputMappingContent.FIELD_VALUE, iIndexOf < 0 ? hostAddress2.toUpperCase() : hostAddress2.substring(0, iIndexOf).toUpperCase());
                                                jSONArray.put(jSONObject);
                                            } catch (JSONException unused2) {
                                            }
                                        } catch (JSONException unused3) {
                                            str = str2;
                                            if (inetAddress.isLoopbackAddress()) {
                                            }
                                            it3 = it2;
                                            str2 = str;
                                        }
                                    } else {
                                        str = str2;
                                        if ("wlan0".equals(key)) {
                                            JSONObject jSONObject2 = new JSONObject();
                                            jSONObject2.put("type", "client_anpi");
                                            jSONObject2.put(HmInputMappingContent.FIELD_VALUE, iIndexOf < 0 ? hostAddress2.toUpperCase() : hostAddress2.substring(0, iIndexOf).toUpperCase());
                                            jSONArray.put(jSONObject2);
                                        }
                                    }
                                } catch (JSONException unused4) {
                                    it2 = it3;
                                }
                            }
                            if (inetAddress.isLoopbackAddress() && !inetAddress.isLinkLocalAddress() && !TextUtils.isEmpty(hostAddress2)) {
                                if (inetAddress instanceof Inet6Address) {
                                    sb2.append(hostAddress2);
                                    sb2.append(",");
                                } else if (inetAddress instanceof Inet4Address) {
                                    sb3.append(hostAddress2);
                                    sb3.append(",");
                                }
                            }
                            it3 = it2;
                            str2 = str;
                        }
                    }
                }
            }
            it3 = it3;
            str2 = str2;
        }
        String str4 = str2;
        if (TextUtils.isEmpty(sb2)) {
            i10 = 1;
        } else {
            i10 = 1;
            sb2 = sb2.delete(sb2.length() - 1, sb2.length());
        }
        if (!TextUtils.isEmpty(sb3)) {
            sb3 = sb3.delete(sb3.length() - i10, sb3.length());
        }
        Map<String, String> map2 = tt;
        map2.put("enc_ipv4", sb3.toString());
        map2.put("enc_ipv6", sb2.toString());
        map2.put("register_ipv6", jSONArray.toString());
        if (!TextUtils.isEmpty(strC)) {
            map2.put("mac", strC);
        } else {
            map2.put("mac", strC2);
        }
        map2.put("zaid_ipv6", TextUtils.isEmpty(str3) ? str4 : str3);
    }

    private static String c(NetworkInterface networkInterface, com.byazt.dna.c cVar) throws SocketException {
        com.byazt.lz.c customController = cVar.getCustomController();
        if (customController != null && !customController.isCanUseWifiState()) {
            return customController.getMacAddress();
        }
        byte[] hardwareAddress = networkInterface.getHardwareAddress();
        if (hardwareAddress == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : hardwareAddress) {
            sb2.append(String.format("%02X:", Byte.valueOf(b10)));
        }
        if (sb2.length() > 0) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private static void c(Map<String, NetworkInterface> map, com.byazt.dna.c cVar, int i10) {
        String[] strArr = {"", ""};
        Iterator<Map.Entry<String, NetworkInterface>> it2 = map.entrySet().iterator();
        boolean z10 = false;
        boolean z11 = false;
        while (it2.hasNext()) {
            NetworkInterface value = it2.next().getValue();
            if (value != null) {
                for (InetAddress inetAddress : c(value)) {
                    boolean z12 = inetAddress instanceof Inet4Address;
                    if (!z12 || !z10) {
                        if (z12 || !z11) {
                            if (c(z12, inetAddress, strArr)) {
                                if (!TextUtils.isEmpty(strArr[0]) && !TextUtils.isEmpty(strArr[1])) {
                                    Map<String, String> map2 = tt;
                                    map2.put("local_ipv4", strArr[0]);
                                    map2.put("local_ipv6", strArr[1]);
                                    return;
                                }
                            } else {
                                String hostAddress = inetAddress.getHostAddress();
                                if (!TextUtils.isEmpty(hostAddress) && !hostAddress.startsWith("127")) {
                                    if (z12) {
                                        x.c(((com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service")).encryptAESWithCBC(hostAddress), cVar, i10);
                                        strArr[0] = hostAddress;
                                        c cVar2 = f12066n;
                                        if (cVar2 != null) {
                                            cVar2.c(hostAddress);
                                        }
                                        if (z11) {
                                            Map<String, String> map3 = tt;
                                            map3.put("local_ipv4", hostAddress);
                                            map3.put("local_ipv6", strArr[1]);
                                            return;
                                        }
                                        z10 = true;
                                    } else {
                                        int iIndexOf = hostAddress.indexOf(37);
                                        if (iIndexOf >= 0) {
                                            hostAddress = hostAddress.substring(0, iIndexOf);
                                        }
                                        if (c(hostAddress)) {
                                            x.tt(((com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service")).encryptAESWithCBC(hostAddress), cVar, i10);
                                            strArr[1] = hostAddress;
                                            c cVar3 = f12066n;
                                            if (cVar3 != null) {
                                                cVar3.tt(hostAddress);
                                            }
                                            if (z10) {
                                                Map<String, String> map4 = tt;
                                                map4.put("local_ipv4", strArr[0]);
                                                map4.put("local_ipv6", hostAddress);
                                                return;
                                            }
                                            z11 = true;
                                        } else {
                                            continue;
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

    private static List<InetAddress> c(NetworkInterface networkInterface) {
        if (networkInterface == null) {
            return Collections.emptyList();
        }
        try {
            Object objC = n.c(networkInterface, "java.net.NetworkInterface", "addrs", null);
            if (!(objC instanceof InetAddress[])) {
                return Collections.list(networkInterface.getInetAddresses());
            }
            return Arrays.asList((InetAddress[]) objC);
        } catch (Throwable unused) {
            return Collections.list(networkInterface.getInetAddresses());
        }
    }

    private static boolean c(boolean z10, InetAddress inetAddress, String[] strArr) {
        Field declaredField;
        if (z10) {
            try {
                if (!TextUtils.isEmpty(strArr[0])) {
                    return true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (!z10 && !TextUtils.isEmpty(strArr[1])) {
            return true;
        }
        if (z10) {
            declaredField = InetAddress.class.getDeclaredField("holder");
        } else {
            declaredField = Inet6Address.class.getDeclaredField("holder6");
        }
        declaredField.setAccessible(true);
        Object obj = declaredField.get(inetAddress);
        Class<?> cls = obj.getClass();
        if (z10) {
            Field declaredField2 = cls.getDeclaredField("address");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            int iIntValue = obj2 instanceof Integer ? ((Integer) obj2).intValue() : 0;
            byte[] bArr = {(byte) ((iIntValue >>> 24) & 255), (byte) ((iIntValue >>> 16) & 255), (byte) ((iIntValue >>> 8) & 255), (byte) (iIntValue & 255)};
            String strTt = tt(bArr);
            if (bArr[0] != 127) {
                strArr[0] = strTt;
            }
        } else {
            Field declaredField3 = cls.getDeclaredField("ipaddress");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj);
            if (obj3 instanceof byte[]) {
                String strC = c((byte[]) obj3);
                if (!c(strC)) {
                    return true;
                }
                strArr[1] = strC;
            }
        }
        return true;
    }

    private static String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(39);
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = i10 << 1;
            sb2.append(Integer.toHexString(((bArr[i11] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i11 + 1] & 255)));
            if (i10 < 7) {
                sb2.append(":");
            }
        }
        return sb2.toString();
    }

    private static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if ((cCharAt != '2' && cCharAt != '3' && cCharAt != '5') || str.length() < 2) {
            return false;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            return true;
        }
        if (cCharAt2 < 'a' || cCharAt2 > 'f') {
            return cCharAt2 >= 'A' && cCharAt2 <= 'F';
        }
        return true;
    }

    public static boolean c(com.byazt.dna.c cVar, boolean z10, com.byazt.lz.ve veVar) {
        if (!c(veVar)) {
            return false;
        }
        if (!z10) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(cVar.getData());
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null && !jSONObjectOptJSONObject.isNull("name") && "tt_inner_isw".equals(jSONObjectOptJSONObject.optString("name"))) {
                    return jSONObjectOptJSONObject.optBoolean(HmInputMappingContent.FIELD_VALUE, true);
                }
            }
        } catch (JSONException unused) {
        }
        return true;
    }

    public static boolean c(com.byazt.lz.ve veVar) {
        if (!TextUtils.isEmpty(f12064a)) {
            return !TextUtils.equals("0", f12064a);
        }
        Map<String, Object> mapSp = veVar.sp();
        if (mapSp != null) {
            Object obj = mapSp.get("uip");
            if (obj instanceof String) {
                String str = (String) obj;
                f12064a = str;
                return !TextUtils.equals("0", str);
            }
        }
        f12064a = "1";
        return true;
    }
}
