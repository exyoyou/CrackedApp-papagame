package com.mob;

import com.mob.tools.network.NetCommunicator;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class MobCommunicator implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NetCommunicator f75437a;

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

    public MobCommunicator(int i10, String str, String str2) {
        this.f75437a = new NetCommunicator(i10, str, str2);
    }

    public static HashMap<String, String> getCommonDefaultHeaders() throws Throwable {
        return NetCommunicator.getCommonDefaultHeaders();
    }

    public <T> void request(HashMap<String, Object> map, String str, boolean z10, Callback<T> callback) {
        request(true, null, map, str, z10, callback);
    }

    public <T> T requestSynchronized(HashMap<String, Object> map, String str, boolean z10) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, map, str, z10);
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.f75437a.setThreadPool(threadPoolExecutor);
    }

    public <T> void request(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10, Callback<T> callback) {
        request(true, map, map2, str, z10, callback);
    }

    public <T> T requestSynchronized(HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z10) throws Throwable {
        return (T) requestSynchronized(true, map, map2, str, z10);
    }

    public <T> void request(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11, final Callback<T> callback) {
        if (callback == null) {
            this.f75437a.request(z10, map, map2, str, z11, null);
        } else {
            this.f75437a.request(z10, map, map2, str, z11, new NetCommunicator.Callback<T>() { // from class: com.mob.MobCommunicator.1
                @Override // com.mob.tools.network.NetCommunicator.Callback
                public void onResultError(Throwable th) {
                    callback.onResultError(th);
                }

                @Override // com.mob.tools.network.NetCommunicator.Callback
                public void onResultOk(T t10) {
                    callback.onResultOk(t10);
                }
            });
        }
    }

    public <T> T requestSynchronized(String str, String str2, boolean z10) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, str, str2, z10);
    }

    public <T> T requestSynchronized(HashMap<String, String> map, String str, String str2, boolean z10) throws Throwable {
        return (T) requestSynchronized(true, map, str, str2, z10);
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, HashMap<String, Object> map2, String str, boolean z11) throws Throwable {
        return (T) this.f75437a.requestSynchronized(z10, map, map2, str, z11);
    }

    public <T> T requestSynchronized(boolean z10, HashMap<String, String> map, String str, String str2, boolean z11) throws Throwable {
        return (T) this.f75437a.requestSynchronized(z10, map, str, str2, z11);
    }
}
