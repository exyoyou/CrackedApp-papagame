package com.czhj.sdk.common.Database;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public interface SQLiteLisenter {
    void onFailed(Error error);

    void onSuccess(List<?> list);
}
