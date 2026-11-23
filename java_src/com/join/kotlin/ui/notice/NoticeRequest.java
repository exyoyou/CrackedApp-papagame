package com.join.kotlin.ui.notice;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.sigmob.sdk.base.mta.PointCategory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR(\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/coupon/NoticeListData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "getNoticeData", "", PointCategory.REQUEST, "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/mgps/dto/RequestGameIdArgs;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NoticeRequest {

    @Nullable
    private Call<ResponseModel<NoticeListData>> result;

    @NotNull
    private MutableLiveData<ResponseModel<NoticeListData>> resultData = new MutableLiveData<>();

    public final void getNoticeData(@NotNull final RequestModel<RequestGameIdArgs> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Call<ResponseModel<NoticeListData>> callH1 = i.P0().N0().H1(request.makeSign());
        this.result = callH1;
        if (callH1 != null) {
            callH1.enqueue(new Callback<ResponseModel<NoticeListData>>() { // from class: com.join.kotlin.ui.notice.NoticeRequest.getNoticeData.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<NoticeListData>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<NoticeListData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<NoticeListData>> call, Response<ResponseModel<NoticeListData>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<NoticeListData> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultData().setValue(responseModel);
                    } else {
                        ResponseModel<NoticeListData> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setPage(request.getArgs().getPage());
                        }
                        this.getResultData().setValue(responseModelBody);
                    }
                }
            });
        }
    }

    @Nullable
    public final Call<ResponseModel<NoticeListData>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<NoticeListData>> getResultData() {
        return this.resultData;
    }

    public final void setResult(@Nullable Call<ResponseModel<NoticeListData>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<NoticeListData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
