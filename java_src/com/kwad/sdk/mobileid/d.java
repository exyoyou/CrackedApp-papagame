package com.kwad.sdk.mobileid;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    private String biV;
    private String errorReason;
    private boolean success;

    public d(boolean z10, String str) {
        this.success = z10;
        this.errorReason = str;
    }

    public final String Sm() {
        return this.errorReason;
    }

    public final String Sn() {
        return this.biV;
    }

    public final void hb(String str) {
        this.biV = str;
    }

    public final boolean isSuccess() {
        return this.success;
    }

    public final String toString() {
        return "UaidErrorReason{success=" + this.success + ", errorReason='" + this.errorReason + "', extraErrorMsg='" + this.biV + "'}";
    }
}
