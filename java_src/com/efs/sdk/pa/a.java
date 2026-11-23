package com.efs.sdk.pa;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements PAANRListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PAFactory f26598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PATraceListener f26599b;

    public a(PAFactory pAFactory) {
        this.f26598a = pAFactory;
        this.f26599b = pAFactory.getTraceListener();
        boolean zEnableTracer = pAFactory.getConfigManager().enableTracer();
        PATraceListener pATraceListener = this.f26599b;
        if (pATraceListener != null) {
            pATraceListener.onCheck(zEnableTracer);
        }
    }

    @Override // com.efs.sdk.pa.PAANRListener
    public final void anrStack(String str) {
        if (str == null || str.length() <= 200) {
            return;
        }
        c.a(this.f26598a, "patrace", str);
        PATraceListener pATraceListener = this.f26599b;
        if (pATraceListener != null) {
            pATraceListener.onAnrTrace();
        }
    }

    @Override // com.efs.sdk.pa.PAANRListener
    public final void unexcept(Object obj) {
        PATraceListener pATraceListener = this.f26599b;
        if (pATraceListener != null) {
            pATraceListener.onUnexcept(obj);
        }
    }
}
