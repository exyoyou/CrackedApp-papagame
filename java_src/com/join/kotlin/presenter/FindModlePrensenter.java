package com.join.kotlin.presenter;

import android.content.Context;
import b7.i;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.FindClassifyResultData;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/presenter/FindModlePrensenter;", "Lcom/join/kotlin/presenter/BasePresenter;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "view", "<init>", "(Lcom/join/kotlin/presenter/view/FindHomeView;)V", "rpcGameClient", "Lcom/join/mgps/rpc/interfaces/IRpcGameClient;", "getRpcGameClient", "()Lcom/join/mgps/rpc/interfaces/IRpcGameClient;", "setRpcGameClient", "(Lcom/join/mgps/rpc/interfaces/IRpcGameClient;)V", "isLoading", "", "()Z", "setLoading", "(Z)V", "loadFindChoiceData", "", "context", "Landroid/content/Context;", "arg", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "loadClassfyDatas", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FindModlePrensenter extends BasePresenter<FindHomeView> {
    private boolean isLoading;
    public i rpcGameClient;

    public FindModlePrensenter(@NotNull FindHomeView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        setMView(view);
    }

    @NotNull
    public final i getRpcGameClient() {
        i iVar = this.rpcGameClient;
        if (iVar != null) {
            return iVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rpcGameClient");
        return null;
    }

    /* JADX INFO: renamed from: isLoading, reason: from getter */
    public final boolean getIsLoading() {
        return this.isLoading;
    }

    public final void loadClassfyDatas(@NotNull Context context, @NotNull final LuckHistoryrequest arg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(arg, "arg");
        setRpcGameClient(com.join.mgps.rpc.impl.i.P0().N0());
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        requestModel.setArgs(arg);
        getRpcGameClient().u1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<FindClassifyResultData>>() { // from class: com.join.kotlin.presenter.FindModlePrensenter.loadClassfyDatas.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<FindClassifyResultData>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
                FindModlePrensenter.this.getMView().onError("获取数据失败");
                t10.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<FindClassifyResultData>> call, Response<ResponseModel<FindClassifyResultData>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.body() != null) {
                    ResponseModel<FindClassifyResultData> responseModelBody = response.body();
                    Intrinsics.checkNotNull(responseModelBody);
                    if (responseModelBody.getCode() != 200) {
                        FindHomeView mView = FindModlePrensenter.this.getMView();
                        ResponseModel<FindClassifyResultData> responseModelBody2 = response.body();
                        Intrinsics.checkNotNull(responseModelBody2);
                        String message = responseModelBody2.getMessage();
                        Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
                        mView.onError(message);
                        return;
                    }
                    FindModlePrensenter.this.getMView().hidLoading();
                    ResponseModel<FindClassifyResultData> responseModelBody3 = response.body();
                    Intrinsics.checkNotNull(responseModelBody3);
                    if (responseModelBody3.getData() != null) {
                        FindHomeView mView2 = FindModlePrensenter.this.getMView();
                        int page = arg.getPage();
                        ResponseModel<FindClassifyResultData> responseModelBody4 = response.body();
                        Intrinsics.checkNotNull(responseModelBody4);
                        FindClassifyResultData data = responseModelBody4.getData();
                        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                        mView2.onLoadDataSuccessV9(page, data);
                        return;
                    }
                }
                FindModlePrensenter.this.getMView().onError("获取数据失败");
            }
        });
    }

    public final void loadFindChoiceData(@NotNull Context context, @NotNull final LuckHistoryrequest arg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (this.isLoading) {
            return;
        }
        this.isLoading = true;
        setRpcGameClient(com.join.mgps.rpc.impl.i.P0().N0());
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        requestModel.setArgs(arg);
        getRpcGameClient().i1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<FindChoiceResultData>>() { // from class: com.join.kotlin.presenter.FindModlePrensenter.loadFindChoiceData.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<FindChoiceResultData>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
                FindModlePrensenter.this.setLoading(false);
                FindModlePrensenter.this.getMView().onError("获取数据失败");
                t10.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<FindChoiceResultData>> call, Response<ResponseModel<FindChoiceResultData>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                FindModlePrensenter.this.setLoading(false);
                if (response.body() != null) {
                    ResponseModel<FindChoiceResultData> responseModelBody = response.body();
                    Intrinsics.checkNotNull(responseModelBody);
                    if (responseModelBody.getCode() != 200) {
                        FindHomeView mView = FindModlePrensenter.this.getMView();
                        ResponseModel<FindChoiceResultData> responseModelBody2 = response.body();
                        Intrinsics.checkNotNull(responseModelBody2);
                        String message = responseModelBody2.getMessage();
                        Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
                        mView.onError(message);
                        return;
                    }
                    FindModlePrensenter.this.getMView().hidLoading();
                    ResponseModel<FindChoiceResultData> responseModelBody3 = response.body();
                    Intrinsics.checkNotNull(responseModelBody3);
                    if (responseModelBody3.getData() != null) {
                        FindHomeView mView2 = FindModlePrensenter.this.getMView();
                        int page = arg.getPage();
                        ResponseModel<FindChoiceResultData> responseModelBody4 = response.body();
                        Intrinsics.checkNotNull(responseModelBody4);
                        FindChoiceResultData data = responseModelBody4.getData();
                        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                        mView2.onLoadDataSuccess(page, data);
                        return;
                    }
                }
                FindModlePrensenter.this.getMView().onError("获取数据失败");
            }
        });
    }

    public final void setLoading(boolean z10) {
        this.isLoading = z10;
    }

    public final void setRpcGameClient(@NotNull i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.rpcGameClient = iVar;
    }
}
