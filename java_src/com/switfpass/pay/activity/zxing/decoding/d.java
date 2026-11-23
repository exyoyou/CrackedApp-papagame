package com.switfpass.pay.activity.zxing.decoding;

/* JADX INFO: loaded from: classes2.dex */
enum d {
    PREVIEW,
    SUCCESS,
    DONE;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static d[] valuesCustom() {
        d[] dVarArrValuesCustom = values();
        int length = dVarArrValuesCustom.length;
        d[] dVarArr = new d[length];
        System.arraycopy(dVarArrValuesCustom, 0, dVarArr, 0, length);
        return dVarArr;
    }
}
