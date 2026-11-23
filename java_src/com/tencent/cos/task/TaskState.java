package com.tencent.cos.task;

import com.alipay.sdk.util.f;
import com.sigmob.sdk.base.common.a;

/* JADX INFO: loaded from: classes2.dex */
public enum TaskState {
    WAITING(0, "waitting"),
    SENDING(1, "sending"),
    FINISH(2, a.f78868b),
    SUCCEED(3, "succeed"),
    FAILED(4, f.f7234h),
    PAUSE(5, a.f78876j),
    CANCEL(6, "cancel"),
    RETRY(7, "retry"),
    DISABLE(8, "disable");

    private int code;
    private String desc;

    TaskState(int i10, String str) {
        this.code = i10;
        this.desc = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getDesc() {
        return this.desc;
    }
}
