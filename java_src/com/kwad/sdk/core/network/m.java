package com.kwad.sdk.core.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.network.NormalResultData;
import com.kwad.sdk.core.network.n;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.by;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m<R extends n, T extends NormalResultData> extends a<R> {
    private static final String TAG = "NormalNetworking";

    @Nullable
    private g<R, T> mListener = null;

    private void onRequest(@NonNull g<R, T> gVar) {
        this.mListener = gVar;
    }

    @Override // com.kwad.sdk.core.network.a
    protected void cancel() {
        super.cancel();
        this.mListener = null;
    }

    protected abstract T createResponseData();

    @Override // com.kwad.sdk.core.network.a
    protected void fetchImpl() {
        c cVar;
        R rCreateRequest = createRequest();
        try {
            String url = rCreateRequest.getUrl();
            cVar = rCreateRequest.getMethod().equals("POST") ? com.kwad.sdk.h.EG().doPost(url, rCreateRequest.getHeader(), rCreateRequest.getBody()) : com.kwad.sdk.h.EG().doGet(url, rCreateRequest.getHeader());
            if (cVar == null || cVar.code != 200) {
                com.kwad.sdk.core.d.c.d(TAG, "normal request failed");
            } else {
                com.kwad.sdk.core.d.c.d(TAG, "normal request success:" + cVar.code);
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            cVar = 0 == 0 ? new c() : null;
            cVar.code = -1;
            cVar.aSX = e10;
        }
        onResponse((n) rCreateRequest, cVar);
    }

    protected void parseResponse(T t10, c cVar) {
        t10.parseResponse(cVar);
    }

    public void request(@NonNull g<R, T> gVar) {
        try {
            onRequest(gVar);
            fetch();
        } catch (Throwable th) {
            gVar.onError(null, e.aTj.errorCode, by.y(th));
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kwad.sdk.core.network.a
    public void onResponse(R r10, c cVar) {
        if (this.mListener == null) {
            return;
        }
        if (cVar.Mf()) {
            NormalResultData normalResultDataCreateResponseData = createResponseData();
            parseResponse(normalResultDataCreateResponseData, cVar);
            this.mListener.onSuccess(r10, normalResultDataCreateResponseData);
        } else {
            g<R, T> gVar = this.mListener;
            int i10 = cVar.code;
            Exception exc = cVar.aSX;
            gVar.onError(r10, i10, exc != null ? exc.getMessage() : "");
        }
    }
}
