package com.join.kotlin.presenter;

import android.content.Context;
import b7.i;
import com.join.kotlin.presenter.view.CategoryView;
import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/presenter/CategoryPrensenter;", "Lcom/join/kotlin/presenter/BasePresenter;", "Lcom/join/kotlin/presenter/view/CategoryView;", "view", "<init>", "(Lcom/join/kotlin/presenter/view/CategoryView;)V", "rpcGameClient", "Lcom/join/mgps/rpc/interfaces/IRpcGameClient;", "getRpcGameClient", "()Lcom/join/mgps/rpc/interfaces/IRpcGameClient;", "setRpcGameClient", "(Lcom/join/mgps/rpc/interfaces/IRpcGameClient;)V", "loadCategoryData", "", "context", "Landroid/content/Context;", "arg", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CategoryPrensenter extends BasePresenter<CategoryView> {
    public i rpcGameClient;

    public CategoryPrensenter(@NotNull CategoryView view) {
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

    public final void loadCategoryData(@NotNull Context context, @NotNull final CategoryRequest arg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(arg, "arg");
        setRpcGameClient(com.join.mgps.rpc.impl.i.P0().N0());
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        requestModel.setArgs(arg);
        getRpcGameClient().y1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<CategoryListMain>>() { // from class: com.join.kotlin.presenter.CategoryPrensenter.loadCategoryData.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<CategoryListMain>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
                CategoryPrensenter.this.getMView().onError("获取数据失败");
                t10.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<CategoryListMain>> call, Response<ResponseModel<CategoryListMain>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.body() == null) {
                    CategoryPrensenter.this.getMView().onError("获取数据失败");
                    return;
                }
                ResponseModel<CategoryListMain> responseModelBody = response.body();
                Intrinsics.checkNotNull(responseModelBody);
                if (responseModelBody.getCode() != 200) {
                    CategoryView mView = CategoryPrensenter.this.getMView();
                    ResponseModel<CategoryListMain> responseModelBody2 = response.body();
                    Intrinsics.checkNotNull(responseModelBody2);
                    String message = responseModelBody2.getMessage();
                    Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
                    mView.onError(message);
                    return;
                }
                CategoryPrensenter.this.getMView().hidLoading();
                CategoryView mView2 = CategoryPrensenter.this.getMView();
                int page = arg.getPage();
                ResponseModel<CategoryListMain> responseModelBody3 = response.body();
                Intrinsics.checkNotNull(responseModelBody3);
                CategoryListMain data = responseModelBody3.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                mView2.onLoadDataSuccess(page, data);
            }
        });
    }

    public final void setRpcGameClient(@NotNull i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.rpcGameClient = iVar;
    }
}
