package com.tencent.cos.common;

import com.join.mgps.activity.UploadActivity;
import com.sigmob.sdk.base.n;

/* JADX INFO: loaded from: classes2.dex */
public final class BodyValue {
    private static BodyValue value;
    public final String CREATE = "create";
    public final String LIST = "list";
    public final String UPDATE = n.f79591r;
    public final String STAT = "stat";
    public final String MOVE = "move";
    public final String DELETE = "delete";
    public final String UPLOAD = UploadActivity.UPLOAD_RECEIVE;
    public final String UPLOAD_SLICE = "upload_slice";
    public final String UPLOAD_SLICE_INIT = "upload_slice_init";
    public final String UPLOAD_SLICE_DATA = "upload_slice_data";
    public final String UPLOAD_SLICE_FINISH = "upload_slice_finish";
    public final String UPLOAD_SLICE__LIST = "upload_slice_list";

    private BodyValue() {
    }

    public static synchronized BodyValue getInstance() {
        if (value == null) {
            value = new BodyValue();
        }
        return value;
    }
}
