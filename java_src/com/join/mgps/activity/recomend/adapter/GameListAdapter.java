package com.join.mgps.activity.recomend.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.c;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.a50;
import com.join.android.app.mgsim.wufun.databinding.e50;
import com.join.android.app.mgsim.wufun.databinding.i50;
import com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.MultiRecommendBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ \u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002¨\u0006\u0012"}, d2 = {"Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/mgps/dto/MultiRecommendBean;", "<init>", "()V", "expGame", "", "rv_game", "Landroidx/recyclerview/widget/RecyclerView;", "gameList", "", "Lcom/join/mgps/dto/AppBean;", "onBindGameList", "helper", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemRecommendGame4Binding;", "bean", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,338:1\n55#2:339\n55#2:340\n55#2:341\n*S KotlinDebug\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n*L\n42#1:339\n52#1:340\n76#1:341\n*E\n"})
public final class GameListAdapter extends c<MultiRecommendBean> {
    public static final int ITEM_TYPE_GAME = 3;
    public static final int ITEM_TYPE_H_LIST = 2;
    public static final int ITEM_TYPE_TITLE = 1;

    public GameListAdapter() {
        super(null, 1, null);
        onItemViewType(new c.a<MultiRecommendBean>() { // from class: com.join.mgps.activity.recomend.adapter.GameListAdapter.1
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends MultiRecommendBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (position < 0 || position >= list.size()) ? position : list.get(position).getViewType();
            }
        }).addItemType(1, a.class, new OnMultiItemAdapterListenerImpl<MultiRecommendBean, i50>() { // from class: com.join.mgps.activity.recomend.adapter.GameListAdapter.2
            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<i50> holder, int i10, MultiRecommendBean multiRecommendBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                i50 i50Var = (i50) holder.a();
                if (i50Var != null) {
                    i50Var.n(multiRecommendBean != null ? (String) multiRecommendBean.getData() : null);
                }
                i50 i50Var2 = (i50) holder.a();
                if (i50Var2 != null) {
                    i50Var2.executePendingBindings();
                }
            }
        }).addItemType(2, a.class, new OnMultiItemAdapterListenerImpl<MultiRecommendBean, a50>() { // from class: com.join.mgps.activity.recomend.adapter.GameListAdapter.3
            {
                super(R.layout.item_recommend_game_2);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<a50> holder, int i10, final MultiRecommendBean multiRecommendBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                a50 a50Var = (a50) holder.a();
                RecyclerView recyclerView = a50Var != null ? a50Var.f35666b : null;
                HGameAdapter hGameAdapter = new HGameAdapter();
                hGameAdapter.submitList(multiRecommendBean != null ? (List) multiRecommendBean.getData() : null);
                if (recyclerView != null) {
                    recyclerView.setLayoutManager(new LinearLayoutManager(GameListAdapter.this.getContext(), 0, false));
                }
                if (recyclerView != null) {
                    recyclerView.setAdapter(hGameAdapter);
                }
                a50 a50Var2 = (a50) holder.a();
                if (a50Var2 != null) {
                    a50Var2.executePendingBindings();
                }
                if (recyclerView != null) {
                    final GameListAdapter gameListAdapter = GameListAdapter.this;
                    recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.recomend.adapter.GameListAdapter$3$onBind$1
                        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                        public void onScrollStateChanged(RecyclerView recyclerView2, int newState) {
                            Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                            super.onScrollStateChanged(recyclerView2, newState);
                            if (newState == 0) {
                                GameListAdapter gameListAdapter2 = gameListAdapter;
                                MultiRecommendBean multiRecommendBean2 = multiRecommendBean;
                                Intrinsics.checkNotNull(multiRecommendBean2);
                                Object data = multiRecommendBean2.getData();
                                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                                gameListAdapter2.expGame(recyclerView2, (List) data);
                            }
                        }
                    });
                }
            }
        }).addItemType(3, a.class, new OnMultiItemAdapterListenerImpl<MultiRecommendBean, e50>() { // from class: com.join.mgps.activity.recomend.adapter.GameListAdapter.4
            {
                super(R.layout.item_recommend_game_4);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<e50> holder, int i10, MultiRecommendBean multiRecommendBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                e50 e50Var = (e50) holder.a();
                if (e50Var != null) {
                    e50Var.n(multiRecommendBean != null ? (AppBean) multiRecommendBean.getData() : null);
                }
                e50 e50Var2 = (e50) holder.a();
                if (e50Var2 != null) {
                    e50Var2.executePendingBindings();
                }
                GameListAdapter.this.onBindGameList(holder, multiRecommendBean != null ? (AppBean) multiRecommendBean.getData() : null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBindGameList(a<e50> aVar, AppBean appBean) {
        long j10;
        int progress;
        DownloadNormalView downloadNormalView;
        if (appBean == null) {
            aVar.itemView.setVisibility(8);
            return;
        }
        aVar.itemView.setVisibility(0);
        DownloadTask downloadTask = appBean.getDownloadTask();
        String str = "";
        ArrayList<TipBean> tag_info = appBean.getTag_info();
        String score = appBean.getScore();
        int down_count = appBean.getDown_count();
        String size = appBean.getSize();
        TipNew sp_tag_info = appBean.getSp_tag_info();
        e50 e50Var = (e50) aVar.a();
        UtilsMy.K(score, down_count, size, sp_tag_info, tag_info, e50Var != null ? e50Var.f37795j : null, getContext());
        try {
            String size2 = appBean.getSize();
            Intrinsics.checkNotNullExpressionValue(size2, "getSize(...)");
            double d10 = 1024;
            j10 = (long) (Double.parseDouble(size2) * d10 * d10);
        } catch (Exception e10) {
            e10.printStackTrace();
            j10 = 0;
        }
        e50 e50Var2 = (e50) aVar.a();
        if (e50Var2 != null) {
            if (appBean.getGift_package_switch() == 1) {
                e50Var2.f37790e.setVisibility(0);
            } else {
                e50Var2.f37790e.setVisibility(8);
            }
            e50Var2.f37798m.setText(appBean.getInfo());
        }
        e50 e50Var3 = (e50) aVar.a();
        if (e50Var3 != null && (downloadNormalView = e50Var3.f37787b) != null) {
            downloadNormalView.f(new m6.c(getContext(), appBean));
        }
        if (appBean.isH5Game()) {
            e50 e50Var4 = (e50) aVar.a();
            if (e50Var4 != null) {
                e50Var4.f37795j.setVisibility(8);
                e50Var4.f37791f.setVisibility(8);
                e50Var4.f37794i.setVisibility(8);
                e50Var4.f37793h.setVisibility(8);
                e50Var4.f37798m.setVisibility(0);
                return;
            }
            return;
        }
        if (downloadTask == null) {
            e50 e50Var5 = (e50) aVar.a();
            if (e50Var5 != null) {
                e50Var5.f37795j.setVisibility(0);
                e50Var5.f37791f.setVisibility(8);
                e50Var5.f37794i.setVisibility(8);
                e50Var5.f37793h.setVisibility(8);
                e50Var5.f37798m.setVisibility(0);
                return;
            }
            return;
        }
        int status = downloadTask.getStatus();
        if (status != 0) {
            if (status != 42) {
                if (status == 48) {
                    e50 e50Var6 = (e50) aVar.a();
                    if (e50Var6 != null) {
                        e50Var6.f37795j.setVisibility(0);
                        e50Var6.f37798m.setVisibility(0);
                        e50Var6.f37791f.setVisibility(8);
                        e50Var6.f37794i.setVisibility(8);
                        e50Var6.f37793h.setVisibility(8);
                        return;
                    }
                    return;
                }
                if (status == 2) {
                    String str2 = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                    int progress2 = (int) downloadTask.getProgress();
                    e50 e50Var7 = (e50) aVar.a();
                    if (e50Var7 != null) {
                        e50Var7.f37795j.setVisibility(8);
                        e50Var7.f37798m.setVisibility(8);
                        e50Var7.f37791f.setVisibility(0);
                        e50Var7.f37794i.setVisibility(8);
                        e50Var7.f37793h.setVisibility(0);
                        e50Var7.f37796k.setText(str2);
                        e50Var7.f37792g.setText(downloadTask.getSpeed() + "/S");
                        e50Var7.f37793h.setProgress(progress2);
                        return;
                    }
                    return;
                }
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        e50 e50Var8 = (e50) aVar.a();
                                        if (e50Var8 != null) {
                                            e50Var8.f37795j.setVisibility(0);
                                            e50Var8.f37798m.setVisibility(0);
                                            e50Var8.f37791f.setVisibility(8);
                                            e50Var8.f37794i.setVisibility(8);
                                            e50Var8.f37793h.setVisibility(8);
                                        }
                                        break;
                                    case 10:
                                        String str3 = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                                        int progress3 = (int) downloadTask.getProgress();
                                        e50 e50Var9 = (e50) aVar.a();
                                        if (e50Var9 != null) {
                                            e50Var9.f37795j.setVisibility(8);
                                            e50Var9.f37798m.setVisibility(8);
                                            e50Var9.f37791f.setVisibility(0);
                                            e50Var9.f37794i.setVisibility(0);
                                            e50Var9.f37793h.setVisibility(8);
                                            e50Var9.f37796k.setText(str3);
                                            e50Var9.f37792g.setText("等待中");
                                            e50Var9.f37793h.setProgress(progress3);
                                        }
                                        break;
                                    case 11:
                                        e50 e50Var10 = (e50) aVar.a();
                                        if (e50Var10 != null) {
                                            e50Var10.f37795j.setVisibility(0);
                                            e50Var10.f37798m.setVisibility(0);
                                            e50Var10.f37791f.setVisibility(8);
                                            e50Var10.f37794i.setVisibility(8);
                                            e50Var10.f37793h.setVisibility(8);
                                        }
                                        break;
                                    case 12:
                                        String str4 = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                        int progress4 = (int) downloadTask.getProgress();
                                        e50 e50Var11 = (e50) aVar.a();
                                        if (e50Var11 != null) {
                                            e50Var11.f37795j.setVisibility(8);
                                            e50Var11.f37798m.setVisibility(8);
                                            e50Var11.f37791f.setVisibility(0);
                                            e50Var11.f37794i.setVisibility(8);
                                            e50Var11.f37793h.setVisibility(0);
                                            e50Var11.f37796k.setText(str4);
                                            e50Var11.f37792g.setText("解压中");
                                            e50Var11.f37794i.setProgress(progress4);
                                        }
                                        break;
                                    case 13:
                                        String str5 = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                        int progress5 = (int) downloadTask.getProgress();
                                        e50 e50Var12 = (e50) aVar.a();
                                        if (e50Var12 != null) {
                                            e50Var12.f37795j.setVisibility(8);
                                            e50Var12.f37798m.setVisibility(8);
                                            e50Var12.f37791f.setVisibility(0);
                                            e50Var12.f37794i.setVisibility(0);
                                            e50Var12.f37793h.setVisibility(8);
                                            e50Var12.f37796k.setText(str5);
                                            e50Var12.f37792g.setText("点击重新解压");
                                            e50Var12.f37794i.setProgress(progress5);
                                        }
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                try {
                    str = downloadTask.getSize() == 0 ? UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10) : UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                    progress = (int) downloadTask.getProgress();
                } catch (Exception e11) {
                    e11.printStackTrace();
                    progress = 0;
                }
                e50 e50Var13 = (e50) aVar.a();
                if (e50Var13 != null) {
                    e50Var13.f37795j.setVisibility(8);
                    e50Var13.f37798m.setVisibility(8);
                    e50Var13.f37791f.setVisibility(0);
                    e50Var13.f37794i.setVisibility(8);
                    e50Var13.f37793h.setVisibility(0);
                    e50Var13.f37796k.setText(str);
                    e50Var13.f37792g.setText("暂停中");
                    e50Var13.f37793h.setProgress(progress);
                    return;
                }
                return;
            }
            e50 e50Var14 = (e50) aVar.a();
            if (e50Var14 != null) {
                e50Var14.f37795j.setVisibility(0);
                e50Var14.f37798m.setVisibility(0);
                e50Var14.f37791f.setVisibility(8);
                e50Var14.f37794i.setVisibility(8);
                e50Var14.f37793h.setVisibility(8);
                return;
            }
            return;
        }
        e50 e50Var15 = (e50) aVar.a();
        if (e50Var15 != null) {
            e50Var15.f37795j.setVisibility(0);
            e50Var15.f37798m.setVisibility(0);
            e50Var15.f37791f.setVisibility(8);
            e50Var15.f37794i.setVisibility(8);
            e50Var15.f37793h.setVisibility(8);
        }
    }

    public final void expGame(@Nullable RecyclerView rv_game, @NotNull List<? extends AppBean> gameList) {
        int[] iArrM;
        int i10;
        int i11;
        View childAt;
        Intrinsics.checkNotNullParameter(gameList, "gameList");
        Rect rect = new Rect();
        if (rv_game == null || !rv_game.getGlobalVisibleRect(rect) || (i10 = (iArrM = h.m(rv_game))[0]) > (i11 = iArrM[1])) {
            return;
        }
        while (true) {
            AppBean appBean = gameList.get(i10);
            if (!appBean.getExposure() && (childAt = rv_game.getChildAt(i10 - iArrM[0])) != null && childAt.getGlobalVisibleRect(rect)) {
                t tVarL = t.l(getContext());
                Event event = Event.expGameAdPage;
                ExtBean extBeanBuildScene = appBean.getExtBean().buildScene();
                tVarL.R1(event, extBeanBuildScene != null ? extBeanBuildScene.toExt() : null);
                appBean.setExposure(true);
            }
            if (i10 == i11) {
                return;
            } else {
                i10++;
            }
        }
    }
}
