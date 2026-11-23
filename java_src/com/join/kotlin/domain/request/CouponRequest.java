package com.join.kotlin.domain.request;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.coupon.CouponListMainData;
import com.join.mgps.dto.BTGameCouponBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bJ\u0014\u0010\u001d\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bJ\b\u0010\u001e\u001a\u00020\u0019H\u0002R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR(\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u0015\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0006\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/domain/request/CouponRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "resultCouponListData", "Lcom/join/kotlin/ui/coupon/CouponListMainData;", "getResultCouponListData", "setResultCouponListData", "callCoupon", "Lretrofit2/Call;", "getCallCoupon", "()Lretrofit2/Call;", "setCallCoupon", "(Lretrofit2/Call;)V", "callCouponList", "getCallCouponList", "setCallCouponList", "requestCouponGet", "", PointCategory.REQUEST, "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/ui/coupon/CouponRequest;", "requestCouponListData", "cancelGetCoupon", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CouponRequest {

    @Nullable
    private Call<ResponseModel<Object>> callCoupon;

    @Nullable
    private Call<ResponseModel<CouponListMainData>> callCouponList;

    @NotNull
    private MutableLiveData<ResponseModel<Object>> resultData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ResponseModel<CouponListMainData>> resultCouponListData = new MutableLiveData<>();

    private final void cancelGetCoupon() {
        Call<ResponseModel<Object>> call = this.callCoupon;
        if (call != null) {
            Intrinsics.checkNotNull(call);
            if (call.isCanceled()) {
                Call<ResponseModel<Object>> call2 = this.callCoupon;
                Intrinsics.checkNotNull(call2);
                call2.cancel();
            }
        }
    }

    @Nullable
    public final Call<ResponseModel<Object>> getCallCoupon() {
        return this.callCoupon;
    }

    @Nullable
    public final Call<ResponseModel<CouponListMainData>> getCallCouponList() {
        return this.callCouponList;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<CouponListMainData>> getResultCouponListData() {
        return this.resultCouponListData;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<Object>> getResultData() {
        return this.resultData;
    }

    public final void requestCouponGet(@NotNull final RequestModel<com.join.kotlin.ui.coupon.CouponRequest> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Call<ResponseModel<Object>> callQ1 = i.P0().N0().q1(request.makeSign());
        this.callCoupon = callQ1;
        if (callQ1 != null) {
            callQ1.enqueue(new Callback<ResponseModel<Object>>() { // from class: com.join.kotlin.domain.request.CouponRequest.requestCouponGet.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<Object>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<Object> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<Object>> call, Response<ResponseModel<Object>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<Object> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultData().setValue(responseModel);
                    } else {
                        ResponseModel<Object> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setData(request.getArgs());
                        }
                        this.getResultData().setValue(responseModelBody);
                    }
                }
            });
        }
    }

    public final void requestCouponListData(@NotNull RequestModel<com.join.kotlin.ui.coupon.CouponRequest> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Call<ResponseModel<CouponListMainData>> callD1 = i.P0().N0().d1(request.makeSign());
        this.callCouponList = callD1;
        if (callD1 != null) {
            callD1.enqueue(new Callback<ResponseModel<CouponListMainData>>() { // from class: com.join.kotlin.domain.request.CouponRequest.requestCouponListData.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<CouponListMainData>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<CouponListMainData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    CouponRequest.this.getResultCouponListData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<CouponListMainData>> call, Response<ResponseModel<CouponListMainData>> response) {
                    CouponListMainData data;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<CouponListMainData> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        CouponRequest.this.getResultCouponListData().setValue(responseModel);
                        return;
                    }
                    ResponseModel<CouponListMainData> responseModelBody = response.body();
                    ArrayList<BTGameCouponBean> game_coupon_for_bt_game = (responseModelBody == null || (data = responseModelBody.getData()) == null) ? null : data.getGame_coupon_for_bt_game();
                    if (game_coupon_for_bt_game != null) {
                        for (BTGameCouponBean bTGameCouponBean : game_coupon_for_bt_game) {
                            String usable_games = bTGameCouponBean.getUsable_games();
                            Intrinsics.checkNotNullExpressionValue(usable_games, "getUsable_games(...)");
                            if (StringsKt__StringsKt.contains$default((CharSequence) usable_games, (CharSequence) ",", false, 2, (Object) null)) {
                                bTGameCouponBean.setUsable_gamesShow("仅限部分游戏使用");
                                bTGameCouponBean.setUsable_games("仅限" + bTGameCouponBean.getUsable_games() + "使用");
                            } else {
                                bTGameCouponBean.setUsable_gamesShow("仅限《" + bTGameCouponBean.getUsable_games() + "》使用");
                                bTGameCouponBean.setUsable_games("仅限《" + bTGameCouponBean.getUsable_games() + "》使用");
                            }
                        }
                    }
                    CouponRequest.this.getResultCouponListData().setValue(responseModelBody);
                }
            });
        }
    }

    public final void setCallCoupon(@Nullable Call<ResponseModel<Object>> call) {
        this.callCoupon = call;
    }

    public final void setCallCouponList(@Nullable Call<ResponseModel<CouponListMainData>> call) {
        this.callCouponList = call;
    }

    public final void setResultCouponListData(@NotNull MutableLiveData<ResponseModel<CouponListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultCouponListData = mutableLiveData;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<Object>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
