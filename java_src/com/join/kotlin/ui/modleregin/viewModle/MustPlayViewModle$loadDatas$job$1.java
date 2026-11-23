package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemNetBean;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.h;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1", f = "MustPlayViewModle.kt", i = {0}, l = {102}, m = "invokeSuspend", n = {"result"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nMustPlayViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,101:1\n12#2:102\n*S KotlinDebug\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n*L\n54#1:102\n*E\n"})
final class MustPlayViewModle$loadDatas$job$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef<RequestModel<RequestGameIdArgs>> $requestModel;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MustPlayViewModle this$0;

    /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1$1", f = "MustPlayViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ Ref.ObjectRef<ResponseModel<List<MustplayItemNetBean>>> $result;
        int label;
        final /* synthetic */ MustPlayViewModle this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<ResponseModel<List<MustplayItemNetBean>>> objectRef, MustPlayViewModle mustPlayViewModle, Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = objectRef;
            this.this$0 = mustPlayViewModle;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.this$0, this.$context, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$result.element.getCode() == 200) {
                if (this.this$0.getPage() == 1) {
                    List<MustplayItemBean> value = this.this$0.getShowDatas().getValue();
                    Intrinsics.checkNotNull(value);
                    value.clear();
                }
                List<MustplayItemBean> value2 = this.this$0.getShowDatas().getValue();
                Intrinsics.checkNotNull(value2);
                int size = value2.size();
                if (this.$result.element.getData() == null || this.$result.element.getData().isEmpty()) {
                    this.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(4));
                } else {
                    int i10 = 0;
                    for (MustplayItemNetBean mustplayItemNetBean : this.$result.element.getData()) {
                        int i11 = i10 + 1;
                        if (mustplayItemNetBean.getGameInfo() != null) {
                            CollectionBeanSub gameInfo = mustplayItemNetBean.getGameInfo();
                            gameInfo.set_from(145);
                            gameInfo.set_from_type(145);
                            gameInfo.setRecPosition(String.valueOf(gameInfo.getIndex()));
                            this.this$0.getAllDownloadBeans().add(gameInfo);
                            MustplayItemBean mustplayItemBean = new MustplayItemBean(i10 + size, mustplayItemNetBean.getGameVideo(), mustplayItemNetBean.getGameImg(), gameInfo.getGame_info_top_video_url(), StringsKt__StringsKt.split$default((CharSequence) mustplayItemNetBean.getGameTags(), new String[]{"|"}, false, 0, 6, (Object) null), mustplayItemNetBean.getGameName(), mustplayItemNetBean.getGameTitle(), gameInfo, null, null, 768, null);
                            List<MustplayItemBean> value3 = this.this$0.getShowDatas().getValue();
                            Intrinsics.checkNotNull(value3);
                            value3.add(mustplayItemBean);
                        }
                        i10 = i11;
                    }
                    this.this$0.setPage(this.this$0.getPage() + 1);
                    this.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(2));
                    this.this$0.getShowDatas().setValue(this.this$0.getShowDatas().getValue());
                }
            } else {
                a3.b(this.$context).d(this.$result.element.getMessage());
            }
            List<MustplayItemBean> value4 = this.this$0.getShowDatas().getValue();
            Intrinsics.checkNotNull(value4);
            if (value4.size() > 0) {
                this.this$0.getLoadBindData().setValue(new LoadBindindData(1));
            } else {
                this.this$0.getLoadBindData().setValue(new LoadBindindData(3));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MustPlayViewModle$loadDatas$job$1(Ref.ObjectRef<RequestModel<RequestGameIdArgs>> objectRef, MustPlayViewModle mustPlayViewModle, Context context, Continuation<? super MustPlayViewModle$loadDatas$job$1> continuation) {
        super(2, continuation);
        this.$requestModel = objectRef;
        this.this$0 = mustPlayViewModle;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MustPlayViewModle$loadDatas$job$1(this.$requestModel, this.this$0, this.$context, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        T t10;
        Ref.ObjectRef objectRef2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Ref.ObjectRef<RequestModel<RequestGameIdArgs>> objectRef4 = this.$requestModel;
            CoroutineDispatcher coroutineDispatcherC = z0.c();
            MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 mustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 = new MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(null, objectRef4);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object objH = h.h(coroutineDispatcherC, mustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1, this);
            if (objH == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef3;
            t10 = objH;
            objectRef2 = objectRef;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$1;
            objectRef2 = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            t10 = obj;
        }
        objectRef.element = t10;
        j.f(o1.f93610b, z0.e(), null, new AnonymousClass1(objectRef2, this.this$0, this.$context, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((MustPlayViewModle$loadDatas$job$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
