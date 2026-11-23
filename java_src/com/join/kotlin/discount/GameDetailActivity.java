package com.join.kotlin.discount;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.n0;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.discount.proxy.GameDetailClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailViewModel;
import com.join.mgps.dto.ExtBean;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0006\u0010\u0019\u001a\u00020\u0016J\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u0016H\u0002J\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0014J\u001e\u0010!\u001a\u00020\u00162\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\tJ\b\u0010$\u001a\u00020\u0016H\u0016J\b\u0010%\u001a\u00020\u0016H\u0016J\b\u0010&\u001a\u00020\u0016H\u0002R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/join/kotlin/discount/GameDetailActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailClickProxy;", "<init>", "()V", "tabTitles", "", "", "[Ljava/lang/String;", "fragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "gameId", "defaultBtnImage", "ext", "Lcom/join/mgps/dto/ExtBean;", "detailTabDarkColor", "", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "initTabAndViewpager", "getTabBottom", "", "refreshTab", "selectTab", "position", "setTabIsDarkColor", "isDark", "setTabData", "comment", "trade", "createObserver", "onBackClick", "transparentStatuBar", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailActivity.kt\ncom/join/kotlin/discount/GameDetailActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,276:1\n13472#2,2:277\n13537#2,3:279\n*S KotlinDebug\n*F\n+ 1 GameDetailActivity.kt\ncom/join/kotlin/discount/GameDetailActivity\n*L\n101#1:277,2\n128#1:279,3\n*E\n"})
public final class GameDetailActivity extends BaseVmDbActivity<GameDetailViewModel, n0> implements GameDetailClickProxy {

    @Nullable
    private String defaultBtnImage;
    private boolean detailTabDarkColor;

    @Nullable
    private ExtBean ext;

    @Nullable
    private String gameId;

    @NotNull
    private String[] tabTitles = {"详情", "评价"};

    @NotNull
    private ArrayList<Fragment> fragments = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshTab() {
        int selectedTabPosition = getMDatabind().f42122d.getSelectedTabPosition();
        if (selectedTabPosition != 0 || this.detailTabDarkColor) {
            getMDatabind().f42120b.setImageResource(R.drawable.back_icon);
        } else {
            getMDatabind().f42120b.setImageResource(R.drawable.back_icon_discover);
        }
        int tabCount = getMDatabind().f42122d.getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            TabLayout.g gVarD = getMDatabind().f42122d.D(i10);
            if (gVarD != null) {
                if (gVarD.g() == null) {
                    return;
                }
                View viewG = gVarD.g();
                TextView textView = viewG != null ? (TextView) viewG.findViewById(R.id.tv_tab) : null;
                View viewG2 = gVarD.g();
                TextView textView2 = viewG2 != null ? (TextView) viewG2.findViewById(R.id.tv_num) : null;
                if (gVarD.o()) {
                    if (textView != null) {
                        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
                    }
                    if (textView != null) {
                        textView.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#000000") : Color.parseColor("#FFFFFF"));
                    }
                    if (textView2 != null) {
                        textView2.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#000000") : Color.parseColor("#FFFFFF"));
                    }
                } else {
                    if (textView != null) {
                        textView.setTypeface(Typeface.DEFAULT);
                    }
                    if (textView != null) {
                        textView.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#919191") : Color.parseColor("#FFFFFF"));
                    }
                    if (textView2 != null) {
                        textView2.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#919191") : Color.parseColor("#FFFFFF"));
                    }
                }
            }
        }
    }

    public static /* synthetic */ void setTabData$default(GameDetailActivity gameDetailActivity, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        if ((i10 & 2) != 0) {
            str2 = "";
        }
        gameDetailActivity.setTabData(str, str2);
    }

    private final void transparentStatuBar() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
    }

    public final int getTabBottom() {
        return getMDatabind().f42122d.getBottom();
    }

    public final void initTabAndViewpager() {
        try {
            Field declaredField = ViewPager2.class.getDeclaredField("mRecyclerView");
            Intrinsics.checkNotNullExpressionValue(declaredField, "getDeclaredField(...)");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(getMDatabind().f42123e);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
            RecyclerView recyclerView = (RecyclerView) obj;
            Field declaredField2 = RecyclerView.class.getDeclaredField("mTouchSlop");
            Intrinsics.checkNotNullExpressionValue(declaredField2, "getDeclaredField(...)");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(recyclerView);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
            declaredField2.set(recyclerView, Integer.valueOf(((Integer) obj2).intValue() * 3));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        for (String str : this.tabTitles) {
            TabLayout.g gVarU = getMDatabind().f42122d.I().u(R.layout.layout_custom_tab_game_detail);
            Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
            View viewG = gVarU.g();
            TextView textView = viewG != null ? (TextView) viewG.findViewById(R.id.tv_tab) : null;
            if (textView != null) {
                textView.setText(str);
            }
            View viewG2 = gVarU.g();
            TextView textView2 = viewG2 != null ? (TextView) viewG2.findViewById(R.id.tv_num) : null;
            if (textView2 != null) {
                textView2.setTextColor(-1);
            }
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            getMDatabind().f42122d.i(gVarU);
        }
        getMDatabind().f42122d.h(new TabLayout.d() { // from class: com.join.kotlin.discount.GameDetailActivity.initTabAndViewpager.2
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g gVar) {
                GameDetailActivity.this.refreshTab();
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g gVar) {
                GameDetailActivity.this.refreshTab();
                GameDetailActivity.this.getMDatabind().f42123e.setCurrentItem(gVar != null ? gVar.k() : 0);
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g gVar) {
            }
        });
        this.fragments.clear();
        String[] strArr = this.tabTitles;
        int length = strArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str2 = strArr[i10];
            int i12 = i11 + 1;
            Bundle bundle = new Bundle();
            bundle.putString("type", str2);
            bundle.putString("gameId", this.gameId);
            bundle.putString("defaultBtnImage", this.defaultBtnImage);
            bundle.putString("ext", JsonMapper.getInstance().toJson(this.ext));
            bundle.putBoolean("autoDownload", getIntent().getBooleanExtra("autoDownload", false));
            bundle.putBoolean("showNewServer", getIntent().getBooleanExtra("showNewServer", false));
            Fragment gameDetailFragment = i11 != 0 ? i11 != 1 ? new GameDetailFragment() : new GameDetailCommentListFragment() : new GameDetailFragment();
            gameDetailFragment.setArguments(bundle);
            this.fragments.add(gameDetailFragment);
            i10++;
            i11 = i12;
        }
        getMDatabind().f42123e.setAdapter(new FragmentStateAdapter() { // from class: com.join.kotlin.discount.GameDetailActivity.initTabAndViewpager.4
            {
                super(GameDetailActivity.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int position) {
                Object obj3 = GameDetailActivity.this.fragments.get(position);
                Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                return (Fragment) obj3;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return GameDetailActivity.this.fragments.size();
            }
        });
        getMDatabind().f42123e.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.kotlin.discount.GameDetailActivity.initTabAndViewpager.5
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                GameDetailActivity.this.getMDatabind().f42122d.setScrollPosition(position, positionOffset, true, false);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                TabLayout.g gVarD = GameDetailActivity.this.getMDatabind().f42122d.D(position);
                if (gVarD != null) {
                    gVarD.r();
                }
            }
        });
        getMDatabind().f42123e.setCurrentItem(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailViewModel) getMViewModel());
        getMDatabind().t(this);
        transparentStatuBar();
        this.gameId = getIntent().getStringExtra("gameId");
        this.defaultBtnImage = getIntent().getStringExtra("defaultBtnImage");
        this.ext = (ExtBean) JsonMapper.getInstance().fromJson(getIntent().getStringExtra("ext"), ExtBean.class);
        if (this.gameId == null) {
            finish();
        } else {
            initTabAndViewpager();
        }
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailClickProxy
    public void onBackClick() {
        finish();
    }

    public final void selectTab(int position) {
        getMDatabind().f42123e.setCurrentItem(position);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008a  */
    public final void setTabData(@Nullable String comment, @Nullable String trade) {
        getMDatabind().f42122d.setVisibility(0);
        int tabCount = getMDatabind().f42122d.getTabCount();
        int i10 = 1;
        while (i10 < tabCount) {
            TabLayout.g gVarD = getMDatabind().f42122d.D(i10);
            if (gVarD != null) {
                if (gVarD.o() || gVarD.g() == null) {
                    return;
                }
                View viewG = gVarD.g();
                TextView textView = viewG != null ? (TextView) viewG.findViewById(R.id.tv_num) : null;
                if (textView != null) {
                    textView.setText(i10 == 1 ? String.valueOf(comment) : String.valueOf(trade));
                }
                if (textView != null) {
                    int i11 = 8;
                    if (i10 == 1) {
                        if (!(comment == null || comment.length() == 0) && !Intrinsics.areEqual(comment, "0")) {
                            i11 = 0;
                        }
                    } else {
                        if (!(trade == null || trade.length() == 0) && !Intrinsics.areEqual(trade, "0")) {
                            i11 = 0;
                        }
                    }
                    textView.setVisibility(i11);
                }
            }
            i10++;
        }
    }

    public final void setTabIsDarkColor(boolean isDark) {
        this.detailTabDarkColor = isDark;
        refreshTab();
    }
}
