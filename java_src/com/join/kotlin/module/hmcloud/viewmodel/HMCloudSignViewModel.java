package com.join.kotlin.module.hmcloud.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SafeLiveData;
import com.czhj.sdk.common.Constants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.BindAccountActivity_;
import com.join.mgps.activity.FullShareWebActivity_;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HMPlaytimeSignInInfo;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import dagger.hilt.android.lifecycle.HiltViewModel;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@HiltViewModel
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00170\u0019H\u0082@¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0017J\b\u0010\u001c\u001a\u00020\u0017H\u0002J!\u0010\u001d\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\f2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0002\u0010 J)\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\f2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\u0017J\u0006\u0010%\u001a\u00020\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "rpcAccountClientV2", "Lcom/join/mgps/rpc/RpcAccountClientV2;", "adCfgInfo", "Landroidx/lifecycle/MutableLiveData;", "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;", "getAdCfgInfo", "()Landroidx/lifecycle/MutableLiveData;", "playtimeSignResult", "Landroidx/lifecycle/SafeLiveData;", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;", "getPlaytimeSignResult", "()Landroidx/lifecycle/SafeLiveData;", "isSign", "", "loadUserInfoBySvr", "", com.alipay.sdk.authjs.a.f7124i, "Lkotlin/Function1;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkSign", "checkSignDo", "showCloudSign", FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, "", "(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V", "openWebPage", "step", "(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V", Constant.MD5, "performClickSign", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMCloudSignViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"})
public final class HMCloudSignViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<MessageCloudGamingAdCfgResponse.AdCfgInfo> adCfgInfo;

    @NotNull
    private final Context context;
    private boolean isSign;

    @NotNull
    private final SafeLiveData<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult> playtimeSignResult;

    @NotNull
    private final com.join.mgps.rpc.c rpcAccountClientV2;

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$checkSign$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$checkSign$1", f = "HMCloudSignViewModel.kt", i = {}, l = {107}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(HMCloudSignViewModel hMCloudSignViewModel, boolean z10) {
            if (z10) {
                hMCloudSignViewModel.checkSignDo();
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudSignViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                final HMCloudSignViewModel hMCloudSignViewModel = HMCloudSignViewModel.this;
                Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return HMCloudSignViewModel.AnonymousClass1.invokeSuspend$lambda$0(hMCloudSignViewModel, ((Boolean) obj2).booleanValue());
                    }
                };
                this.label = 1;
                if (hMCloudSignViewModel.loadUserInfoBySvr(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$checkSignDo$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$checkSignDo$1", f = "HMCloudSignViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13271 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13271(Continuation<? super C13271> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudSignViewModel.this.new C13271(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            UserInfo accountData = AccountUtil_.getInstance_(HMCloudSignViewModel.this.getContext()).getAccountData();
            if (accountData == null || TextUtils.isEmpty(accountData.getToken())) {
                return Unit.INSTANCE;
            }
            if (com.join.android.app.common.utils.m.j(HMCloudSignViewModel.this.getContext())) {
                try {
                    MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
                    bVarNewBuilder.setUid(accountData.getUid());
                    bVarNewBuilder.setToken(accountData.getToken());
                    bVarNewBuilder.setSceneType(SceneType.APP_HOME_PAGE);
                    bVarNewBuilder.setAppVersion(g8.b.a(HMCloudSignViewModel.this.getContext()));
                    HashMap map = new HashMap();
                    map.put("uid", bVarNewBuilder.getUid() + "");
                    map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                    map.put("sceneType", bVarNewBuilder.getSceneType().name());
                    map.put("appVersion", bVarNewBuilder.getAppVersion());
                    bVarNewBuilder.setSign(k2.d(map));
                    MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = HMCloudSignViewModel.this.rpcAccountClientV2.n(bVarNewBuilder.build());
                    if (messageCloudGamingAdCfgResponseResultN != null) {
                        HMCloudSignViewModel hMCloudSignViewModel = HMCloudSignViewModel.this;
                        if (messageCloudGamingAdCfgResponseResultN.getError() == 200) {
                            hMCloudSignViewModel.getAdCfgInfo().postValue(messageCloudGamingAdCfgResponseResultN.getData());
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Unit unit2 = Unit.INSTANCE;
                }
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13271) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$sign$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$sign$1", f = "HMCloudSignViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13281 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13281(Continuation<? super C13281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudSignViewModel.this.new C13281(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (HMCloudSignViewModel.this.isSign) {
                return Unit.INSTANCE;
            }
            if (!com.join.android.app.common.utils.m.j(HMCloudSignViewModel.this.getContext())) {
                ToastManager.show("网络异常，请检查网络");
                return Unit.INSTANCE;
            }
            UserInfo accountData = AccountUtil_.getInstance_(HMCloudSignViewModel.this.getContext()).getAccountData();
            if (accountData.getNewMemberInfo().getIsSigned()) {
                ToastManager.show("今日已签,明日再来吧~");
                return Unit.INSTANCE;
            }
            HMCloudSignViewModel.this.isSign = true;
            MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
            bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", "517_6.1.7.0");
            bVarNewBuilder.setSign(k2.d(map));
            HMCloudSignViewModel.this.getPlaytimeSignResult().postValue(HMCloudSignViewModel.this.rpcAccountClientV2.l(bVarNewBuilder.build()));
            HMCloudSignViewModel.this.isSign = false;
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13281) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @Inject
    public HMCloudSignViewModel(@ApplicationContext @NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.adCfgInfo = new MutableLiveData<>(null);
        this.playtimeSignResult = new SafeLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSignDo() {
        launchOnUI(new C13271(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadUserInfoBySvr(Function1<? super Boolean, Unit> function1, Continuation<? super Unit> continuation) {
        Context context = this.context;
        if (com.join.android.app.common.utils.m.j(context)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(accountData.getUid());
                bVarNewBuilder.setToken(accountData.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(context));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(k2.d(map));
                ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
                if (responseResultA != null && responseResultA.getError() == 200) {
                    UserInfo data = responseResultA.getData();
                    if (data != null && data.getUid() != 0) {
                        AccountUtil_.getInstance_(context).saveAccountData(data, context);
                    }
                    j0.a().c(new com.join.mgps.event.b(2));
                    function1.invoke(Boxing.boxBoolean(true));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return Unit.INSTANCE;
    }

    private final void openWebPage(final int step, final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Integer screenOrientation) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        String str = "";
        if (step == 1 && t2.h("")) {
            if (adCfgInfo.getIsSigned()) {
                str = com.join.mgps.rpc.h.U;
                intentDateBean.setLink_type(4);
                UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
                if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "isVip", false, 2, (Object) null)) {
                    if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) SimpleComparison.EQUAL_TO_OPERATION, false, 2, (Object) null)) {
                        str = str + "&isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
                    } else {
                        str = str + "?isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
                    }
                }
            } else {
                openWebPage$default(this, step + 1, adCfgInfo, null, 4, null);
            }
        }
        if (step == 2 && t2.h(str)) {
            if (adCfgInfo.getIsShowNewGift()) {
                str = com.join.mgps.rpc.h.V;
            } else {
                openWebPage$default(this, step + 1, adCfgInfo, null, 4, null);
            }
        }
        if (step == 3 && t2.h(str) && adCfgInfo.getIsFirstPurchaseMember()) {
            str = com.join.mgps.rpc.h.W;
        }
        if (t2.i(str)) {
            intentDateBean.setLink_type_val(str);
            intent.putExtra("intentdate", intentDateBean);
            intent.putExtra("parentExtBean", new ExtBean().setFirstModule("home").setSecondModule("home").setChatId("cloudGameNewUserSignPop").buildScene());
            if (screenOrientation != null) {
                intent.putExtra(FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, screenOrientation.intValue());
            }
            IntentUtil.getInstance().startActivityWithCallback(this.context, FullShareWebActivity_.class, intent, new m6.d() { // from class: com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel.openWebPage.2
                @Override // m6.d, com.join.mgps.callbacks.r
                public void onEvent(Activity activity, int event, String jsonParams) {
                    String totalTime;
                    String vipTime;
                    String freeTime;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    super.onEvent(activity, event, jsonParams);
                    if (event == 1) {
                        HMCloudSignViewModel hMCloudSignViewModel = HMCloudSignViewModel.this;
                        hMCloudSignViewModel.delay(200L, new HMCloudSignViewModel$openWebPage$2$onEvent$1(hMCloudSignViewModel, step, adCfgInfo, null));
                        return;
                    }
                    if (event == 2) {
                        activity.finish();
                        HMCloudSignViewModel hMCloudSignViewModel2 = HMCloudSignViewModel.this;
                        hMCloudSignViewModel2.delay(200L, new HMCloudSignViewModel$openWebPage$2$onEvent$2(hMCloudSignViewModel2, step, adCfgInfo, null));
                        HMCloudSignViewModel.this.delay(400L, new HMCloudSignViewModel$openWebPage$2$onEvent$3(jsonParams, activity, null));
                        return;
                    }
                    if (event != 8) {
                        return;
                    }
                    activity.finish();
                    HMCloudSignViewModel hMCloudSignViewModel3 = HMCloudSignViewModel.this;
                    hMCloudSignViewModel3.delay(200L, new HMCloudSignViewModel$openWebPage$2$onEvent$4(hMCloudSignViewModel3, step, adCfgInfo, null));
                    if (jsonParams == null) {
                        jsonParams = "";
                    }
                    HMPlaytimeSignInInfo hMPlaytimeSignInInfo = (HMPlaytimeSignInInfo) JsonMapper.getInstance().fromJson(jsonParams, HMPlaytimeSignInInfo.class);
                    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult.b bVarNewBuilder = MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult.newBuilder();
                    bVarNewBuilder.setError(200);
                    MessageCloudGamingPlaytimeResponse.PlaytimeSignInInfo.b bVarNewBuilder2 = MessageCloudGamingPlaytimeResponse.PlaytimeSignInInfo.newBuilder();
                    String str2 = "0";
                    if (hMPlaytimeSignInInfo == null || (totalTime = hMPlaytimeSignInInfo.getTotalTime()) == null) {
                        totalTime = "0";
                    }
                    bVarNewBuilder2.setTotalTime(totalTime);
                    if (hMPlaytimeSignInInfo == null || (vipTime = hMPlaytimeSignInInfo.getVipTime()) == null) {
                        vipTime = "0";
                    }
                    bVarNewBuilder2.setVipTime(vipTime);
                    if (hMPlaytimeSignInInfo != null && (freeTime = hMPlaytimeSignInInfo.getFreeTime()) != null) {
                        str2 = freeTime;
                    }
                    bVarNewBuilder2.setFreeTime(str2);
                    bVarNewBuilder.setInto(bVarNewBuilder2.build());
                    HMCloudSignViewModel.this.getPlaytimeSignResult().postValue(bVarNewBuilder.build());
                }
            });
        }
    }

    static /* synthetic */ void openWebPage$default(HMCloudSignViewModel hMCloudSignViewModel, int i10, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Integer num, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        hMCloudSignViewModel.openWebPage(i10, adCfgInfo, num);
    }

    private final void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Integer screenOrientation) {
        int i10;
        if (adCfgInfo.getIsSigned()) {
            i10 = 1;
        } else if (adCfgInfo.getIsShowNewGift()) {
            i10 = 2;
        } else {
            i10 = adCfgInfo.getIsFirstPurchaseMember() ? 3 : 0;
        }
        if (i10 > 0) {
            openWebPage(i10, adCfgInfo, screenOrientation);
        }
    }

    static /* synthetic */ void showCloudSign$default(HMCloudSignViewModel hMCloudSignViewModel, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = 0;
        }
        hMCloudSignViewModel.showCloudSign(adCfgInfo, num);
    }

    public final void checkSign() {
        launchOnUI(new AnonymousClass1(null));
    }

    @NotNull
    public final MutableLiveData<MessageCloudGamingAdCfgResponse.AdCfgInfo> getAdCfgInfo() {
        return this.adCfgInfo;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final SafeLiveData<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult> getPlaytimeSignResult() {
        return this.playtimeSignResult;
    }

    public final void performClickSign() {
        final MessageCloudGamingAdCfgResponse.AdCfgInfo value = this.adCfgInfo.getValue();
        if (value != null) {
            if (!value.getIsNewMember()) {
                sign();
            } else if (AccountUtil_.getInstance_(this.context).isTourist()) {
                IntentUtil.getInstance().startActivityWithCallback(this.context, BindAccountActivity_.class, null, new m6.b() { // from class: com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$performClickSign$1$1
                    @Override // m6.b, com.join.mgps.callbacks.b
                    public void onBindSuccess(UserInfo userInfo) {
                        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
                        super.onBindSuccess(userInfo);
                        HMCloudSignViewModel.showCloudSign$default(this.this$0, value, null, 2, null);
                    }
                });
            } else {
                showCloudSign$default(this, value, null, 2, null);
            }
        }
    }

    public final void sign() {
        launchOnUI(new C13281(null));
    }
}
