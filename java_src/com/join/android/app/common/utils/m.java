package com.join.android.app.common.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f34790a = "NetWorkUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f34791b = "ctwap";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f34792c = "cmwap";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f34793d = "3gwap";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f34794e = "uniwap";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f34795f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f34796g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f34797h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f34798i = 6;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Uri f34799j = Uri.parse("content://telephony/carriers/preferapn");

    public static int a(Context mContext) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) mContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    g1.c("=====================>wifi网络");
                    return 6;
                }
                if (type == 0) {
                    String defaultHost = Proxy.getDefaultHost();
                    if ("10.0.0.172".equals(defaultHost)) {
                        g1.c("netMode ================== 10.0.0.172");
                        return 4;
                    }
                    if ("10.0.0.200".equals(defaultHost)) {
                        g1.c("netMode ================== 10.0.0.200");
                        return 5;
                    }
                    String extraInfo = activeNetworkInfo.getExtraInfo();
                    g1.c("netMode ================== " + extraInfo);
                    if (extraInfo != null) {
                        String lowerCase = extraInfo.toLowerCase();
                        if (lowerCase.equals(f34792c) || lowerCase.equals(f34793d) || lowerCase.equals(f34794e)) {
                            g1.c("=====================>移动联通wap网络");
                            return 4;
                        }
                    }
                }
                g1.c("net 网络");
                return 6;
            }
            g1.c("=====================>无网络");
            return 6;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 6;
        }
    }

    public static void b(Context context) {
        if (context != null) {
            ((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).disconnect();
        }
    }

    public static int c(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    public static byte d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return (byte) -1;
        }
        if (activeNetworkInfo.getType() != 1 && activeNetworkInfo.getType() == 0) {
            int subtype = activeNetworkInfo.getSubtype();
            if (subtype == 4 || subtype == 1 || subtype == 2) {
                return (byte) 4;
            }
            if (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12 || subtype == 9 || subtype == 10 || subtype == 14 || subtype == 15) {
                return (byte) 3;
            }
            if (subtype == 13) {
                return (byte) 2;
            }
            if (subtype == 20) {
                return (byte) 5;
            }
        }
        return (byte) 1;
    }

    public static String e(Context context) {
        return context != null ? h(((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getIpAddress()) : com.join.mgps.socket.entity.b.f73008j;
    }

    public static final String f() throws Throwable {
        HttpURLConnection httpURLConnection;
        Exception e10;
        int i10 = 3;
        HttpURLConnection httpURLConnection2 = null;
        while (i10 > 0) {
            i10--;
            try {
                httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
                try {
                    try {
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(6000);
                        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                        httpURLConnection.setRequestMethod("GET");
                        if (httpURLConnection.getResponseCode() == 200) {
                            InputStream inputStream = httpURLConnection.getInputStream();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    inputStream.close();
                                    String strOptString = new JSONObject(sb2.substring(sb2.indexOf("{"), sb2.indexOf("}") + 1)).optString("cip", "");
                                    httpURLConnection.disconnect();
                                    return strOptString;
                                }
                                sb2.append(line);
                                sb2.append("\n");
                            }
                        }
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        if (httpURLConnection != null) {
                        }
                        httpURLConnection2 = httpURLConnection;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e12) {
                httpURLConnection = httpURLConnection2;
                e10 = e12;
            } catch (Throwable th2) {
                th = th2;
            }
            httpURLConnection.disconnect();
            httpURLConnection2 = httpURLConnection;
        }
        if (httpURLConnection2 != null) {
            httpURLConnection2.disconnect();
        }
        return "";
    }

    public static String g(Context context) {
        return context != null ? ((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getSSID() : "";
    }

    public static String h(int paramIntip) {
        return (paramIntip & 255) + o0.f49827a + ((paramIntip >> 8) & 255) + o0.f49827a + ((paramIntip >> 16) & 255) + o0.f49827a + ((paramIntip >> 24) & 255);
    }

    public static boolean i(Context context) {
        if (context != null) {
            try {
                NetworkInfo.State state = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(0).getState();
                if (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static boolean j(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean k(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo;
        NetworkInfo activeNetworkInfo;
        if (context == null || (networkInfo = (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1)) == null) {
            return false;
        }
        NetworkInfo.State state = networkInfo.getState();
        return (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 1;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0060  */
    public static final boolean l() throws Throwable {
        HttpURLConnection httpURLConnection;
        Exception e10;
        int i10 = 3;
        HttpURLConnection httpURLConnection2 = null;
        while (i10 > 0) {
            i10--;
            try {
                httpURLConnection = (HttpURLConnection) new URL("https://www.baidu.com/").openConnection();
                try {
                    try {
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(6000);
                        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                        httpURLConnection.setRequestMethod("GET");
                        int responseCode = httpURLConnection.getResponseCode();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("ping status is ");
                        sb2.append(responseCode);
                        httpURLConnection.disconnect();
                        return true;
                    } catch (Exception e11) {
                        e10 = e11;
                        try {
                            Thread.sleep(1000L);
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                        e10.printStackTrace();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        httpURLConnection2 = httpURLConnection;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e13) {
                httpURLConnection = httpURLConnection2;
                e10 = e13;
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }
        if (httpURLConnection2 == null) {
            return false;
        }
        httpURLConnection2.disconnect();
        return false;
    }

    public static boolean m(String ipAddress) {
        try {
            Runtime runtime = Runtime.getRuntime();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("/system/bin/ping -c 1 -w 100 ");
            sb2.append(ipAddress);
            return runtime.exec(sb2.toString()).waitFor() == 0;
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        } catch (InterruptedException e11) {
            e11.printStackTrace();
            return false;
        }
    }
}
