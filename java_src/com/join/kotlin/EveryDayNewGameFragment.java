package com.join.kotlin;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ij;
import com.join.mgps.Util.w2;
import com.join.mgps.activity.LocalGameActivity;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u001b\u001a\u00020\u0019H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/EveryDayNewGameFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/EverydayNewGameFragmentBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/EverydayNewGameFragmentBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/EverydayNewGameFragmentBinding;)V", "adapter", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "getAdapter", "()Landroidx/viewpager2/adapter/FragmentStateAdapter;", "setAdapter", "(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onDestroyView", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEveryDayNewGameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EveryDayNewGameFragment.kt\ncom/join/kotlin/EveryDayNewGameFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,110:1\n1878#2,2:111\n1880#2:117\n470#3:113\n470#3:114\n470#3:115\n470#3:116\n*S KotlinDebug\n*F\n+ 1 EveryDayNewGameFragment.kt\ncom/join/kotlin/EveryDayNewGameFragment\n*L\n35#1:111,2\n35#1:117\n50#1:113\n51#1:114\n53#1:115\n54#1:116\n*E\n"})
public final class EveryDayNewGameFragment extends Fragment {
    public FragmentStateAdapter adapter;
    public ij binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(EveryDayNewGameFragment everyDayNewGameFragment) {
        everyDayNewGameFragment.getBinding().f39841d.setCurrentItem(0);
    }

    @NotNull
    public final FragmentStateAdapter getAdapter() {
        FragmentStateAdapter fragmentStateAdapter = this.adapter;
        if (fragmentStateAdapter != null) {
            return fragmentStateAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final ij getBinding() {
        ij ijVar = this.binding;
        if (ijVar != null) {
            return ijVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(ij.inflate(inflater, container, false));
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (this.binding != null) {
            getBinding().f39841d.setAdapter(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ArrayList arrayListArrayListOf = CollectionsKt__CollectionsKt.arrayListOf(LocalGameActivity.ALL, "网游", "单机", "模拟器");
        final ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (Object obj : arrayListArrayListOf) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            EverdayNewFragment everdayNewFragment = new EverdayNewFragment();
            Bundle bundle = new Bundle();
            bundle.putString("title", str);
            bundle.putBoolean("_from_home", true);
            everdayNewFragment.setArguments(bundle);
            arrayList.add(everdayNewFragment);
            TabLayout.g gVarU = getBinding().f39840c.I().u(R.layout.layout_custom_tab_home_new_game);
            Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
            if (gVarU.g() != null) {
                View viewG = gVarU.g();
                Intrinsics.checkNotNull(viewG);
                TextView textView = (TextView) viewG.findViewById(R.id.tabText);
                textView.setText(str);
                if (i10 == 0) {
                    textView.setTextColor(Color.parseColor("#FF7300"));
                    textView.setBackgroundColor(Color.parseColor("#FFE6D2"));
                } else {
                    textView.setTextColor(Color.parseColor("#999999"));
                    textView.setBackgroundColor(Color.parseColor("#F5F5F5"));
                }
                getBinding().f39840c.i(gVarU);
            }
            i10 = i11;
        }
        w2.a(getBinding().f39840c);
        setAdapter(new FragmentStateAdapter(this) { // from class: com.join.kotlin.EveryDayNewGameFragment.onViewCreated.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int position) {
                Fragment fragment = arrayList.get(position);
                Intrinsics.checkNotNullExpressionValue(fragment, "get(...)");
                return fragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }
        });
        getBinding().f39841d.setSaveEnabled(false);
        getBinding().f39841d.setAdapter(getAdapter());
        getBinding().f39840c.h(new TabLayout.d() { // from class: com.join.kotlin.EveryDayNewGameFragment.onViewCreated.3
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                EveryDayNewGameFragment.this.getBinding().f39841d.setCurrentItem(tab.k());
                View viewG2 = tab.g();
                TextView textView2 = viewG2 != null ? (TextView) viewG2.findViewById(R.id.tabText) : null;
                if (textView2 != null) {
                    textView2.setTextColor(Color.parseColor("#FF7300"));
                }
                if (textView2 != null) {
                    textView2.setBackgroundColor(Color.parseColor("#FFE6D2"));
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                View viewG2 = tab.g();
                TextView textView2 = viewG2 != null ? (TextView) viewG2.findViewById(R.id.tabText) : null;
                if (textView2 != null) {
                    textView2.setTextColor(Color.parseColor("#999999"));
                }
                if (textView2 != null) {
                    textView2.setBackgroundColor(Color.parseColor("#F5F5F5"));
                }
            }
        });
        getBinding().f39841d.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.kotlin.EveryDayNewGameFragment.onViewCreated.4
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                TabLayout.g gVarD = EveryDayNewGameFragment.this.getBinding().f39840c.D(position);
                if (gVarD != null) {
                    gVarD.r();
                }
            }
        });
        getBinding().f39841d.setOffscreenPageLimit(5);
        getBinding().f39841d.post(new Runnable() { // from class: com.join.kotlin.f
            @Override // java.lang.Runnable
            public final void run() {
                EveryDayNewGameFragment.onViewCreated$lambda$1(this.f48614b);
            }
        });
    }

    public final void setAdapter(@NotNull FragmentStateAdapter fragmentStateAdapter) {
        Intrinsics.checkNotNullParameter(fragmentStateAdapter, "<set-?>");
        this.adapter = fragmentStateAdapter;
    }

    public final void setBinding(@NotNull ij ijVar) {
        Intrinsics.checkNotNullParameter(ijVar, "<set-?>");
        this.binding = ijVar;
    }
}
