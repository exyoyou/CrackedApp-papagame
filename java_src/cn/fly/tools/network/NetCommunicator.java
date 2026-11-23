package cn.fly.tools.network;

import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.FlyProduct;
import cn.fly.commons.ad;
import cn.fly.commons.f;
import cn.fly.commons.q;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.b.c;
import cn.fly.tools.proguard.PublicMemberKeeper;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FlyRSA;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.UIHandler;
import cn.fly.tools.utils.i;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public class NetCommunicator implements PublicMemberKeeper {
    public static final String KEY_DUID_PREVIOUS = "duidPrevious";
    public static final String KEY_IS_MODIFIED = "isModified";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BigInteger f2037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BigInteger f2038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FlyRSA f2039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NetworkHelper f2040e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NetworkHelper.NetworkTimeOut f2041f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ThreadPoolExecutor f2042g;
    public static final String KEY_DUID = x.b("004?cbcfchcb");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadPoolExecutor f2036a = new ThreadPoolExecutor(3, 20, 60, TimeUnit.SECONDS, new LinkedBlockingDeque());

    public static class Callback<T> implements PublicMemberKeeper {
        public void onResultError(Throwable th) {
        }

        public void onResultOk(T t10) {
        }
    }

    public static class NetworkError extends Exception implements PublicMemberKeeper {
        private static final long serialVersionUID = -8447657431687664787L;

        public NetworkError(String str) {
            super(str);
        }
    }

    public NetCommunicator(int i10, String str, String str2) {
        this(i10, str, str2, null);
    }

    public static String checkHRU(String str) {
        return C1293r.b(str, true);
    }

    public static String checkHttpRequestUrl(String str) {
        return C1293r.b(str);
    }

    public static String dynaMU(String str) {
        return C1293r.a(str, true);
    }

    public static String dynamicModifyUrl(String str) {
        return C1293r.a(str);
    }

    public static HashMap<String, String> getCommonDefaultHeaders() throws Throwable {
        HashMap<String, String> map = new HashMap<>();
        map.put(x.b("003DdgCePdb"), q.a());
        map.put(x.b("013^djehPeBcigjddcb edh%chZh-db"), ad.e());
        map.put(x.b("004(cecjchcb"), c.a(FlySDK.getContext()).d().ap());
        return map;
    }

    public static synchronized String getDUID(FlyProduct flyProduct) {
        return f.a(flyProduct);
    }

    public static synchronized HashMap<String, Object> getDUIDWithModifyInfo(FlyProduct flyProduct) {
        return f.b(flyProduct);
    }

    public void addTcpIntercept(String str) {
    }

    public void removeTcpIntercept(String str) {
    }

    public <T> void request(HashMap<String, Object> map, String str, boolean z10, Callback<T> callback) {
        request(true, null, map, str, z10, callback);
    }

    public <T> T requestSynchronized(HashMap<String, Object> map, String str, boolean z10) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, map, str, z10);
    }

    public String requestSynchronizedGet(String str, HashMap<String, Object> map, HashMap<String, String> map2) throws Throwable {
        return this.f2040e.httpGetNew(str, map, map2, this.f2041f);
    }

    public <T> T requestWithoutEncode(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11) throws Throwable {
        return (T) a(z10, map, a(map2), str, true, false, z11);
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.f2042g = threadPoolExecutor;
    }

    public NetCommunicator(int i10, String str, String str2, NetworkHelper.NetworkTimeOut networkTimeOut) {
        this.f2039d = new FlyRSA(i10);
        this.f2037b = new BigInteger(str, 16);
        this.f2038c = new BigInteger(str2, 16);
        this.f2040e = new NetworkHelper();
        if (networkTimeOut != null) {
            this.f2041f = networkTimeOut;
        } else {
            NetworkHelper.NetworkTimeOut networkTimeOut2 = new NetworkHelper.NetworkTimeOut();
            this.f2041f = networkTimeOut2;
            networkTimeOut2.readTimout = 30000;
            networkTimeOut2.connectionTimeout = 5000;
        }
        this.f2042g = f2036a;
    }

    public <T> void request(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10, Callback<T> callback) {
        request(true, map, map2, str, z10, callback);
    }

    public <T> T requestSynchronized(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10) throws Throwable {
        return (T) requestSynchronized(true, map, map2, str, z10);
    }

    private String a(HashMap<String, Object> map) {
        if (map == null) {
            return "{}";
        }
        String strFromHashMap = HashonHelper.fromHashMap(map);
        return strFromHashMap.length() == 0 ? "{}" : strFromHashMap;
    }

    public <T> void request(final boolean z10, final HashMap<String, String> map, final HashMap<String, Object> map2, final String str, final boolean z11, final Callback<T> callback) {
        this.f2042g.execute(new i() { // from class: cn.fly.tools.network.NetCommunicator.1
            @Override // cn.fly.tools.utils.i
            public void a() {
                try {
                    final Object objRequestSynchronized = NetCommunicator.this.requestSynchronized(z10, map, map2, str, z11);
                    if (callback != null) {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tools.network.NetCommunicator.1.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                callback.onResultOk(objRequestSynchronized);
                                return false;
                            }
                        });
                    }
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                    if (callback != null) {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tools.network.NetCommunicator.1.2
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                callback.onResultError(th);
                                return false;
                            }
                        });
                    }
                }
            }
        });
    }

    public <T> T requestSynchronized(String str, String str2, boolean z10) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, str, str2, z10);
    }

    public <T> T requestSynchronized(HashMap<String, String> map, String str, String str2, boolean z10) throws Throwable {
        return (T) requestSynchronized(true, map, str, str2, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T a(boolean z10, HashMap<String, String> map, String str, String str2, boolean z11, boolean z12, boolean z13) throws Throwable {
        byte[] bArrC = C1293r.c();
        byte[] bArrA = a(bArrC, str, z11);
        String[] strArr = new String[1];
        HttpResponseCallback httpResponseCallbackA = a(bArrC, strArr, z13);
        if (z12) {
            String strEncodeToString = Base64.encodeToString(bArrA, 2);
            HashMap<String, String> mapA = a(z10, map, str, strEncodeToString.getBytes("utf-8").length);
            StringPart stringPart = new StringPart();
            stringPart.append(strEncodeToString);
            FlyLog.getInstance().d(">>>  request(" + str2 + "): " + str + "\nheader = " + mapA.toString(), new Object[0]);
            this.f2040e.rawPost(str2, mapA, stringPart, -1, httpResponseCallbackA, this.f2041f);
        } else {
            HashMap<String, String> mapA2 = a(z10, map, str, -1);
            FlyLog.getInstance().d(">>>  request(" + str2 + "): " + str + "\nheader = " + mapA2.toString(), new Object[0]);
            this.f2040e.httpPostWithBytes(str2, bArrA, mapA2, -1, httpResponseCallbackA, this.f2041f);
        }
        if (strArr[0] == 0) {
            return null;
        }
        FlyLog.getInstance().d(">>> response(" + str2 + "): " + strArr[0], new Object[0]);
        return z13 ? (T) a(strArr[0]) : (T) strArr[0];
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11) throws Throwable {
        return (T) a(z10, map, a(map2), str, z11, true, true);
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, String str, String str2, boolean z11) throws Throwable {
        return (T) a(z10, map, str, str2, z11, true, true);
    }

    private byte[] a(byte[] bArr, String str, boolean z10) throws Throwable {
        byte[] bytes;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        GZIPOutputStream gZIPOutputStream;
        Closeable closeable = null;
        if (z10) {
            try {
                byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                    try {
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(gZIPOutputStream);
                        try {
                            bufferedOutputStream.write(str.getBytes("utf-8"));
                            bufferedOutputStream.flush();
                            C1293r.a(bufferedOutputStream, gZIPOutputStream, byteArrayOutputStream2);
                            bytes = byteArrayOutputStream2.toByteArray();
                        } catch (Throwable th) {
                            th = th;
                            closeable = bufferedOutputStream;
                            C1293r.a(closeable, gZIPOutputStream, byteArrayOutputStream2);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream2 = null;
                gZIPOutputStream = null;
            }
        } else {
            bytes = str.getBytes("utf-8");
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    byte[] bArrEncode = this.f2039d.encode(bArr, this.f2037b, this.f2038c);
                    dataOutputStream.writeInt(bArrEncode.length);
                    dataOutputStream.write(bArrEncode);
                    byte[] bArrAES128Encode = Data.AES128Encode(bArr, bytes);
                    dataOutputStream.writeInt(bArrAES128Encode.length);
                    dataOutputStream.write(bArrAES128Encode);
                    dataOutputStream.flush();
                    C1293r.a(dataOutputStream, byteArrayOutputStream);
                    return byteArrayOutputStream.toByteArray();
                } catch (Throwable th5) {
                    th = th5;
                    closeable = dataOutputStream;
                    C1293r.a(closeable, byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            byteArrayOutputStream = null;
        }
    }

    private HashMap<String, String> a(boolean z10, HashMap<String, String> map, String str, int i10) throws Throwable {
        HashMap<String, String> map2;
        if (!z10) {
            map2 = null;
        } else if (i10 > 0) {
            map2 = a(str, i10);
        } else {
            map2 = getCommonDefaultHeaders();
        }
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        if (map != null) {
            map2.putAll(map);
        }
        return map2;
    }

    private HashMap<String, String> a(String str, int i10) throws Throwable {
        HashMap<String, String> commonDefaultHeaders = getCommonDefaultHeaders();
        commonDefaultHeaders.put(x.b("004%ehchdiDd"), Data.MD5(str + FlySDK.getAppSecret()));
        commonDefaultHeaders.put(x.b("014Jdccj.dhedhVgjedKedWdi*hg"), String.valueOf(i10));
        return commonDefaultHeaders;
    }

    private HttpResponseCallback a(final byte[] bArr, final String[] strArr, final boolean z10) {
        return new HttpResponseCallback() { // from class: cn.fly.tools.network.NetCommunicator.2
            @Override // cn.fly.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStream inputStream;
                int responseCode = httpConnection.getResponseCode();
                ByteArrayOutputStream byteArrayOutputStream = null;
                try {
                    inputStream = responseCode == 200 ? httpConnection.getInputStream() : httpConnection.getErrorStream();
                    try {
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                        try {
                            byte[] bArr2 = new byte[1024];
                            for (int i10 = inputStream.read(bArr2); i10 != -1; i10 = inputStream.read(bArr2)) {
                                byteArrayOutputStream2.write(bArr2, 0, i10);
                            }
                            byte[] byteArray = byteArrayOutputStream2.toByteArray();
                            if (responseCode != 200) {
                                HashMap mapFromJson = HashonHelper.fromJson(new String(byteArray, "utf-8"));
                                mapFromJson.put(x.b("010ghhiHdk@hchCcfeh"), Integer.valueOf(responseCode));
                                throw new NetworkError(HashonHelper.fromHashMap(mapFromJson));
                            }
                            if (z10) {
                                long jA = NetCommunicator.this.a(httpConnection);
                                if (jA == -1 || jA != byteArray.length) {
                                    HashMap map = new HashMap();
                                    map.put(x.b("010ghhi]dk[hchGcfeh"), Integer.valueOf(responseCode));
                                    map.put(x.b("006Keh6hch3cfeh"), -2);
                                    map.put(x.b("005e>cicicjci"), "Illegal content length");
                                    throw new NetworkError(HashonHelper.fromHashMap(map));
                                }
                                strArr[0] = NetCommunicator.this.a(bArr, byteArray);
                            } else {
                                strArr[0] = new String(byteArray, "utf-8");
                            }
                            C1293r.a(byteArrayOutputStream2, inputStream);
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            C1293r.a(byteArrayOutputStream, inputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(HttpConnection httpConnection) throws Throwable {
        List<String> listA = a(httpConnection, x.b("0148dccjWdhedhNgjedHed0di1hg"));
        if (listA == null || listA.size() <= 0) {
            return -1L;
        }
        return Long.parseLong(listA.get(0));
    }

    private List<String> a(HttpConnection httpConnection, String str) throws Throwable {
        Map<String, List<String>> headerFields = httpConnection.getHeaderFields();
        if (headerFields == null || headerFields.isEmpty()) {
            return null;
        }
        for (String str2 : headerFields.keySet()) {
            if (str2 != null && str2.equals(str)) {
                return headerFields.get(str2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(byte[] bArr, byte[] bArr2) throws Throwable {
        return new String(Data.AES128Decode(bArr, Base64.decode(bArr2, 2)), "utf-8");
    }

    private Object a(String str) throws Throwable {
        if (str != null) {
            HashMap mapFromJson = HashonHelper.fromJson(str.trim());
            if (!mapFromJson.isEmpty()) {
                Object obj = mapFromJson.get(x.b("003Qci:e;eh"));
                return obj == null ? mapFromJson.get(x.b("004?cb7chc")) : obj;
            }
            HashMap map = new HashMap();
            map.put(x.b("006Meh7hchCcfeh"), -1);
            map.put(x.b("005e*cicicjci"), "RS is empty");
            throw new NetworkError(HashonHelper.fromHashMap(map));
        }
        HashMap map2 = new HashMap();
        map2.put(x.b("006'eh.hch6cfeh"), -1);
        map2.put(x.b("005eKcicicjci"), "RS is empty");
        throw new NetworkError(HashonHelper.fromHashMap(map2));
    }
}
