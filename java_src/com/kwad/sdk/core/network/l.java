package com.kwad.sdk.core.network;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.idc.DomainException;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.export.proxy.AdHttpProxy;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.by;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l<R extends f, T extends BaseResultData> extends a<R> {
    public static String HTTP_CODE_ERROR_MSG = "网络错误";
    private static final String TAG = "Networking";

    @Nullable
    private g<R, T> mListener = null;
    private final com.kwad.sdk.core.network.b.b mMonitorRecorder = com.kwad.sdk.core.network.b.c.MD();

    private void checkAndSetHasData(BaseResultData baseResultData) {
        if (baseResultData.hasData()) {
            this.mMonitorRecorder.ey(1);
        }
    }

    private void checkIpDirect(c cVar) {
        com.kwad.sdk.service.a.f fVar;
        if (cVar == null || cVar.Mf() || (fVar = (com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)) == null || !aq.isNetworkConnected(fVar.getContext())) {
            return;
        }
        com.kwad.sdk.ip.direct.a.Rs();
    }

    private String getHostTypeByUrl(@NonNull String str) {
        return str.contains("/rest/zt/emoticon/package/list") ? "zt" : "api";
    }

    private void notifyOnErrorListener(@NonNull R r10, c cVar, String str) {
        String url = r10.getUrl();
        DomainException domainException = new DomainException(cVar.aSW, cVar.aSX);
        com.kwad.sdk.core.network.idc.a.Mo().a(url, getHostTypeByUrl(url), domainException);
        notifyOnErrorListener(r10, cVar.code, str);
    }

    private void notifyOnStartRequest(@NonNull R r10) {
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onStartRequest(r10);
    }

    private void notifyOnSuccess(@NonNull R r10, T t10) {
        if (com.kwad.sdk.core.network.idc.a.Mo().Mq()) {
            String hostTypeByUrl = getHostTypeByUrl(r10.getUrl());
            if ("api".equals(hostTypeByUrl)) {
                com.kwad.sdk.core.network.idc.a.Mo().eN(hostTypeByUrl);
            }
        }
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onSuccess(r10, t10);
        this.mMonitorRecorder.MC();
    }

    private void onRequest(@NonNull g<R, T> gVar) {
        this.mMonitorRecorder.Mw();
        this.mListener = gVar;
    }

    private void parseCommonData(String str, String str2) {
        try {
            q.Mj().X(str, new JSONObject(str2).optString("requestSessionData"));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    private void reportSdkCaughtException(Throwable th) {
        if (enableCrashReport()) {
            ServiceProvider.reportSdkCaughtException(th);
        } else {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
    }

    private void setMonitorRequestId(@NonNull f fVar) {
        Map<String, String> header = fVar.getHeader();
        if (header != null) {
            String str = header.get(d.TRACK_ID_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.mMonitorRecorder.eX(str);
        }
    }

    protected void afterParseData(T t10) {
    }

    @Override // com.kwad.sdk.core.network.a
    public void cancel() {
        super.cancel();
        this.mListener = null;
    }

    protected boolean enableCrashReport() {
        return true;
    }

    protected boolean enableMonitorReport() {
        return true;
    }

    @Override // com.kwad.sdk.core.network.a
    @WorkerThread
    protected void fetchImpl() {
        R r10 = null;
        c cVarDoPost = null;
        try {
            this.mMonitorRecorder.MA();
            R rCreateRequest = createRequest();
            try {
                notifyOnStartRequest(rCreateRequest);
                this.mMonitorRecorder.eT(rCreateRequest.getUrl()).eU(rCreateRequest.getUrl());
                setMonitorRequestId(rCreateRequest);
                if (aq.isNetworkConnected(((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext())) {
                    try {
                        String url = rCreateRequest.getUrl();
                        AdHttpProxy adHttpProxyEG = com.kwad.sdk.h.EG();
                        if (adHttpProxyEG instanceof com.kwad.sdk.core.network.c.b) {
                            this.mMonitorRecorder.eW("ok_http").Mz();
                        } else {
                            this.mMonitorRecorder.eW("http").Mz();
                        }
                        cVarDoPost = isPostByJson() ? adHttpProxyEG.doPost(url, rCreateRequest.getHeader(), rCreateRequest.getBody()) : adHttpProxyEG.doPost(url, rCreateRequest.getHeader(), rCreateRequest.getBodyMap());
                        com.kwad.sdk.core.d.c.i(TAG, "url: " + url + ", response: " + cVarDoPost);
                    } catch (Exception e10) {
                        notifyOnErrorListener(rCreateRequest, e.aTj.errorCode, by.y(e10));
                        com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                        this.mMonitorRecorder.eV("requestError:" + e10.getMessage());
                    }
                    this.mMonitorRecorder.Mx().My().eA(com.kwad.sdk.ip.direct.a.getType());
                    try {
                        onResponse(rCreateRequest, cVarDoPost);
                    } catch (Exception e11) {
                        notifyOnErrorListener(rCreateRequest, e.aTj.errorCode, by.y(e11));
                        this.mMonitorRecorder.eV("onResponseError:" + e11.getMessage());
                        com.kwad.sdk.core.d.c.w(TAG, "jky onResponseError: " + rCreateRequest.getUrl());
                        com.kwad.sdk.core.d.c.printStackTraceOnly(e11);
                    }
                } else {
                    e eVar = e.aTc;
                    notifyOnErrorListener(rCreateRequest, eVar.errorCode, eVar.msg);
                    this.mMonitorRecorder.ex(e.aTc.errorCode).eV(e.aTc.msg);
                }
                try {
                    if (enableMonitorReport()) {
                        this.mMonitorRecorder.report();
                    }
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                th = th;
                r10 = rCreateRequest;
                try {
                    try {
                        this.mMonitorRecorder.eV("requestError:" + th.getMessage());
                    } catch (Exception unused2) {
                    }
                    notifyOnErrorListener(r10, e.aTj.errorCode, by.y(th));
                    com.kwad.sdk.core.d.c.printStackTrace(th);
                    try {
                        if (enableMonitorReport()) {
                        }
                    } catch (Exception unused3) {
                    }
                } finally {
                    try {
                        if (enableMonitorReport()) {
                            this.mMonitorRecorder.report();
                        }
                    } catch (Exception unused4) {
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected boolean isPostByJson() {
        return true;
    }

    @Override // com.kwad.sdk.core.network.a
    protected void onResponse(R r10, c cVar) {
        if (cVar == null) {
            e eVar = e.aTc;
            notifyOnErrorListener(r10, eVar.errorCode, eVar.msg);
            this.mMonitorRecorder.eV("responseBase is null");
            com.kwad.sdk.core.d.c.e(TAG, "request responseBase is null");
            return;
        }
        this.mMonitorRecorder.ex(cVar.code);
        checkIpDirect(cVar);
        if (TextUtils.isEmpty(cVar.aSY) || !cVar.Mf()) {
            notifyOnErrorListener(r10, cVar, HTTP_CODE_ERROR_MSG);
            this.mMonitorRecorder.eV("httpCodeError:" + cVar.code + ":" + cVar.aSY);
            StringBuilder sb2 = new StringBuilder("request responseBase httpCodeError:");
            sb2.append(cVar.code);
            com.kwad.sdk.core.d.c.w(TAG, sb2.toString());
            return;
        }
        try {
            parseCommonData(r10.getUrl(), cVar.aSY);
            BaseResultData data = parseData(cVar.aSY);
            afterParseData(data);
            String str = cVar.aSY;
            if (str != null) {
                this.mMonitorRecorder.aE(str.length()).MB().ez(data.result);
            }
            if (!data.isResultOk()) {
                this.mMonitorRecorder.eV("serverCodeError:" + data.result + ":" + data.errorMsg);
                if (data.notifyFailOnResultError()) {
                    notifyOnErrorListener(r10, data.result, data.errorMsg);
                    return;
                }
            }
            if (data.isDataEmpty()) {
                notifyOnErrorListener(r10, e.aTe.errorCode, !TextUtils.isEmpty(data.testErrorMsg) ? data.testErrorMsg : e.aTe.msg);
            } else {
                checkAndSetHasData(data);
                notifyOnSuccess(r10, data);
            }
        } catch (Exception e10) {
            e eVar2 = e.aTd;
            notifyOnErrorListener(r10, eVar2.errorCode, eVar2.msg);
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            this.mMonitorRecorder.eV("parseDataError:" + e10.getMessage());
        }
    }

    @NonNull
    protected abstract T parseData(String str);

    public void request(@NonNull g<R, T> gVar) {
        try {
            onRequest(gVar);
            fetch();
        } catch (Throwable th) {
            notifyOnErrorListener((f) null, e.aTj.errorCode, by.y(th));
            reportSdkCaughtException(th);
        }
    }

    private void notifyOnErrorListener(@NonNull R r10, int i10, String str) {
        try {
            h.Mg().b(r10, i10);
        } catch (Throwable th) {
            reportSdkCaughtException(th);
        }
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onError(r10, i10, str);
        this.mMonitorRecorder.MC();
    }
}
