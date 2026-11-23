package com.join.kotlin.ui.modleregin;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.o7;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.base.BaseHasDownloadActivity;
import com.join.kotlin.ui.modleregin.adapter.BtReginAdapter;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.psk.kotlin.util.CommonListMainData;
import java.util.Iterator;
import java.util.List;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J\u0010\u0010/\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0016J\u0006\u00102\u001a\u00020,J\u0006\u00103\u001a\u00020,J\u0010\u00104\u001a\u00020,2\u0006\u00105\u001a\u000206H\u0007J\b\u00107\u001a\u00020,H\u0014J\b\u00108\u001a\u00020,H\u0014J\b\u00109\u001a\u00020,H\u0014J\b\u0010:\u001a\u00020,H\u0016J\b\u0010;\u001a\u00020,H\u0016J\b\u0010<\u001a\u00020,H\u0016J\b\u0010=\u001a\u00020,H\u0016J\u0010\u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020@H\u0016J\b\u0010A\u001a\u00020,H\u0016R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\f\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006B"}, d2 = {"Lcom/join/kotlin/ui/modleregin/BtReginActivity;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;", "<init>", "()V", "viewModel", "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "getViewModel", "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModel$delegate", "Lkotlin/Lazy;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/BtReginActivityBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/BtReginActivityBinding;", "dataBinding$delegate", "videoHelper", "Lcom/join/android/app/component/video/MyListViewVideoHelper;", "getVideoHelper", "()Lcom/join/android/app/component/video/MyListViewVideoHelper;", "videoHelper$delegate", "adapter", "Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "adapter$delegate", "mFirstVisiblePosition", "", "getMFirstVisiblePosition", "()I", "setMFirstVisiblePosition", "(I)V", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "", "getSCROLLING", "()Z", "setSCROLLING", "(Z)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDownloadStatusEventReceved", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateProgressPartly", "updateDownStateList", "onEventTagChangeThread", NotificationCompat.CATEGORY_EVENT, "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", "onPause", "onResume", "onDestroy", "onRefresh", "onLoadMore", "onClickReload", "onClickSetNetWork", "onClickItem", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onClickBack", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBtReginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n167#2,2:224\n182#2,4:226\n1869#3,2:230\n*S KotlinDebug\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n*L\n123#1:224,2\n123#1:226,4\n158#1:230,2\n*E\n"})
public final class BtReginActivity extends BaseHasDownloadActivity implements ClickProxy, LoadBindClickProxy, XRecyclerView.f {
    private boolean SCROLLING;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BtReginActivity.viewModel_delegate$lambda$0(this.f49287b);
        }
    });

    /* JADX INFO: renamed from: dataBinding$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dataBinding = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BtReginActivity.dataBinding_delegate$lambda$1(this.f49288b);
        }
    });

    /* JADX INFO: renamed from: videoHelper$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy videoHelper = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BtReginActivity.videoHelper_delegate$lambda$2(this.f49289b);
        }
    });

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BtReginActivity.adapter_delegate$lambda$3(this.f49290b);
        }
    });

    /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.BtReginActivity$onResume$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.BtReginActivity$onResume$1", f = "BtReginActivity.kt", i = {}, l = {182}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.BtReginActivity$onResume$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.modleregin.BtReginActivity$onResume$1$1", f = "BtReginActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06581 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ BtReginActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06581(BtReginActivity btReginActivity, Continuation<? super C06581> continuation) {
                super(2, continuation);
                this.this$0 = btReginActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06581(this.this$0, continuation);
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
                return ((C06581) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BtReginActivity.this.new AnonymousClass1(continuation);
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
            kotlinx.coroutines.j.f(o1.f93610b, z0.e(), null, new C06581(BtReginActivity.this, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BtReginAdapter adapter_delegate$lambda$3(BtReginActivity btReginActivity) {
        return new BtReginAdapter(btReginActivity, btReginActivity.getVideoHelper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o7 dataBinding_delegate$lambda$1(BtReginActivity btReginActivity) {
        return (o7) DataBindingUtil.setContentView(btReginActivity, R.layout.bt_regin_activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$4(BtReginActivity btReginActivity, int i10, CommonListMainData item, int i11) {
        ExtBean extBean;
        Intrinsics.checkNotNullParameter(item, "item");
        int type = item.getType();
        if (type == 2) {
            Object any = item.getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
            BtGameListItem btGameListItem = (BtGameListItem) any;
            IntentDateBean intentDataBean = btGameListItem.getGameInfo().getIntentDataBean();
            extBean = intentDataBean != null ? intentDataBean.getExtBean() : null;
            if (extBean != null) {
                extBean.setReMarks(item.getReMarks());
            }
            if (intentDataBean != null) {
                intentDataBean.setExtBean(extBean);
            }
            IntentUtil.getInstance().intentActivity(btReginActivity, btGameListItem.getGameInfo().getIntentDataBean());
        } else if (type == 4) {
            Object any2 = item.getAny();
            Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
            MustplayItemBean mustplayItemBean = (MustplayItemBean) any2;
            IntentDateBean intentDataBean2 = mustplayItemBean.getGameinfo().getIntentDataBean();
            extBean = intentDataBean2 != null ? intentDataBean2.getExtBean() : null;
            if (extBean != null) {
                extBean.setReMarks(item.getReMarks());
            }
            if (intentDataBean2 != null) {
                intentDataBean2.setExtBean(extBean);
            }
            IntentUtil.getInstance().intentActivity(btReginActivity, mustplayItemBean.getGameinfo().getIntentDataBean());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.android.app.component.video.c videoHelper_delegate$lambda$2(BtReginActivity btReginActivity) {
        return new com.join.android.app.component.video.c(btReginActivity, "BtReginActivity", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BtReginModle viewModel_delegate$lambda$0(BtReginActivity btReginActivity) {
        return (BtReginModle) new ViewModelProvider(btReginActivity, new ViewModelProvider.NewInstanceFactory()).get(BtReginModle.class);
    }

    @NotNull
    public final BtReginAdapter getAdapter() {
        return (BtReginAdapter) this.adapter.getValue();
    }

    @NotNull
    public final o7 getDataBinding() {
        Object value = this.dataBinding.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (o7) value;
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    @NotNull
    public final com.join.android.app.component.video.c getVideoHelper() {
        return (com.join.android.app.component.video.c) this.videoHelper.getValue();
    }

    @NotNull
    public final BtReginModle getViewModel() {
        return (BtReginModle) this.viewModel.getValue();
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
        BtReginModle viewModel = getViewModel();
        String stringExtra = getIntent().getStringExtra("title");
        if (stringExtra == null) {
            stringExtra = "";
        }
        viewModel.setTitle(stringExtra);
        getViewModel().loadDatas(this);
        getVideoHelper().K(1);
        getVideoHelper().n(getDataBinding().f42701c);
        getAdapter().setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.modleregin.a
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return BtReginActivity.onCreate$lambda$4(this.f49284b, ((Integer) obj).intValue(), (CommonListMainData) obj2, ((Integer) obj3).intValue());
            }
        });
        getDataBinding().f42701c.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity.onCreate.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                BtReginActivity.this.getVideoHelper().j(recyclerView, newState);
                BtReginActivity.this.setSCROLLING(newState != 0);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                try {
                    RecyclerView.LayoutManager layoutManager = BtReginActivity.this.getDataBinding().f42701c.getLayoutManager();
                    Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    BtReginActivity.this.setMFirstVisiblePosition(linearLayoutManager.findFirstVisibleItemPosition());
                    BtReginActivity.this.setMLastVisibleIndex(linearLayoutManager.findLastVisibleItemPosition());
                    com.join.android.app.component.video.c videoHelper = BtReginActivity.this.getVideoHelper();
                    int mFirstVisiblePosition = BtReginActivity.this.getMFirstVisiblePosition();
                    int mLastVisibleIndex = BtReginActivity.this.getMLastVisibleIndex() - BtReginActivity.this.getMFirstVisiblePosition();
                    List<CommonListMainData> value = BtReginActivity.this.getViewModel().getShowDatas().getValue();
                    Intrinsics.checkNotNull(value);
                    videoHelper.f(recyclerView, mFirstVisiblePosition, mLastVisibleIndex, value.size());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
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
                    updateDownStateList();
                    getAdapter().notifyDataSetChanged();
                    break;
            }
        } else {
            updateDownStateList();
            getAdapter().notifyDataSetChanged();
        }
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventTagChangeThread(@NotNull BtTagSelecterBean event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getViewModel().updateTitles(event);
        getAdapter().notifyDataSetChanged();
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
        getViewModel().loadDatas(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (getVideoHelper() != null) {
            getVideoHelper().H();
        }
        kotlinx.coroutines.j.f(o1.f93610b, z0.c(), null, new AnonymousClass1(null), 2, null);
        super.onResume();
        UtilsMy.N4(this);
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }

    public final void updateDownStateList() {
        Iterator<T> it2 = getViewModel().getAllDownloadBeans().iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask((CollectionBeanSub) it2.next());
        }
    }

    public final void updateProgressPartly() {
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 > i11) {
                return;
            }
            while (true) {
                List<CommonListMainData> value = getViewModel().getShowDatas().getValue();
                Intrinsics.checkNotNull(value);
                if (i10 >= value.size()) {
                    return;
                }
                List<CommonListMainData> value2 = getViewModel().getShowDatas().getValue();
                Intrinsics.checkNotNull(value2);
                CommonListMainData commonListMainData = value2.get(i10);
                if (commonListMainData.getType() == 2) {
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                    DownloadTask downloadTask = ((BtGameListItem) any).getGameInfo().getDownloadTask();
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        getAdapter().notifyItemChanged(i10, "progress");
                    }
                }
                if (i10 == i11) {
                    return;
                } else {
                    i10++;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
