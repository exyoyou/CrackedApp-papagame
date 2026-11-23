package com.kwad.components.offline.api.core.adInnerEc.longconnection;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class ServerException extends Exception {
    private static final long serialVersionUID = 2951014432365816643L;
    public final int errorCode;
    public final String errorMessage;
    public final int subCode;

    public ServerException(int i10, int i11, String str) {
        this.errorCode = i10;
        this.subCode = i11;
        this.errorMessage = str;
    }
}
