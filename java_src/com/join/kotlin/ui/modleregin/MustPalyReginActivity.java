package com.join.kotlin.ui.modleregin;

import android.os.Bundle;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.fn0;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.base.BaseHasDownloadActivity;
import com.join.kotlin.ui.modleregin.adapter.MustpalyAdapter;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.event.r;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u001dJ\b\u0010'\u001a\u00020\u001dH\u0016J\b\u0010(\u001a\u00020\u001dH\u0016J\u0010\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020\u001dH\u0014J\b\u0010.\u001a\u00020\u001dH\u0014J\b\u0010/\u001a\u00020\u001dH\u0014J\b\u00100\u001a\u00020\u001dH\u0016J\b\u00101\u001a\u00020\u001dH\u0016R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\f\u001a\u0004\b\u0019\u0010\u001a¨\u00062"}, d2 = {"Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;", "<init>", "()V", "viewModel", "Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;", "getViewModel", "()Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;", "viewModel$delegate", "Lkotlin/Lazy;", "videoHelper", "Lcom/join/android/app/component/video/MyListViewVideoHelper;", "getVideoHelper", "()Lcom/join/android/app/component/video/MyListViewVideoHelper;", "videoHelper$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/MustplayReginActivityBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/MustplayReginActivityBinding;", "dataBinding$delegate", "adapter", "Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;", "adapter$delegate", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDownloadStatusEventReceved", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "notifyAdapter", "view", "Landroid/view/View;", "updateDowStateList", "onClickReload", "onClickSetNetWork", "onClickItem", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onClickBack", "onPause", "onResume", "onDestroy", "onRefresh", "onLoadMore", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMustPalyReginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MustPalyReginActivity.kt\ncom/join/kotlin/ui/modleregin/MustPalyReginActivity\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n167#2,2:169\n182#2,4:171\n1869#3,2:175\n*S KotlinDebug\n*F\n+ 1 MustPalyReginActivity.kt\ncom/join/kotlin/ui/modleregin/MustPalyReginActivity\n*L\n93#1:169,2\n93#1:171,4\n108#1:175,2\n*E\n"})
public final class MustPalyReginActivity extends BaseHasDownloadActivity implements ClickProxy, LoadBindClickProxy, XRecyclerView.f {

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MustPalyReginActivity.viewModel_delegate$lambda$0(this.f49294b);
        }
    });

    /* JADX INFO: renamed from: videoHelper$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy videoHelper = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MustPalyReginActivity.videoHelper_delegate$lambda$1(this.f49295b);
        }
    });

    /* JADX INFO: renamed from: dataBinding$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dataBinding = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MustPalyReginActivity.dataBinding_delegate$lambda$2(this.f49296b);
        }
    });

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MustPalyReginActivity.adapter_delegate$lambda$3(this.f49297b);
        }
    });

    /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.MustPalyReginActivity$onResume$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.MustPalyReginActivity$onResume$1", f = "MustPalyReginActivity.kt", i = {}, l = {144}, m = "invokeSuspend", n = {}, s = {})
    static final class C13621 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.MustPalyReginActivity$onResume$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.modleregin.MustPalyReginActivity$onResume$1$1", f = "MustPalyReginActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06591 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ MustPalyReginActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06591(MustPalyReginActivity mustPalyReginActivity, Continuation<? super C06591> continuation) {
                super(2, continuation);
                this.this$0 = mustPalyReginActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06591(this.this$0, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (this.this$0.getVideoHelper() != null) {
                    this.this$0.getVideoHelper().I(true);
                }
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06591) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        C13621(Continuation<? super C13621> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MustPalyReginActivity.this.new C13621(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.b(700L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            kotlinx.coroutines.j.f(o1.f93610b, z0.e(), null, new C06591(MustPalyReginActivity.this, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13621) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MustpalyAdapter adapter_delegate$lambda$3(MustPalyReginActivity mustPalyReginActivity) {
        return new MustpalyAdapter(mustPalyReginActivity, mustPalyReginActivity.getVideoHelper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fn0 dataBinding_delegate$lambda$2(MustPalyReginActivity mustPalyReginActivity) {
        return (fn0) DataBindingUtil.setContentView(mustPalyReginActivity, R.layout.mustplay_regin_activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$4(MustPalyReginActivity mustPalyReginActivity, int i10, MustplayItemBean item, int i11) {
        Intrinsics.checkNotNullParameter(item, "item");
        IntentUtil.getInstance().goGameDetialActivity(mustPalyReginActivity, item.getGameinfo().getGame_id(), item.getGameinfo().get_from_type());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.android.app.component.video.c videoHelper_delegate$lambda$1(MustPalyReginActivity mustPalyReginActivity) {
        return new com.join.android.app.component.video.c(mustPalyReginActivity, "MustPalyReginActivity", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MustPlayViewModle viewModel_delegate$lambda$0(MustPalyReginActivity mustPalyReginActivity) {
        return (MustPlayViewModle) new ViewModelProvider(mustPalyReginActivity, new ViewModelProvider.NewInstanceFactory()).get(MustPlayViewModle.class);
    }

    @NotNull
    public final MustpalyAdapter getAdapter() {
        return (MustpalyAdapter) this.adapter.getValue();
    }

    @NotNull
    public final fn0 getDataBinding() {
        Object value = this.dataBinding.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (fn0) value;
    }

    @NotNull
    public final com.join.android.app.component.video.c getVideoHelper() {
        return (com.join.android.app.component.video.c) this.videoHelper.getValue();
    }

    @NotNull
    public final MustPlayViewModle getViewModel() {
        return (MustPlayViewModle) this.viewModel.getValue();
    }

    public final void notifyAdapter(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        getAdapter().notifyDataSetChanged();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        getViewModel().loadDatas(this, 1);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getDataBinding().setVariable(1, getAdapter());
        getDataBinding().setVariable(50, getViewModel());
        getDataBinding().setVariable(30, this);
        getDataBinding().setVariable(8, this);
        getDataBinding().setVariable(40, this);
        getDataBinding().setLifecycleOwner(this);
        getViewModel().loadDatas(this, 1);
        getVideoHelper().K(1);
        getVideoHelper().n(getDataBinding().f38473c);
        getDataBinding().f38473c.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.modleregin.MustPalyReginActivity.onCreate.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                MustPalyReginActivity.this.getVideoHelper().j(recyclerView, newState);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                try {
                    RecyclerView.LayoutManager layoutManager = MustPalyReginActivity.this.getDataBinding().f38473c.getLayoutManager();
                    Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                    int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                    List<MustplayItemBean> value = MustPalyReginActivity.this.getViewModel().getShowDatas().getValue();
                    Intrinsics.checkNotNull(value);
                    MustPalyReginActivity.this.getVideoHelper().f(recyclerView, iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition - iFindFirstVisibleItemPosition, value.size());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
        getAdapter().setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.modleregin.m
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return MustPalyReginActivity.onCreate$lambda$4(this.f49298b, ((Integer) obj).intValue(), (MustplayItemBean) obj2, ((Integer) obj3).intValue());
            }
        });
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (getVideoHelper() != null) {
            getVideoHelper().F();
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity
    public void onDownloadStatusEventReceved(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    updateDowStateList();
                    getAdapter().notifyDataSetChanged();
                    break;
            }
        } else {
            updateDowStateList();
            getAdapter().notifyDataSetChanged();
        }
        if (downloadTaskEvent.c() != 8) {
            getAdapter().notifyDataSetChanged();
        }
    }

    @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
    public void onLoadMore() {
        getViewModel().loadDatas(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        if (getVideoHelper() != null) {
            getVideoHelper().G();
        }
        super.onPause();
    }

    @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
    public void onRefresh() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (getVideoHelper() != null) {
            getVideoHelper().H();
        }
        kotlinx.coroutines.j.f(o1.f93610b, z0.c(), null, new C13621(null), 2, null);
        super.onResume();
    }

    public final void updateDowStateList() {
        try {
            Iterator<T> it2 = getViewModel().getAllDownloadBeans().iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask((CollectionBeanSub) it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
