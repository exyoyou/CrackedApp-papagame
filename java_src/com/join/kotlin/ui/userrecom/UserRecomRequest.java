package com.join.kotlin.ui.userrecom;

import androidx.lifecycle.MutableLiveData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016R,\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR.\u0010\r\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "getUserRecomDatas", "", PointCategory.REQUEST, "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserRecomRequest {

    @Nullable
    private Call<ResponseModel<List<CollectionBeanSub>>> result;

    @NotNull
    private MutableLiveData<ResponseModel<List<CollectionBeanSub>>> resultData = new MutableLiveData<>();

    @Nullable
    public final Call<ResponseModel<List<CollectionBeanSub>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<CollectionBeanSub>>> getResultData() {
        return this.resultData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void getUserRecomDatas(@NotNull RequestModel<UserRecomRequestArgs> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Call<ResponseModel<List<CollectionBeanSub>>> callU0 = i.P0().N0().U0(request.makeSign());
        this.result = callU0;
        if (callU0 != 0) {
            callU0.enqueue(new Callback<ResponseModel<List<? extends CollectionBeanSub>>>() { // from class: com.join.kotlin.ui.userrecom.UserRecomRequest.getUserRecomDatas.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends CollectionBeanSub>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<CollectionBeanSub>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UserRecomRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends CollectionBeanSub>>> call, Response<ResponseModel<List<? extends CollectionBeanSub>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UserRecomRequest.this.getResultData().setValue(response.body());
                    } else {
                        ResponseModel<List<CollectionBeanSub>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        UserRecomRequest.this.getResultData().setValue(responseModel);
                    }
                }
            });
        }
    }

    public final void setResult(@Nullable Call<ResponseModel<List<CollectionBeanSub>>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<CollectionBeanSub>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
