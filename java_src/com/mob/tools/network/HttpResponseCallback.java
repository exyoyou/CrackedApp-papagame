package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpResponseCallback extends PublicMemberKeeper {
    void onResponse(HttpConnection httpConnection) throws Throwable;
}
