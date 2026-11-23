package cn.fly.commons.cc;

import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import java.io.OutputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class f implements y<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final NetworkHelper f1220a = new NetworkHelper();

    public static String a(String str, HashMap<String, Object> map, HashMap<String, String> map2) throws Throwable {
        return f1220a.httpGet(str, map, map2);
    }

    public static String a(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        return f1220a.httpPostNew(str, map, map2, networkTimeOut);
    }

    public static void a(String str, OutputStream outputStream, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        f1220a.download(str, outputStream, networkTimeOut);
    }

    public static <T> T a(NetCommunicator netCommunicator, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10) throws Throwable {
        return (T) netCommunicator.requestSynchronized(false, map, map2, str, z10);
    }

    @Override // cn.fly.commons.cc.y
    public boolean a(f fVar, Class<f> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("hGet".equals(str)) {
            try {
                objArr2[0] = a((String) objArr[0], (HashMap<String, Object>) objArr[1], (HashMap<String, String>) objArr[2]);
            } catch (Throwable th) {
                thArr[0] = th;
                objArr2[0] = null;
            }
            return true;
        }
        if (com.kuaishou.weapon.p0.t.f74894s.equals(str)) {
            try {
                objArr2[0] = a((String) objArr[0], (HashMap) objArr[1], (HashMap) objArr[2], (NetworkHelper.NetworkTimeOut) objArr[3]);
            } catch (Throwable th2) {
                thArr[0] = th2;
                objArr2[0] = null;
            }
            return true;
        }
        if (cn.fly.commons.n.a("008*babide!ce=bi+b>ba").equals(str)) {
            try {
                a((String) objArr[0], (OutputStream) objArr[1], (NetworkHelper.NetworkTimeOut) objArr[2]);
            } catch (Throwable th3) {
                thArr[0] = th3;
                objArr2[0] = null;
            }
            return true;
        }
        if (!cn.fly.commons.n.a("007Obh*d,bccjcaWca").equals(str)) {
            return false;
        }
        try {
            objArr2[0] = a((NetCommunicator) objArr[0], (HashMap) objArr[1], (HashMap) objArr[2], (String) objArr[3], ((Boolean) objArr[4]).booleanValue());
        } catch (Throwable th4) {
            thArr[0] = th4;
            objArr2[0] = null;
        }
        return true;
    }
}
