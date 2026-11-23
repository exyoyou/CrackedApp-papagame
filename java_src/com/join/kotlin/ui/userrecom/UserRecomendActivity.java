package com.join.kotlin.ui.userrecom;

import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.m5;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.base.BaseHasDownloadActivity;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.psk.kotlin.util.CommonListMainData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u000105H\u0014J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0010\u00108\u001a\u0002032\u0006\u00109\u001a\u00020:H\u0016J\u0006\u0010;\u001a\u000203J\u0012\u0010<\u001a\u0002032\b\u0010=\u001a\u0004\u0018\u00010>H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R\u001a\u0010,\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u0006?"}, d2 = {"Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/userrecom/RecomViewModle;)V", "adapter", "Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;", "setAdapter", "(Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;)V", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityUserrecomActivityBinding;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityUserrecomActivityBinding;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityUserrecomActivityBinding;)V", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "mFirstVisiblePosition", "", "getMFirstVisiblePosition", "()I", "setMFirstVisiblePosition", "(I)V", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "", "getSCROLLING", "()Z", "setSCROLLING", "(Z)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "updataList", "updateDownStateList", "onDownloadStatusEventReceved", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateProgressPartly", "onClick", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUserRecomendActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRecomendActivity.kt\ncom/join/kotlin/ui/userrecom/UserRecomendActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,200:1\n1869#2,2:201\n1869#2,2:209\n167#3,2:203\n182#3,4:205\n*S KotlinDebug\n*F\n+ 1 UserRecomendActivity.kt\ncom/join/kotlin/ui/userrecom/UserRecomendActivity\n*L\n140#1:201,2\n101#1:209,2\n163#1:203,2\n163#1:205,4\n*E\n"})
public final class UserRecomendActivity extends BaseHasDownloadActivity implements View.OnClickListener {
    private boolean SCROLLING;

    @Nullable
    private UserRecomendAdapter adapter;
    public GestureDetector gestureDetector;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;
    public LinearLayoutManager manager;
    public RecomViewModle viewModle;
    public m5 viewdataBinding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreate$lambda$0(UserRecomendActivity userRecomendActivity, View view, MotionEvent motionEvent) {
        return userRecomendActivity.getGestureDetector().onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$1(UserRecomendActivity userRecomendActivity, ArrayList arrayList) {
        UserRecomendAdapter userRecomendAdapter = userRecomendActivity.adapter;
        if (userRecomendAdapter != null) {
            userRecomendAdapter.notifyDataSetChanged();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$4(UserRecomendActivity userRecomendActivity, ResponseModel responseModel) {
        boolean z10 = false;
        if (responseModel != null && responseModel.getCode() == 200) {
            z10 = true;
        }
        if (z10) {
            Object data = responseModel.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            for (CollectionBeanSub collectionBeanSub : (Iterable) data) {
                userRecomendActivity.getViewModle().getAllDownloadBeans().add(collectionBeanSub);
                ArrayList<CommonListMainData> value = userRecomendActivity.getViewModle().getShowDataList().getValue();
                Intrinsics.checkNotNull(value);
                value.add(new CommonListMainData(2, collectionBeanSub, null, null, 12, null));
            }
            UserRecomendAdapter userRecomendAdapter = userRecomendActivity.adapter;
            if (userRecomendAdapter != null) {
                userRecomendAdapter.notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    @Nullable
    public final UserRecomendAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final GestureDetector getGestureDetector() {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector != null) {
            return gestureDetector;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
        return null;
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    @NotNull
    public final LinearLayoutManager getManager() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("manager");
        return null;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    @NotNull
    public final RecomViewModle getViewModle() {
        RecomViewModle recomViewModle = this.viewModle;
        if (recomViewModle != null) {
            return recomViewModle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        return null;
    }

    @NotNull
    public final m5 getViewdataBinding() {
        m5 m5Var = this.viewdataBinding;
        if (m5Var != null) {
            return m5Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        return null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        finish();
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setViewdataBinding((m5) DataBindingUtil.setContentView(this, R.layout.activity_userrecom_activity));
        setViewModle((RecomViewModle) new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(RecomViewModle.class));
        getViewdataBinding().f41729d.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.ui.userrecom.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return UserRecomendActivity.onCreate$lambda$0(this.f49359b, view, motionEvent);
            }
        });
        final int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp30);
        setGestureDetector(new GestureDetector(this, new GestureDetector.SimpleOnGestureListener() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity.onCreate.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
                Intrinsics.checkNotNullParameter(e11, "e2");
                float x10 = e10 != null ? e10.getX() : 0.0f;
                float y10 = e10 != null ? e10.getY() : 0.0f;
                float x11 = e11.getX();
                float y11 = e11.getY();
                float f10 = x10 - x11;
                int i10 = dimensionPixelOffset;
                if (f10 <= i10 && x11 - x10 <= i10 && y10 - y11 <= i10) {
                    return y11 - y10 > ((float) i10);
                }
                this.finish();
                return true;
            }
        }));
        long longExtra = getIntent().getLongExtra("range", 1L);
        getViewModle().getTitleMessage().setValue(longExtra + "天不见，为你推荐以下游戏");
        this.adapter = new UserRecomendAdapter(this);
        getViewModle().getShowDataList().setValue(new ArrayList<>());
        getViewdataBinding().setVariable(54, getViewModle());
        getViewdataBinding().setVariable(1, this.adapter);
        getViewdataBinding().setVariable(8, this);
        getViewModle().getShowDataList().observe(this, new UserRecomendActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.userrecom.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserRecomendActivity.onCreate$lambda$1(this.f49360b, (ArrayList) obj);
            }
        }));
        RecyclerView.LayoutManager layoutManager = getViewdataBinding().f41727b.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        setManager((LinearLayoutManager) layoutManager);
        final RecyclerView recyclerView = getViewdataBinding().f41727b;
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$4$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrollStateChanged(recyclerView2, newState);
                this.this$0.setSCROLLING(recyclerView.getScrollState() != 0);
            }
        });
        getViewModle().getRequest().getResultData().observe(this, new UserRecomendActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.userrecom.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserRecomendActivity.onCreate$lambda$4(this.f49361b, (ResponseModel) obj);
            }
        }));
        updataList();
        t.l(this).R1(Event.recGamesOldUser, new Ext());
        UserRecomendAdapter userRecomendAdapter = this.adapter;
        if (userRecomendAdapter != null) {
            userRecomendAdapter.setOnItemClickListener(new BaseDataBindingAdapter.OnItemClickListener<CommonListMainData>() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity.onCreate.6
                @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
                public void onItemClick(int viewId, CommonListMainData item, int position) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    IntentUtil.getInstance().intentActivity(UserRecomendActivity.this, item.getIntentDataBean());
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Code duplicated, block: B:20:0x002d  */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity
    public void onDownloadStatusEventReceved(@NotNull r downloadTaskEvent) {
        UserRecomendAdapter userRecomendAdapter;
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
                    userRecomendAdapter = this.adapter;
                    if (userRecomendAdapter != null) {
                        userRecomendAdapter.notifyDataSetChanged();
                    }
                    break;
            }
        } else {
            updateDownStateList();
            userRecomendAdapter = this.adapter;
            if (userRecomendAdapter != null) {
                userRecomendAdapter.notifyDataSetChanged();
            }
        }
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    public final void setAdapter(@Nullable UserRecomendAdapter userRecomendAdapter) {
        this.adapter = userRecomendAdapter;
    }

    public final void setGestureDetector(@NotNull GestureDetector gestureDetector) {
        Intrinsics.checkNotNullParameter(gestureDetector, "<set-?>");
        this.gestureDetector = gestureDetector;
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setManager(@NotNull LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<set-?>");
        this.manager = linearLayoutManager;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }

    public final void setViewModle(@NotNull RecomViewModle recomViewModle) {
        Intrinsics.checkNotNullParameter(recomViewModle, "<set-?>");
        this.viewModle = recomViewModle;
    }

    public final void setViewdataBinding(@NotNull m5 m5Var) {
        Intrinsics.checkNotNullParameter(m5Var, "<set-?>");
        this.viewdataBinding = m5Var;
    }

    public final void updataList() {
        Serializable serializableExtra = getIntent().getSerializableExtra("listDatas");
        if (serializableExtra == null) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.wdp162);
        int iK = ((q.n(this).k(this) - getResources().getDimensionPixelOffset(R.dimen.wdp262)) - q.t(this)) - q.v(this);
        List list = (List) serializableExtra;
        ViewGroup.LayoutParams layoutParams = getViewdataBinding().f41727b.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        if (list.size() * dimensionPixelSize > iK) {
            layoutParams2.height = iK;
        } else {
            layoutParams2.height = dimensionPixelSize * list.size();
        }
        getViewdataBinding().f41727b.setLayoutParams(layoutParams2);
        for (CollectionBeanSub collectionBeanSub : (Iterable) serializableExtra) {
            collectionBeanSub.set_from(144);
            collectionBeanSub.set_from_type(144);
            collectionBeanSub.setRecPosition(String.valueOf(collectionBeanSub.getIndex()));
            getViewModle().getAllDownloadBeans().add(collectionBeanSub);
            ArrayList<CommonListMainData> value = getViewModle().getShowDataList().getValue();
            Intrinsics.checkNotNull(value);
            value.add(new CommonListMainData(2, collectionBeanSub, null, null, 12, null));
        }
        updateDownStateList();
        UserRecomendAdapter userRecomendAdapter = this.adapter;
        if (userRecomendAdapter != null) {
            userRecomendAdapter.notifyDataSetChanged();
        }
    }

    public final void updateDownStateList() {
        try {
            Iterator<CollectionBeanSub> it2 = getViewModle().getAllDownloadBeans().iterator();
            Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
            while (it2.hasNext()) {
                CollectionBeanSub next = it2.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                DlTaskManager.INSTANCE.updateDownloadTask(next);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void updateProgressPartly() {
        UserRecomendAdapter userRecomendAdapter;
        try {
            this.mFirstVisiblePosition = getManager().findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = getManager().findLastVisibleItemPosition();
            this.mLastVisibleIndex = iFindLastVisibleItemPosition;
            int i10 = this.mFirstVisiblePosition;
            if (i10 > iFindLastVisibleItemPosition) {
                return;
            }
            while (true) {
                RecomViewModle viewModle = getViewModle();
                Intrinsics.checkNotNull(viewModle);
                ArrayList<CommonListMainData> value = viewModle.getShowDataList().getValue();
                Intrinsics.checkNotNull(value);
                if (i10 >= value.size()) {
                    return;
                }
                RecomViewModle viewModle2 = getViewModle();
                Intrinsics.checkNotNull(viewModle2);
                ArrayList<CommonListMainData> value2 = viewModle2.getShowDataList().getValue();
                Intrinsics.checkNotNull(value2);
                CommonListMainData commonListMainData = value2.get(i10);
                Intrinsics.checkNotNullExpressionValue(commonListMainData, "get(...)");
                CommonListMainData commonListMainData2 = commonListMainData;
                if (commonListMainData2.getType() == 2) {
                    Object any = commonListMainData2.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                    DownloadTask downloadTask = ((CollectionBeanSub) any).getDownloadTask();
                    if (downloadTask != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (userRecomendAdapter = this.adapter) != null)) {
                        userRecomendAdapter.notifyItemChanged(i10, "progress");
                    }
                }
                if (i10 == iFindLastVisibleItemPosition) {
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
