package t7;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"DefaultLocale"})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f97137a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f97138b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f97139c = "UNKNOWN";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f97140d = "WAP";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f97141e = "WIFI";

    public static Map<String, Object> a(String str) throws Throwable {
        String str2;
        long jCurrentTimeMillis;
        HashMap map = new HashMap();
        Object obj = null;
        try {
            try {
                jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    if (allByName != null) {
                        try {
                            try {
                                obj = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            } catch (UnknownHostException e10) {
                                e = e10;
                                str2 = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                                try {
                                    e.printStackTrace();
                                    map.put("remoteInet", null);
                                    map.put("useTime", str2);
                                } catch (Throwable th) {
                                    th = th;
                                    map.put("remoteInet", obj);
                                    map.put("useTime", str2);
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            obj = allByName;
                            str2 = null;
                            map.put("remoteInet", obj);
                            map.put("useTime", str2);
                            throw th;
                        }
                    }
                    map.put("remoteInet", allByName);
                    map.put("useTime", obj);
                } catch (UnknownHostException e11) {
                    e = e11;
                    str2 = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                    e.printStackTrace();
                    map.put("remoteInet", null);
                    map.put("useTime", str2);
                    return map;
                }
            } catch (UnknownHostException e12) {
                e = e12;
                jCurrentTimeMillis = 0;
            }
            return map;
        } catch (Throwable th3) {
            th = th3;
            str2 = null;
            map.put("remoteInet", obj);
            map.put("useTime", str2);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x007a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:123), block:B:37:0x007a */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    public static String b(String str) throws Throwable {
        BufferedReader bufferedReader;
        InterruptedException e10;
        IOException e11;
        BufferedReader bufferedReader2;
        Process process;
        ?? r10;
        String str2 = "";
        BufferedReader bufferedReader3 = null;
        try {
            try {
                str = Runtime.getRuntime().exec("getprop net." + str);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(str.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            str2 = str2 + line;
                        } catch (IOException e12) {
                            e11 = e12;
                            e11.printStackTrace();
                            r10 = str;
                            process = str;
                            if (bufferedReader != null) {
                            }
                            process.destroy();
                            return str2.trim();
                        } catch (InterruptedException e13) {
                            e10 = e13;
                            e10.printStackTrace();
                            process = str;
                            if (bufferedReader != null) {
                                r10 = str;
                            }
                            process.destroy();
                            return str2.trim();
                        }
                    }
                    bufferedReader.close();
                    str.waitFor();
                    r10 = str;
                } catch (IOException e14) {
                    bufferedReader = null;
                    e11 = e14;
                } catch (InterruptedException e15) {
                    bufferedReader = null;
                    e10 = e15;
                } catch (Throwable th) {
                    th = th;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (Exception unused) {
                            throw th;
                        }
                    }
                    str.destroy();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader3 = bufferedReader2;
            }
        } catch (IOException e16) {
            bufferedReader = null;
            e11 = e16;
            str = 0;
        } catch (InterruptedException e17) {
            bufferedReader = null;
            e10 = e17;
            str = 0;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
        try {
            bufferedReader.close();
            process = r10;
            process.destroy();
        } catch (Exception unused2) {
        }
        return str2.trim();
    }

    public static String c() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String d(InputStream inputStream) {
        byte[] bArr = new byte[1024];
        String str = "";
        while (true) {
            try {
                try {
                    try {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        str = str + new String(bArr, 0, i10, "gbk");
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                } catch (IOException e11) {
                    e11.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                throw th;
            }
        }
        inputStream.close();
        return str;
    }

    public static Boolean e(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return Boolean.FALSE;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) ? Boolean.FALSE : Boolean.TRUE;
    }
}
