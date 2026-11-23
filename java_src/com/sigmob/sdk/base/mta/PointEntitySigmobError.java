package com.sigmob.sdk.base.mta;

/* JADX INFO: loaded from: classes5.dex */
public final class PointEntitySigmobError extends PointEntitySigmob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f79561a;

    public static PointEntitySigmobError SigmobError(String category, int errCode, String errMsg) {
        PointEntitySigmobError pointEntitySigmobError = new PointEntitySigmobError();
        pointEntitySigmobError.setAc_type("9");
        pointEntitySigmobError.setCategory(category);
        pointEntitySigmobError.setError_code(String.valueOf(errCode));
        pointEntitySigmobError.setError_message(errMsg);
        return pointEntitySigmobError;
    }

    @Override // com.sigmob.sdk.base.mta.PointEntitySigmob
    public String getError_message() {
        return this.f79561a;
    }

    @Override // com.sigmob.sdk.base.mta.PointEntitySigmob
    public void setError_message(String errMsg) {
        this.f79561a = errMsg;
    }
}
