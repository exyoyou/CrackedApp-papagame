package com.join.kotlin.ui.findgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.databinding.dk;
import com.join.mgps.Util.j0;
import com.join.mgps.customview.e0;
import com.join.mgps.fragment.j3;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FindgameGamelistrankfragmentLayoutBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameGamelistrankfragmentLayoutBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameGamelistrankfragmentLayoutBinding;)V", "adapter", "Lcom/join/mgps/customview/NavigationAdapter;", "getAdapter", "()Lcom/join/mgps/customview/NavigationAdapter;", "setAdapter", "(Lcom/join/mgps/customview/NavigationAdapter;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onViewCreated", "view", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FindGameGamelistRankMainFragment extends Fragment {
    public e0 adapter;
    public dk binding;

    @NotNull
    public final e0 getAdapter() {
        e0 e0Var = this.adapter;
        if (e0Var != null) {
            return e0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final dk getBinding() {
        dk dkVar = this.binding;
        if (dkVar != null) {
            return dkVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(dk.inflate(inflater, container, false));
        ArrayList arrayListArrayListOf = CollectionsKt__CollectionsKt.arrayListOf("热门", "最新");
        ArrayList arrayList = new ArrayList();
        arrayList.add(j3.W(1));
        arrayList.add(j3.W(2));
        setAdapter(new e0(getChildFragmentManager(), arrayList, arrayListArrayListOf));
        getBinding().f37511d.setAdapter(getAdapter());
        getAdapter().notifyDataSetChanged();
        getBinding().f37510c.setViewPager(getBinding().f37511d);
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        j0.a().e(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    public final void setAdapter(@NotNull e0 e0Var) {
        Intrinsics.checkNotNullParameter(e0Var, "<set-?>");
        this.adapter = e0Var;
    }

    public final void setBinding(@NotNull dk dkVar) {
        Intrinsics.checkNotNullParameter(dkVar, "<set-?>");
        this.binding = dkVar;
    }
}
