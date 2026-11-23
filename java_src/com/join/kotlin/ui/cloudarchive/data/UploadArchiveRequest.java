package com.join.kotlin.ui.cloudarchive.data;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0014J\u001e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aR,\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR.\u0010\r\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/UploadArchiveRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "getModeDatas", "", "context", "Landroid/content/Context;", "page", "", "gameId", "", "loadLocalArchive", "loadMyInShop", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UploadArchiveRequest {

    @Nullable
    private Call<ResponseModel<List<ArchiveData>>> result;

    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultData = new MutableLiveData<>();

    /* JADX WARN: Multi-variable type inference failed */
    public final void getModeDatas(@NotNull Context context, int page, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<List<ArchiveData>>> callG1 = i.P0().N0().G1(requestModel);
        this.result = callG1;
        if (callG1 != 0) {
            callG1.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.UploadArchiveRequest.getModeDatas.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends ArchiveData>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends ArchiveData>>> call, Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UploadArchiveRequest.this.getResultData().setValue(response.body());
                    } else {
                        ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        UploadArchiveRequest.this.getResultData().setValue(responseModel);
                    }
                }
            });
        }
    }

    @Nullable
    public final Call<ResponseModel<List<ArchiveData>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultData() {
        return this.resultData;
    }

    public final void loadLocalArchive() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadMyInShop(@NotNull Context context, int page, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<List<ArchiveData>>> callN0 = i.P0().N0().N0(requestModel);
        this.result = callN0;
        if (callN0 != 0) {
            callN0.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.UploadArchiveRequest.loadMyInShop.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends ArchiveData>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends ArchiveData>>> call, Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UploadArchiveRequest.this.getResultData().setValue(response.body());
                    } else {
                        ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        UploadArchiveRequest.this.getResultData().setValue(responseModel);
                    }
                }
            });
        }
    }

    public final void setResult(@Nullable Call<ResponseModel<List<ArchiveData>>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
