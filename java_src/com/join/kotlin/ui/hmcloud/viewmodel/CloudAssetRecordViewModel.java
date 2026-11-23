package com.join.kotlin.ui.hmcloud.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.ui.hmcloud.model.MultiCloudRecordBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.k2;
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingCommonRecordRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPropRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u000b2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020!0%J\u000e\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010+\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010,\u001a\u00020!2\u0006\u0010(\u001a\u00020)R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\tR\u001b\u0010\u001a\u001a\u00020\u001b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001d¨\u0006-"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "type", "", "getType", "()I", "setType", "(I)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "setPage", "(Lcom/join/kotlin/quark/model/bean/Page;)V", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;", "getListData", "rpcAccountClientV2", "Lcom/join/mgps/rpc/RpcAccountClientV2;", "getRpcAccountClientV2", "()Lcom/join/mgps/rpc/RpcAccountClientV2;", "rpcAccountClientV2$delegate", "Lkotlin/Lazy;", "propUse", "", "cardId", "cardNo", "call", "Lkotlin/Function1;", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;", "playtimeRecord", "refresh", "", "diamondRecord", "coinRecord", "propRecord", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudAssetRecordViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("资产记录");
    private int type = 1;

    @NotNull
    private Page page = new Page(1, 20);

    @NotNull
    private final MutableLiveData<ListDataUiState<MultiCloudRecordBean>> listData = new MutableLiveData<>();

    /* JADX INFO: renamed from: rpcAccountClientV2$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy rpcAccountClientV2 = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return com.join.mgps.rpc.impl.b.C();
        }
    });

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$coinRecord$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$coinRecord$1", f = "CloudAssetRecordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ CloudAssetRecordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = cloudAssetRecordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.getPage().setPage(1);
            }
            MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.b page = MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.newBuilder().setPage(this.this$0.getPage().getPage());
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            page.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", page.getUid() + "");
            map.put(Constants.TOKEN, page.getToken());
            map.put("appVersion", "517_6.1.7.0");
            page.setSign(k2.d(map));
            return this.this$0.getRpcAccountClientV2().w(page.build());
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$diamondRecord$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$diamondRecord$1", f = "CloudAssetRecordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13541 extends SuspendLambda implements Function1<Continuation<? super MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ CloudAssetRecordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13541(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Continuation<? super C13541> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = cloudAssetRecordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13541(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.getPage().setPage(1);
            }
            MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.b page = MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.newBuilder().setPage(this.this$0.getPage().getPage());
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            page.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", page.getUid() + "");
            map.put(Constants.TOKEN, page.getToken());
            map.put("appVersion", "517_6.1.7.0");
            page.setSign(k2.d(map));
            return this.this$0.getRpcAccountClientV2().o(page.build());
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult> continuation) {
            return ((C13541) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$playtimeRecord$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$playtimeRecord$1", f = "CloudAssetRecordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13551 extends SuspendLambda implements Function1<Continuation<? super MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ CloudAssetRecordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13551(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Continuation<? super C13551> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = cloudAssetRecordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13551(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.getPage().setPage(1);
            }
            MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.b page = MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.newBuilder().setPage(this.this$0.getPage().getPage());
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            page.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", page.getUid() + "");
            map.put(Constants.TOKEN, page.getToken());
            map.put("appVersion", "517_6.1.7.0");
            page.setSign(k2.d(map));
            return this.this$0.getRpcAccountClientV2().d(page.build());
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult> continuation) {
            return ((C13551) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propRecord$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propRecord$1", f = "CloudAssetRecordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13561 extends SuspendLambda implements Function1<Continuation<? super MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ CloudAssetRecordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13561(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Continuation<? super C13561> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = cloudAssetRecordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13561(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.getPage().setPage(1);
            }
            MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.b page = MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters.newBuilder().setPage(this.this$0.getPage().getPage());
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            page.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", page.getUid() + "");
            map.put(Constants.TOKEN, page.getToken());
            map.put("appVersion", "517_6.1.7.0");
            page.setSign(k2.d(map));
            return this.this$0.getRpcAccountClientV2().f(page.build());
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult> continuation) {
            return ((C13561) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propUse$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propUse$1", f = "CloudAssetRecordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13571 extends SuspendLambda implements Function1<Continuation<? super MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse>, Object> {
        final /* synthetic */ String $cardId;
        final /* synthetic */ int $cardNo;
        int label;
        final /* synthetic */ CloudAssetRecordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13571(String str, int i10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Continuation<? super C13571> continuation) {
            super(1, continuation);
            this.$cardId = str;
            this.$cardNo = i10;
            this.this$0 = cloudAssetRecordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13571(this.$cardId, this.$cardNo, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MessageCloudGamingPropRequest.MessageCloudGamingPropUseRequestParameters.b bVarNewBuilder = MessageCloudGamingPropRequest.MessageCloudGamingPropUseRequestParameters.newBuilder();
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0").setCardId(this.$cardId).setCardNo(this.$cardNo);
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("cardId", bVarNewBuilder.getCardId());
            map.put("cardNo", String.valueOf(bVarNewBuilder.getCardNo()));
            map.put("appVersion", "517_6.1.7.0");
            bVarNewBuilder.setSign(k2.d(map));
            return this.this$0.getRpcAccountClientV2().c(bVarNewBuilder.build());
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse> continuation) {
            return ((C13571) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit coinRecord$lambda$10(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult messageCloudGamingCoinLogResponseResult) {
        ArrayList arrayList = new ArrayList();
        if (messageCloudGamingCoinLogResponseResult != null) {
            Iterator<MessageCloudGamingCoinResponse.CoinLog> it2 = messageCloudGamingCoinLogResponseResult.getDataList().iterator();
            while (it2.hasNext()) {
                arrayList.add(new MultiCloudRecordBean(4, it2.next(), false, 4, null));
            }
        }
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(true, String.valueOf(messageCloudGamingCoinLogResponseResult != null ? messageCloudGamingCoinLogResponseResult.getErrorMsg() : null), z10, arrayList.isEmpty(), false, z10 && arrayList.isEmpty(), arrayList, 16, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit coinRecord$lambda$11(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(false, String.valueOf(it2.getMessage()), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit diamondRecord$lambda$7(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult messageCloudGamingCoinLogResponseResult) {
        ArrayList arrayList = new ArrayList();
        if (messageCloudGamingCoinLogResponseResult != null) {
            Iterator<MessageCloudGamingCoinResponse.CoinLog> it2 = messageCloudGamingCoinLogResponseResult.getDataList().iterator();
            while (it2.hasNext()) {
                arrayList.add(new MultiCloudRecordBean(3, it2.next(), false, 4, null));
            }
        }
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(true, String.valueOf(messageCloudGamingCoinLogResponseResult != null ? messageCloudGamingCoinLogResponseResult.getErrorMsg() : null), z10, arrayList.isEmpty(), false, z10 && arrayList.isEmpty(), arrayList, 16, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit diamondRecord$lambda$8(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(false, String.valueOf(it2.getMessage()), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit playtimeRecord$lambda$4(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult) {
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.add(new MultiCloudRecordBean(1, messageCloudGamingPlaytimeLogResponseResult != null ? messageCloudGamingPlaytimeLogResponseResult.getInfo() : null, false, 4, null));
        }
        if (messageCloudGamingPlaytimeLogResponseResult != null) {
            Iterator<MessageCloudGamingPlaytimeResponse.PlaytimeLog> it2 = messageCloudGamingPlaytimeLogResponseResult.getDataList().iterator();
            while (it2.hasNext()) {
                arrayList.add(new MultiCloudRecordBean(2, it2.next(), false, 4, null));
            }
        }
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(true, String.valueOf(messageCloudGamingPlaytimeLogResponseResult != null ? messageCloudGamingPlaytimeLogResponseResult.getErrorMsg() : null), z10, arrayList.isEmpty(), false, z10 && arrayList.isEmpty(), arrayList, 16, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit playtimeRecord$lambda$5(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(false, String.valueOf(it2.getMessage()), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propRecord$lambda$13(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult) {
        ArrayList arrayList = new ArrayList();
        if (messageCloudGamingPropLogResponseResult != null) {
            Iterator<MessageCloudGamingPropResponse.PropLog> it2 = messageCloudGamingPropLogResponseResult.getDataList().iterator();
            while (it2.hasNext()) {
                arrayList.add(new MultiCloudRecordBean(5, it2.next(), false, 4, null));
            }
        }
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(true, String.valueOf(messageCloudGamingPropLogResponseResult != null ? messageCloudGamingPropLogResponseResult.getErrorMsg() : null), z10, arrayList.isEmpty(), false, z10 && arrayList.isEmpty(), arrayList, 16, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propRecord$lambda$14(boolean z10, CloudAssetRecordViewModel cloudAssetRecordViewModel, Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        cloudAssetRecordViewModel.listData.setValue(new ListDataUiState<>(false, String.valueOf(it2.getMessage()), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propUse$lambda$1(Function1 function1, MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse) {
        function1.invoke(messageCloudGamingPropUseResponse);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propUse$lambda$2(Function1 function1, Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        function1.invoke(null);
        return Unit.INSTANCE;
    }

    public final void coinRecord(final boolean refresh) {
        BaseViewModelExtKt.launch(this, new AnonymousClass1(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.coinRecord$lambda$10(refresh, this, (MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.coinRecord$lambda$11(refresh, this, (Throwable) obj);
            }
        });
    }

    public final void diamondRecord(final boolean refresh) {
        BaseViewModelExtKt.launch(this, new C13541(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.diamondRecord$lambda$7(refresh, this, (MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.diamondRecord$lambda$8(refresh, this, (Throwable) obj);
            }
        });
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<MultiCloudRecordBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @NotNull
    public final com.join.mgps.rpc.c getRpcAccountClientV2() {
        Object value = this.rpcAccountClientV2.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (com.join.mgps.rpc.c) value;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void playtimeRecord(final boolean refresh) {
        BaseViewModelExtKt.launch(this, new C13551(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.playtimeRecord$lambda$4(refresh, this, (MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.playtimeRecord$lambda$5(refresh, this, (Throwable) obj);
            }
        });
    }

    public final void propRecord(final boolean refresh) {
        BaseViewModelExtKt.launch(this, new C13561(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.propRecord$lambda$13(refresh, this, (MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.propRecord$lambda$14(refresh, this, (Throwable) obj);
            }
        });
    }

    public final void propUse(@NotNull String cardId, int cardNo, @NotNull final Function1<? super MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse, Unit> call) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        Intrinsics.checkNotNullParameter(call, "call");
        BaseViewModelExtKt.launch(this, new C13571(cardId, cardNo, this, null), new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.propUse$lambda$1(call, (MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.hmcloud.viewmodel.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordViewModel.propUse$lambda$2(call, (Throwable) obj);
            }
        });
    }

    public final void setPage(@NotNull Page page) {
        Intrinsics.checkNotNullParameter(page, "<set-?>");
        this.page = page;
    }

    public final void setType(int i10) {
        this.type = i10;
    }
}
