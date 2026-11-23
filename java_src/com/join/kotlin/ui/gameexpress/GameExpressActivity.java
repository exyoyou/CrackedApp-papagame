package com.join.kotlin.ui.gameexpress;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.w1;
import com.join.kotlin.base.activity.BaseVmVbActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter;
import com.join.kotlin.ui.gameexpress.adapter.GameExpressQualityCommentAdapter;
import com.join.kotlin.ui.gameexpress.model.GameExpressMultiItem;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotCommentBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotTopicBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressPageData;
import com.join.kotlin.ui.gameexpress.viewmodel.GameExpressViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.kotlin.utils.DownloadTaskEventListener;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 D2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020%H\u0016J\u0012\u0010)\u001a\u00020%2\b\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0016\u0010,\u001a\u00020%2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0002J\u0016\u00100\u001a\u00020%2\f\u00101\u001a\b\u0012\u0004\u0012\u0002020.H\u0002J\b\u00103\u001a\u00020%H\u0002J\u0010\u00104\u001a\u00020%2\u0006\u00105\u001a\u000206H\u0002J\b\u00107\u001a\u00020%H\u0002J\b\u00108\u001a\u00020%H\u0002J\b\u00109\u001a\u00020%H\u0002J\b\u0010:\u001a\u00020%H\u0002J\b\u0010;\u001a\u00020%H\u0002J\b\u0010<\u001a\u00020%H\u0002J\b\u0010=\u001a\u00020%H\u0002J\u0010\u0010>\u001a\u00020%2\u0006\u0010?\u001a\u00020\u0018H\u0002J\b\u0010@\u001a\u00020%H\u0002J\b\u0010A\u001a\u00020%H\u0014J\b\u0010B\u001a\u00020%H\u0014J\b\u0010C\u001a\u00020%H\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u001e\u001a\n  *\u0004\u0018\u00010\u001f0\u001fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006E"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;", "Lcom/join/kotlin/base/activity/BaseVmVbActivity;", "Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityGameExpressBinding;", "<init>", "()V", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "gameExpressAdapter", "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;", "getGameExpressAdapter", "()Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;", "gameExpressAdapter$delegate", "Lkotlin/Lazy;", "qualityCommentAdapter", "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;", "getQualityCommentAdapter", "()Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;", "qualityCommentAdapter$delegate", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "allDownloadGames", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "isScrolling", "", "isExposuring", "hotTopicExposed", "expressListExposed", "pageBean", "Lcom/join/mgps/dto/ExtBean;", "kotlin.jvm.PlatformType", "Lcom/join/mgps/dto/ExtBean;", "downloadTaskListener", "Lcom/join/kotlin/utils/DownloadTaskEventListener;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "bindPageData", "data", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;", "bindQualityComments", "comments", "", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "bindHotTopicFlipper", "topics", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;", "autoPlayVideo", "onDownloadTaskEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDownStateList", "updateDownloadView", "updateProgressPartly", "expQualityComment", "expHotTopic", "expExpressList", "expListGame", "expGameItem", "game", "expPage", "onPause", "onResume", "onDestroy", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameExpressActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressActivity.kt\ncom/join/kotlin/ui/gameexpress/GameExpressActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,651:1\n1869#2,2:652\n1869#2,2:654\n1869#2,2:662\n167#3,2:656\n182#3,4:658\n*S KotlinDebug\n*F\n+ 1 GameExpressActivity.kt\ncom/join/kotlin/ui/gameexpress/GameExpressActivity\n*L\n296#1:652,2\n340#1:654,2\n417#1:662,2\n402#1:656,2\n402#1:658,4\n*E\n"})
public final class GameExpressActivity extends BaseVmVbActivity<GameExpressViewModel, w1> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean expressListExposed;
    private boolean hotTopicExposed;
    private boolean isExposuring;
    private boolean isScrolling;
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private com.join.android.app.component.video.h videoHelper;

    /* JADX INFO: renamed from: gameExpressAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy gameExpressAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.gameexpress.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameExpressActivity.gameExpressAdapter_delegate$lambda$0(this.f49137b);
        }
    });

    /* JADX INFO: renamed from: qualityCommentAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy qualityCommentAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.gameexpress.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameExpressActivity.qualityCommentAdapter_delegate$lambda$1();
        }
    });

    @NotNull
    private final List<CommonGameInfoBean> allDownloadGames = new ArrayList();
    private final ExtBean pageBean = new ExtBean().setFirstModule("home").setSecondModule("choiceness").setChatId("gameDeliveryPage").setFrom(Constants.COUNTYLY_CONNECT_INPUT_WS_FAIL);

    @NotNull
    private final DownloadTaskEventListener downloadTaskListener = new DownloadTaskEventListener() { // from class: com.join.kotlin.ui.gameexpress.i
        @Override // com.join.kotlin.utils.DownloadTaskEventListener
        public final void onDownloadTaskEvent(com.join.mgps.event.r rVar) {
            GameExpressActivity.downloadTaskListener$lambda$2(this.f49138a, rVar);
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$Companion;", "", "<init>", "()V", "start", "", "context", "Landroid/content/Context;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, (Class<?>) GameExpressActivity.class));
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.gameexpress.GameExpressActivity$autoPlayVideo$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.gameexpress.GameExpressActivity$autoPlayVideo$1", f = "GameExpressActivity.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.ui.gameexpress.GameExpressActivity$autoPlayVideo$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.gameexpress.GameExpressActivity$autoPlayVideo$1$1", f = "GameExpressActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06571 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ GameExpressActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06571(GameExpressActivity gameExpressActivity, Continuation<? super C06571> continuation) {
                super(2, continuation);
                this.this$0 = gameExpressActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06571(this.this$0, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                com.join.android.app.component.video.h hVar = this.this$0.videoHelper;
                if (hVar != null) {
                    hVar.i(1);
                }
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06571) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GameExpressActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.b(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            kotlinx.coroutines.j.f(o1.f93610b, z0.e(), null, new C06571(GameExpressActivity.this, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    private final void autoPlayVideo() {
        kotlinx.coroutines.j.f(o1.f93610b, z0.c(), null, new AnonymousClass1(null), 2, null);
    }

    private final void bindHotTopicFlipper(List<GameExpressHotTopicBean> topics) {
        ViewFlipper vfHotTopic = getMViewBind().f46561q;
        Intrinsics.checkNotNullExpressionValue(vfHotTopic, "vfHotTopic");
        vfHotTopic.stopFlipping();
        vfHotTopic.removeAllViews();
        if (topics.isEmpty()) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
        for (final GameExpressHotTopicBean gameExpressHotTopicBean : topics) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.item_game_express_hot_topic_flipper, (ViewGroup) vfHotTopic, false);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tvHotContent);
            String topic_text = gameExpressHotTopicBean.getTopic_text();
            if (topic_text == null) {
                topic_text = "";
            }
            textView.setText(topic_text);
            vfHotTopic.addView(viewInflate);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GameExpressActivity.bindHotTopicFlipper$lambda$20$lambda$19(this.f49134b, gameExpressHotTopicBean, view);
                }
            });
        }
        if (topics.size() > 1) {
            vfHotTopic.startFlipping();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindHotTopicFlipper$lambda$20$lambda$19(GameExpressActivity gameExpressActivity, GameExpressHotTopicBean gameExpressHotTopicBean, View view) {
        com.papa.sim.statistic.t.l(gameExpressActivity).R1(Event.commonClick, gameExpressActivity.pageBean.copy().setSopName("热门话题").setTypeCode("topic").setResourceId(String.valueOf(gameExpressHotTopicBean.getTopic_id())).buildScene().toExt());
        IntentUtil.getInstance().goShareWebActivity(gameExpressActivity, String.valueOf(gameExpressHotTopicBean.getTopic_url()));
    }

    private final void bindPageData(GameExpressPageData data) {
        if (data == null) {
            return;
        }
        if (data.getHotTopics().isEmpty()) {
            getMViewBind().f46557m.setVisibility(8);
        } else {
            getMViewBind().f46557m.setVisibility(0);
            bindHotTopicFlipper(data.getHotTopics());
            getMViewBind().f46557m.post(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f49131b.expHotTopic();
                }
            });
        }
        bindQualityComments(data.getQualityComments());
        if (!data.getQualityComments().isEmpty()) {
            getMViewBind().f46559o.post(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f49132b.expQualityComment();
                }
            });
        }
        this.allDownloadGames.clear();
        Iterator<T> it2 = data.getListItems().iterator();
        while (it2.hasNext()) {
            Object data2 = ((GameExpressMultiItem) it2.next()).getData();
            CommonGameInfoBean commonGameInfoBean = data2 instanceof CommonGameInfoBean ? (CommonGameInfoBean) data2 : null;
            if (commonGameInfoBean != null) {
                this.allDownloadGames.add(commonGameInfoBean);
            }
        }
        getGameExpressAdapter().submitList(data.getListItems());
        autoPlayVideo();
        if (!data.getListItems().isEmpty()) {
            getMViewBind().f46560p.post(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.d
                @Override // java.lang.Runnable
                public final void run() {
                    GameExpressActivity.bindPageData$lambda$18(this.f49133b);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindPageData$lambda$18(GameExpressActivity gameExpressActivity) {
        gameExpressActivity.expExpressList();
        gameExpressActivity.expListGame();
    }

    private final void bindQualityComments(List<GameExpressHotCommentBean> comments) {
        getQualityCommentAdapter().submitList(comments);
        getMViewBind().f46550f.setVisibility(comments.isEmpty() ^ true ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$14(GameExpressActivity gameExpressActivity, ResultState resultState) {
        com.kingja.loadsir.core.b<Object> bVar = null;
        if (resultState instanceof ResultState.Success) {
            com.kingja.loadsir.core.b<Object> bVar2 = gameExpressActivity.loadSir;
            if (bVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar2;
            }
            bVar.h();
            gameExpressActivity.bindPageData((GameExpressPageData) ((ResultState.Success) resultState).getData());
        } else if (resultState instanceof ResultState.Error) {
            com.kingja.loadsir.core.b<Object> bVar3 = gameExpressActivity.loadSir;
            if (bVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar3;
            }
            CustomViewExtKt.showError(bVar, ((ResultState.Error) resultState).getError().getErrorMsg());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void downloadTaskListener$lambda$2(GameExpressActivity gameExpressActivity, com.join.mgps.event.r event) {
        Intrinsics.checkNotNullParameter(event, "event");
        gameExpressActivity.onDownloadTaskEvent(event);
    }

    private final void expExpressList() {
        if (this.expressListExposed) {
            return;
        }
        this.expressListExposed = true;
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageBean.copy().setSopName("速递列表").setTypeCode("topic").buildScene().toExt());
    }

    private final void expGameItem(CommonGameInfoBean game) {
        ExtBean extBean = game.getExtBean();
        if (extBean == null) {
            return;
        }
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, extBean.copy().setTypeCode("game").buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expHotTopic() {
        if (this.hotTopicExposed) {
            return;
        }
        this.hotTopicExposed = true;
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageBean.copy().setSopName("热门话题").setTypeCode("topic").buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expListGame() {
        int viewType;
        if (this.isExposuring) {
            return;
        }
        this.isExposuring = true;
        try {
            try {
                List<GameExpressMultiItem> items = getGameExpressAdapter().getItems();
                if (items.isEmpty()) {
                    return;
                }
                RecyclerView.LayoutManager layoutManager = getMViewBind().f46560p.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager == null) {
                    return;
                }
                int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                if (iFindLastVisibleItemPosition == -1) {
                    return;
                }
                if (iFindLastVisibleItemPosition >= 0) {
                    int i10 = 0;
                    while (true) {
                        GameExpressMultiItem gameExpressMultiItem = (GameExpressMultiItem) CollectionsKt___CollectionsKt.getOrNull(items, i10);
                        if (gameExpressMultiItem != null && !gameExpressMultiItem.getHasExposed() && ((viewType = gameExpressMultiItem.getViewType()) == 2 || viewType == 3)) {
                            Object data = gameExpressMultiItem.getData();
                            CommonGameInfoBean commonGameInfoBean = data instanceof CommonGameInfoBean ? (CommonGameInfoBean) data : null;
                            if (commonGameInfoBean != null) {
                                gameExpressMultiItem.setHasExposed(true);
                                expGameItem(commonGameInfoBean);
                            }
                        }
                        if (i10 == iFindLastVisibleItemPosition) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.isExposuring = false;
        }
    }

    private final void expPage() {
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageBean.copy().setTypeCode("page").buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expQualityComment() {
        int iFindLastVisibleItemPosition;
        if (getQualityCommentAdapter().getItems().isEmpty()) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getMViewBind().f46559o.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition()) == -1 || iFindLastVisibleItemPosition < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            GameExpressHotCommentBean item = getQualityCommentAdapter().getItem(i10);
            if (item != null && !item.getHasExposed()) {
                item.setHasExposed(true);
                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageBean.copy().setSopName("优质点评").setTypeCode("topic").setPosition("1-" + (i10 + 1)).buildScene().toExt());
            }
            if (i10 == iFindLastVisibleItemPosition) {
                return;
            } else {
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameExpressAdapter gameExpressAdapter_delegate$lambda$0(GameExpressActivity gameExpressActivity) {
        return new GameExpressAdapter(gameExpressActivity.videoHelper);
    }

    private final GameExpressAdapter getGameExpressAdapter() {
        return (GameExpressAdapter) this.gameExpressAdapter.getValue();
    }

    private final GameExpressQualityCommentAdapter getQualityCommentAdapter() {
        return (GameExpressQualityCommentAdapter) this.qualityCommentAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$12$lambda$10(GameExpressActivity gameExpressActivity, GameExpressHotCommentBean comment, int i10, int i11) {
        Intrinsics.checkNotNullParameter(comment, "comment");
        GameExpressCommentPraiseHelper.INSTANCE.praise(gameExpressActivity, gameExpressActivity.getQualityCommentAdapter(), comment.getComment_id(), comment.getGame_id(), i11);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$11(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        GameExpressHotCommentBean gameExpressHotCommentBean = (GameExpressHotCommentBean) adapter.getItem(i10);
        IntentUtil.getInstance().goCommentDetailActivity(view.getContext(), String.valueOf(gameExpressHotCommentBean != null ? Long.valueOf(gameExpressHotCommentBean.getComment_id()) : null), String.valueOf(gameExpressHotCommentBean != null ? Long.valueOf(gameExpressHotCommentBean.getGame_id()) : null), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$5(GameExpressActivity gameExpressActivity, View view) {
        IntentUtil.getInstance().goSearchHintActivity(gameExpressActivity);
        com.papa.sim.statistic.t.l(gameExpressActivity).y2(Where.rankHome, AccountUtil_.getInstance_(gameExpressActivity).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$6(GameExpressActivity gameExpressActivity, View view) {
        IntentUtil.getInstance().goMyGameManagerActivity(gameExpressActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$12$lambda$7(GameExpressActivity gameExpressActivity, GameExpressHotCommentBean comment, int i10) {
        Intrinsics.checkNotNullParameter(comment, "comment");
        String strValueOf = String.valueOf(comment.getGame_id());
        ExtBean extBeanBuildScene = gameExpressActivity.pageBean.copy().setSopName("优质点评").setTypeCode("game").setGameId(strValueOf).setResourceId(strValueOf).buildScene();
        com.papa.sim.statistic.t.l(gameExpressActivity).R1(Event.commonClick, extBeanBuildScene.toExt());
        IntentUtil.getInstance().goGameDetialActivity(gameExpressActivity, strValueOf, extBeanBuildScene);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$8(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        GameExpressHotCommentBean gameExpressHotCommentBean = (GameExpressHotCommentBean) adapter.getItem(i10);
        CommentSelfListActivity_.intent(view.getContext()).a(gameExpressHotCommentBean != null ? (int) gameExpressHotCommentBean.getUid() : 0).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$9(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        GameExpressHotCommentBean gameExpressHotCommentBean = (GameExpressHotCommentBean) adapter.getItem(i10);
        CommentSelfListActivity_.intent(view.getContext()).a(gameExpressHotCommentBean != null ? (int) gameExpressHotCommentBean.getUid() : 0).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$13(GameExpressActivity gameExpressActivity) {
        com.kingja.loadsir.core.b<Object> bVar = gameExpressActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        GameExpressViewModel gameExpressViewModel = (GameExpressViewModel) gameExpressActivity.getMViewModel();
        ExtBean pageBean = gameExpressActivity.pageBean;
        Intrinsics.checkNotNullExpressionValue(pageBean, "pageBean");
        gameExpressViewModel.loadData(pageBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$3(GameExpressActivity gameExpressActivity) {
        com.kingja.loadsir.core.b<Object> bVar = gameExpressActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        GameExpressViewModel gameExpressViewModel = (GameExpressViewModel) gameExpressActivity.getMViewModel();
        ExtBean pageBean = gameExpressActivity.pageBean;
        Intrinsics.checkNotNullExpressionValue(pageBean, "pageBean");
        gameExpressViewModel.loadData(pageBean);
        return Unit.INSTANCE;
    }

    private final void onDownloadTaskEvent(com.join.mgps.event.r rVar) {
        if (rVar.c() == 8) {
            if (this.isScrolling) {
                return;
            }
            updateProgressPartly();
            return;
        }
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = rVar.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
            }
            return;
        }
        updateDownStateList();
        getGameExpressAdapter().notifyDataSetChanged();
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameExpressQualityCommentAdapter qualityCommentAdapter_delegate$lambda$1() {
        return new GameExpressQualityCommentAdapter();
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        INSTANCE.start(context);
    }

    private final void updateDownStateList() {
        Iterator<T> it2 = this.allDownloadGames.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask((CommonGameInfoBean) it2.next());
        }
    }

    private final void updateDownloadView() {
        getMViewBind().f46554j.setDownloadGameNum();
    }

    private final void updateProgressPartly() {
        DownloadTask task;
        int status;
        RecyclerView rvList = getMViewBind().f46560p;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        RecyclerView.LayoutManager layoutManager = rvList.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1 || iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
            return;
        }
        while (true) {
            GameExpressMultiItem item = getGameExpressAdapter().getItem(iFindFirstVisibleItemPosition);
            if (item != null && (item.getViewType() == 3 || item.getViewType() == 2)) {
                Object data = item.getData();
                CommonGameInfoBean commonGameInfoBean = data instanceof CommonGameInfoBean ? (CommonGameInfoBean) data : null;
                if (commonGameInfoBean != null && (task = DlTaskManager.INSTANCE.getTask(commonGameInfoBean)) != null && ((status = task.getStatus()) == 1 || status == 2 || status == 3 || status == 10 || status == 12)) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = rvList.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                    v2.c cVar = viewHolderFindViewHolderForAdapterPosition instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition : null;
                    if (cVar != null) {
                        getGameExpressAdapter().updateDownloadUi(cVar, item, true);
                    }
                }
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((GameExpressViewModel) getMViewModel()).getPageData().observe(this, new GameExpressActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.gameexpress.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameExpressActivity.createObserver$lambda$14(this.f49136b, (ResultState) obj);
            }
        }));
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        this.videoHelper = new com.join.android.app.component.video.h(getMViewBind().f46560p, "GameExpressActivityVideoHelper");
        CoordinatorLayout loadContent = getMViewBind().f46558n;
        Intrinsics.checkNotNullExpressionValue(loadContent, "loadContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(loadContent, new Function0() { // from class: com.join.kotlin.ui.gameexpress.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameExpressActivity.initView$lambda$3(this.f49117b);
            }
        });
        w1 mViewBind = getMViewBind();
        mViewBind.f46553i.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49139b.finish();
            }
        });
        mViewBind.f46556l.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GameExpressActivity.initView$lambda$12$lambda$5(this.f49140b, view);
            }
        });
        mViewBind.f46554j.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GameExpressActivity.initView$lambda$12$lambda$6(this.f49141b, view);
            }
        });
        mViewBind.f46559o.setLayoutManager(new LinearLayoutManager(this, 0, false));
        mViewBind.f46559o.setAdapter(getQualityCommentAdapter());
        mViewBind.f46559o.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.gameexpress.GameExpressActivity$initView$2$4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    this.this$0.expQualityComment();
                }
            }
        });
        getQualityCommentAdapter().setOnGameIconClickListener(new Function2() { // from class: com.join.kotlin.ui.gameexpress.m
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return GameExpressActivity.initView$lambda$12$lambda$7(this.f49142b, (GameExpressHotCommentBean) obj, ((Integer) obj2).intValue());
            }
        });
        getQualityCommentAdapter().addOnItemChildClickListener(R.id.ivUserAvatar, new BaseQuickAdapter.b() { // from class: com.join.kotlin.ui.gameexpress.n
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameExpressActivity.initView$lambda$12$lambda$8(baseQuickAdapter, view, i10);
            }
        });
        getQualityCommentAdapter().addOnItemChildClickListener(R.id.tvUserName, new BaseQuickAdapter.b() { // from class: com.join.kotlin.ui.gameexpress.o
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameExpressActivity.initView$lambda$12$lambda$9(baseQuickAdapter, view, i10);
            }
        });
        getQualityCommentAdapter().setOnLikeListener(new Function3() { // from class: com.join.kotlin.ui.gameexpress.p
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return GameExpressActivity.initView$lambda$12$lambda$10(this.f49143b, (GameExpressHotCommentBean) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        });
        getQualityCommentAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.ui.gameexpress.q
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameExpressActivity.initView$lambda$12$lambda$11(baseQuickAdapter, view, i10);
            }
        });
        mViewBind.f46560p.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.gameexpress.GameExpressActivity$initView$2$10
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64117a = this.this$0.getResources().getDimensionPixelSize(R.dimen.wdp20);
                aVar.f64118b = this.this$0.getResources().getDimensionPixelSize(R.dimen.wdp20);
                return aVar;
            }
        });
        mViewBind.f46560p.setLayoutManager(new LinearLayoutManager(this));
        mViewBind.f46560p.setAdapter(getGameExpressAdapter());
        mViewBind.f46560p.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.gameexpress.GameExpressActivity$initView$2$11
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                this.this$0.isScrolling = newState != 0;
                if (newState == 0) {
                    com.join.android.app.component.video.h hVar = this.this$0.videoHelper;
                    if (hVar != null) {
                        hVar.i(1);
                    }
                    this.this$0.expListGame();
                }
            }
        });
        getMViewBind().f46558n.post(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.r
            @Override // java.lang.Runnable
            public final void run() {
                GameExpressActivity.initView$lambda$13(this.f49144b);
            }
        });
        DlTaskManager.INSTANCE.registerDownloadTaskListener(this.downloadTaskListener);
        updateDownloadView();
        expPage();
    }

    @Override // com.join.kotlin.base.activity.BaseDownloadActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        DlTaskManager.INSTANCE.unregisterDownloadTaskListener(this.downloadTaskListener);
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.y();
        }
        getMViewBind().f46561q.stopFlipping();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        updateDownloadView();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.E();
        }
        if (getMViewBind().f46561q.getChildCount() > 1) {
            getMViewBind().f46561q.startFlipping();
        }
    }
}
