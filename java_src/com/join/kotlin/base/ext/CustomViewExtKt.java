package com.join.kotlin.base.ext;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.loadCallBack.EmptyCallback;
import com.join.kotlin.base.widget.loadCallBack.ErrorCallback;
import com.join.kotlin.base.widget.loadCallBack.LoadingCallback;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a4\u0010\u0000\u001a\u00020\b*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\n0\fj\b\u0012\u0004\u0012\u00020\n`\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0007\u001a\"\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u001a\u0016\u0010\u0017\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0018\u001a\u00020\u0019\u001a\u0018\u0010\u001a\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\u00102\b\b\u0002\u0010\u0018\u001a\u00020\u0019\u001a\u000e\u0010\u001b\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\u0010\u001a\u000e\u0010\u001c\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\u0010\u001aR\u0010\u001d\u001a\u00020\u0016\"\u0004\b\u0000\u0010\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001e0 2\u0010\u0010!\u001a\f\u0012\u0004\u0012\u0002H\u001e\u0012\u0002\b\u00030\"2\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010$\u001a\u00020\u00012\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015¨\u0006&"}, d2 = {"init", "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;", "layoutManger", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "bindAdapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "isScroll", "", "Landroidx/viewpager2/widget/ViewPager2;", "fragment", "Landroidx/fragment/app/Fragment;", "fragments", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "isUserInputEnabled", "loadServiceInit", "Lcom/kingja/loadsir/core/LoadService;", "", "view", "Landroid/view/View;", com.alipay.sdk.authjs.a.f7124i, "Lkotlin/Function0;", "", "setErrorText", "message", "", "showError", "showEmpty", "showLoading", "loadListData", "T", "data", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "loadService", "recyclerView", "emptyCall", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CustomViewExtKt {
    @NotNull
    public static final XQuickRecyclerView init(@NotNull XQuickRecyclerView xQuickRecyclerView, @NotNull RecyclerView.LayoutManager layoutManger, @NotNull RecyclerView.Adapter<?> bindAdapter, boolean z10) {
        Intrinsics.checkNotNullParameter(xQuickRecyclerView, "<this>");
        Intrinsics.checkNotNullParameter(layoutManger, "layoutManger");
        Intrinsics.checkNotNullParameter(bindAdapter, "bindAdapter");
        xQuickRecyclerView.setLayoutManager(layoutManger);
        xQuickRecyclerView.setHasFixedSize(true);
        xQuickRecyclerView.setAdapter(bindAdapter);
        xQuickRecyclerView.setNestedScrollingEnabled(z10);
        return xQuickRecyclerView;
    }

    public static /* synthetic */ XQuickRecyclerView init$default(XQuickRecyclerView xQuickRecyclerView, RecyclerView.LayoutManager layoutManager, RecyclerView.Adapter adapter, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return init(xQuickRecyclerView, layoutManager, (RecyclerView.Adapter<?>) adapter, z10);
    }

    public static final <T> void loadListData(@NotNull ListDataUiState<T> data, @NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull com.kingja.loadsir.core.b<?> loadService, @NotNull XQuickRecyclerView recyclerView, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        Intrinsics.checkNotNullParameter(loadService, "loadService");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        recyclerView.loadMoreComplete();
        if (!data.isSuccess()) {
            if (data.isRefresh()) {
                showError(loadService, data.getErrMessage());
                return;
            }
            return;
        }
        if (data.isFirstEmpty()) {
            if (function0 != null) {
                function0.invoke();
            } else {
                showEmpty(loadService);
            }
            recyclerView.refreshComplete();
            return;
        }
        if (!data.isRefresh()) {
            baseQuickAdapter.addAll(data.getListData());
            loadService.h();
            if (data.getListData().isEmpty()) {
                recyclerView.setNoMore();
                return;
            }
            return;
        }
        baseQuickAdapter.submitList(data.getListData());
        recyclerView.refreshComplete();
        loadService.h();
        if (data.getListData().isEmpty() || !data.getHasMore()) {
            recyclerView.setNoMore();
        }
    }

    public static /* synthetic */ void loadListData$default(ListDataUiState listDataUiState, BaseQuickAdapter baseQuickAdapter, com.kingja.loadsir.core.b bVar, XQuickRecyclerView xQuickRecyclerView, Function0 function0, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            function0 = null;
        }
        loadListData(listDataUiState, baseQuickAdapter, bVar, xQuickRecyclerView, function0);
    }

    @NotNull
    public static final com.kingja.loadsir.core.b<Object> loadServiceInit(@NotNull View view, @NotNull Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(callback, "callback");
        com.kingja.loadsir.core.b<Object> bVarE = com.kingja.loadsir.core.c.c().e(view, new c(callback));
        Intrinsics.checkNotNull(bVarE);
        return bVarE;
    }

    public static final void setErrorText(@NotNull com.kingja.loadsir.core.b<?> bVar, @NotNull final String message) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.length() > 0) {
            bVar.f(ErrorCallback.class, new com.kingja.loadsir.core.d() { // from class: com.join.kotlin.base.ext.d
                @Override // com.kingja.loadsir.core.d
                public final void a(Context context, View view) {
                    CustomViewExtKt.setErrorText$lambda$1(message, context, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setErrorText$lambda$1(String str, Context context, View view) {
        ((TextView) view.findViewById(R.id.failedMessage)).setText(str);
    }

    public static final void showEmpty(@NotNull com.kingja.loadsir.core.b<?> bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.g(EmptyCallback.class);
    }

    public static final void showError(@NotNull com.kingja.loadsir.core.b<?> bVar, @NotNull String message) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        setErrorText(bVar, message);
        bVar.g(ErrorCallback.class);
    }

    public static /* synthetic */ void showError$default(com.kingja.loadsir.core.b bVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        showError(bVar, str);
    }

    public static final void showLoading(@NotNull com.kingja.loadsir.core.b<?> bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.g(LoadingCallback.class);
    }

    public static /* synthetic */ ViewPager2 init$default(ViewPager2 viewPager2, Fragment fragment, ArrayList arrayList, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return init(viewPager2, fragment, (ArrayList<Fragment>) arrayList, z10);
    }

    @NotNull
    public static final ViewPager2 init(@NotNull ViewPager2 viewPager2, @NotNull Fragment fragment, @NotNull final ArrayList<Fragment> fragments, boolean z10) {
        Intrinsics.checkNotNullParameter(viewPager2, "<this>");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        viewPager2.setUserInputEnabled(z10);
        viewPager2.setAdapter(new FragmentStateAdapter(fragment) { // from class: com.join.kotlin.base.ext.CustomViewExtKt.init.1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int position) {
                Fragment fragment2 = fragments.get(position);
                Intrinsics.checkNotNullExpressionValue(fragment2, "get(...)");
                return fragment2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return fragments.size();
            }
        });
        return viewPager2;
    }
}
