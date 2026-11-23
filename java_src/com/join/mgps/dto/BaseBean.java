package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BaseBean implements Serializable {
    public static String toJsonStringOrEmpty(Object target) {
        return target == null ? "" : JsonMapper.toJsonString(target);
    }

    public String toJsonString() {
        return JsonMapper.toJsonString(this);
    }
}
