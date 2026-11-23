package com.mob.tools.network;

import com.mob.commons.MobProduct;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.HashonHelper;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class NetCommunicator implements PublicMemberKeeper {
    public static final String KEY_DUID = "duid";
    public static final String KEY_DUID_PREVIOUS = "duidPrevious";
    public static final String KEY_IS_MODIFIED = "isModified";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tools.network.NetCommunicator f75513a;

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

    private static class a<T> extends cn.fly.tools.network.NetCommunicator.Callback<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Callback f75514a;

        public a(Callback callback) {
            this.f75514a = callback;
        }

        @Override // cn.fly.tools.network.NetCommunicator.Callback
        public void onResultError(Throwable th) {
            if (th instanceof cn.fly.tools.network.NetCommunicator.NetworkError) {
                this.f75514a.onResultError(new NetworkError(th.getMessage()));
            } else {
                this.f75514a.onResultError(th);
            }
        }

        @Override // cn.fly.tools.network.NetCommunicator.Callback
        public void onResultOk(T t10) {
            this.f75514a.onResultOk(t10);
        }
    }

    public NetCommunicator(int i10, String str, String str2) {
        this.f75513a = new cn.fly.tools.network.NetCommunicator(i10, str, str2);
    }

    private String a(HashMap<String, Object> map) {
        if (map == null) {
            return "{}";
        }
        String strFromHashMap = HashonHelper.fromHashMap(map);
        return strFromHashMap.length() == 0 ? "{}" : strFromHashMap;
    }

    public static String checkHttpRequestUrl(String str) {
        return cn.fly.tools.network.NetCommunicator.checkHRU(str);
    }

    public static String dynamicModifyUrl(String str) {
        return cn.fly.tools.network.NetCommunicator.dynaMU(str);
    }

    public static HashMap<String, String> getCommonDefaultHeaders() throws Throwable {
        return cn.fly.tools.network.NetCommunicator.getCommonDefaultHeaders();
    }

    public static synchronized String getDUID(MobProduct mobProduct) {
        return cn.fly.tools.network.NetCommunicator.getDUID(mobProduct);
    }

    public static synchronized HashMap<String, Object> getDUIDWithModifyInfo(MobProduct mobProduct) {
        return cn.fly.tools.network.NetCommunicator.getDUIDWithModifyInfo(mobProduct);
    }

    public void addTcpIntercept(String str) {
        try {
            this.f75513a.addTcpIntercept(str);
        } catch (Throwable unused) {
        }
    }

    public void removeTcpIntercept(String str) {
        try {
            this.f75513a.removeTcpIntercept(str);
        } catch (Throwable unused) {
        }
    }

    public <T> void request(HashMap<String, Object> map, String str, boolean z10, Callback<T> callback) {
        request(true, null, map, str, z10, callback);
    }

    public <T> T requestSynchronized(HashMap<String, Object> map, String str, boolean z10) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized((HashMap<String, String>) null, map, str, z10);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }

    public String requestSynchronizedGet(String str, HashMap<String, Object> map, HashMap<String, String> map2) throws Throwable {
        return this.f75513a.requestSynchronizedGet(str, map, map2);
    }

    public <T> T requestWithoutEncode(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized(z10, map, map2, str, z11);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.f75513a.setThreadPool(threadPoolExecutor);
    }

    public <T> void request(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10, Callback<T> callback) {
        request(true, map, map2, str, z10, callback);
    }

    public NetCommunicator(int i10, String str, String str2, NetworkHelper.NetworkTimeOut networkTimeOut) {
        this.f75513a = new cn.fly.tools.network.NetCommunicator(i10, str, str2, NetworkHelper.getTimeoutWrapper(networkTimeOut));
    }

    public <T> void request(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11, Callback<T> callback) {
        this.f75513a.request(z10, map, map2, str, z11, new a(callback));
    }

    public <T> T requestSynchronized(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized(true, map, map2, str, z10);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }

    public <T> T requestSynchronized(String str, String str2, boolean z10) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized((HashMap<String, String>) null, str, str2, z10);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }

    public <T> T requestSynchronized(HashMap<String, String> map, String str, String str2, boolean z10) throws Throwable {
        return (T) requestSynchronized(true, map, str, str2, z10);
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized(z10, map, a(map2), str, z11);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, String str, String str2, boolean z11) throws Throwable {
        try {
            return (T) this.f75513a.requestSynchronized(z10, map, str, str2, z11);
        } catch (cn.fly.tools.network.NetCommunicator.NetworkError e10) {
            throw new NetworkError(e10.getMessage());
        }
    }
}
