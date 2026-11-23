package cn.fly.tools.network;

import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public interface HttpResponseCallback extends PublicMemberKeeper {
    void onResponse(HttpConnection httpConnection) throws Throwable;
}
