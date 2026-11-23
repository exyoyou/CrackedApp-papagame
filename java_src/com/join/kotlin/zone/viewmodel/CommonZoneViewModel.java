package com.join.kotlin.zone.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.zone.model.bean.GameZoneDataBean;
import com.join.kotlin.zone.model.bean.ZoneMultiEntry;
import com.join.kotlin.zone.model.request.GameZoneRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR*\u0010\u0016\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u00170\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\b\"\u0004\b\u001a\u0010\n¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "showData", "", "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;", "getShowData", "()Ljava/util/List;", "setShowData", "(Ljava/util/List;)V", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "zoneData", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;", "getZoneData", "setZoneData", "getGameZone", "", "zoneId", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonZoneViewModel extends BaseViewModel {

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("专区");

    @NotNull
    private List<ZoneMultiEntry> showData = new ArrayList();

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ResultState<GameZoneDataBean>> zoneData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.zone.viewmodel.CommonZoneViewModel$getGameZone$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.zone.viewmodel.CommonZoneViewModel$getGameZone$1", f = "CommonZoneViewModel.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<GameZoneDataBean>>, Object> {
        final /* synthetic */ String $zoneId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$zoneId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CommonZoneViewModel.this.new AnonymousClass1(this.$zoneId, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                CommonZoneViewModel.this.getLoadBindData().setValue(new LoadBindindData(2));
                GameZoneRequest gameZoneRequest = new GameZoneRequest(this.$zoneId);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(gameZoneRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<GameZoneRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.getGameZone(requestModelMakeSign, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<GameZoneDataBean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public CommonZoneViewModel() {
        this.loadBindData.setValue(new LoadBindindData(2));
    }

    public final void getGameZone(@NotNull String zoneId) {
        Intrinsics.checkNotNullParameter(zoneId, "zoneId");
        if (m.j(MApplication.f3182z)) {
            BaseViewModelExtKt.request$default(this, new AnonymousClass1(zoneId, null), this.zoneData, false, null, 12, null);
        } else {
            this.loadBindData.setValue(new LoadBindindData(3));
        }
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @NotNull
    public final List<ZoneMultiEntry> getShowData() {
        return this.showData;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @NotNull
    public final MutableLiveData<ResultState<GameZoneDataBean>> getZoneData() {
        return this.zoneData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setShowData(@NotNull List<ZoneMultiEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showData = list;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }

    public final void setZoneData(@NotNull MutableLiveData<ResultState<GameZoneDataBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.zoneData = mutableLiveData;
    }
}
