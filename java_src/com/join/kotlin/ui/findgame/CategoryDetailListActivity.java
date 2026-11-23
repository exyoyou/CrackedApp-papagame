package com.join.kotlin.ui.findgame;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import com.BaseAppCompatActivity;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.e8;
import com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.fragment.j1;
import com.join.mgps.pref.PrefDef_;
import com.psk.kotlin.util.CommonListMainData;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010aH\u0014J\b\u0010b\u001a\u00020_H\u0002J\u0010\u0010c\u001a\u00020_2\u0006\u0010d\u001a\u00020\u0018H\u0002J\u0006\u0010e\u001a\u00020_J\b\u0010f\u001a\u00020_H\u0002J\u0010\u0010k\u001a\u00020_2\u0006\u0010l\u001a\u00020\u0018H\u0002J\u001e\u0010m\u001a\u00020_2\f\u0010g\u001a\b\u0012\u0004\u0012\u00020h0\u001e2\u0006\u0010n\u001a\u000201H\u0002J\b\u0010o\u001a\u00020_H\u0002J\u0018\u0010p\u001a\u00020_2\u0006\u0010q\u001a\u00020r2\u0006\u0010n\u001a\u000201H\u0002J\b\u0010s\u001a\u00020_H\u0002J\b\u0010t\u001a\u00020_H\u0002J\u0012\u0010u\u001a\u00020_2\b\u0010v\u001a\u0004\u0018\u00010wH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001a\u00106\u001a\u000207X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010<\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u00103\"\u0004\b>\u00105R\u001a\u0010?\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u00103\"\u0004\bA\u00105R\u001a\u0010B\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u00103\"\u0004\bD\u00105R\u001a\u0010E\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u00103\"\u0004\bG\u00105R\u001a\u0010H\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR*\u0010M\u001a\u0012\u0012\u0004\u0012\u00020O0Nj\b\u0012\u0004\u0012\u00020O`PX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001c\u0010U\u001a\u0004\u0018\u00010VX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001a\u0010[\u001a\u00020VX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010X\"\u0004\b]\u0010ZR \u0010g\u001a\b\u0012\u0004\u0012\u00020h0\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010!\"\u0004\bj\u0010#¨\u0006x"}, d2 = {"Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;", "Lcom/BaseAppCompatActivity;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;)V", "requestArgs", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "getRequestArgs", "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "setRequestArgs", "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "gameTypeList", "", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "getGameTypeList", "()Ljava/util/List;", "setGameTypeList", "(Ljava/util/List;)V", "leftTypeAdapter", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "getLeftTypeAdapter", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "setLeftTypeAdapter", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V", "findTypeAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "getFindTypeAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "setFindTypeAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V", "featureType", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "getFeatureType", "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "setFeatureType", "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V", "gameSortType", "Lcom/join/kotlin/ui/findgame/data/TagData;", "getGameSortType", "()Lcom/join/kotlin/ui/findgame/data/TagData;", "setGameSortType", "(Lcom/join/kotlin/ui/findgame/data/TagData;)V", "gameType", "getGameType", "setGameType", j1.f69849n, "getModelType", "setModelType", "playType", "getPlayType", "setPlayType", "themeType", "getThemeType", "setThemeType", "tabType", "getTabType", "()Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "setTabType", "(Lcom/join/kotlin/ui/findgame/data/GameTypeData;)V", "fragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "pageExtBean", "getPageExtBean", "setPageExtBean", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initView", "notifyTabSelected", "position", "reLoadDatas", "showFilterLayout", "datas", "Lcom/psk/kotlin/util/CommonListMainData;", "getDatas", "setDatas", "showTypeList", "id", "onfindTypeSelected", "type", "updateSelectedTagList", "updateSelectedTagitem", "textview", "Landroid/widget/TextView;", "updateTitle", "updateRequestArgs", "onClick", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCategoryDetailListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,504:1\n774#2:505\n865#2,2:506\n774#2:508\n865#2,2:509\n1869#2:511\n774#2:512\n865#2,2:513\n1870#2:515\n1563#2:517\n1634#2,3:518\n774#2:521\n865#2,2:522\n1374#2:524\n1460#2,5:525\n1869#2,2:530\n774#2:532\n865#2,2:533\n1374#2:535\n1460#2,5:536\n1869#2,2:541\n774#2:543\n865#2,2:544\n1374#2:546\n1460#2,5:547\n1869#2,2:552\n1563#2:554\n1634#2,2:555\n774#2:557\n865#2,2:558\n1636#2:560\n1374#2:561\n1460#2,2:562\n1563#2:564\n1634#2,3:565\n1462#2,3:568\n1869#2,2:571\n1869#2,2:573\n1#3:516\n*S KotlinDebug\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n*L\n70#1:505\n70#1:506,2\n74#1:508\n74#1:509,2\n77#1:511\n78#1:512\n78#1:513,2\n77#1:515\n176#1:517\n176#1:518,3\n298#1:521\n298#1:522,2\n298#1:524\n298#1:525,5\n299#1:530,2\n313#1:532\n313#1:533,2\n313#1:535\n313#1:536,5\n314#1:541,2\n328#1:543\n328#1:544,2\n328#1:546\n328#1:547,5\n329#1:552,2\n402#1:554\n402#1:555,2\n403#1:557\n403#1:558,2\n402#1:560\n404#1:561\n404#1:562,2\n405#1:564\n405#1:565,3\n404#1:568,3\n410#1:571,2\n493#1:573,2\n*E\n"})
public final class CategoryDetailListActivity extends BaseAppCompatActivity implements View.OnClickListener {
    public e8 binding;
    public Context context;
    public FindTypeListAdapter findTypeAdapter;
    public List<GameTypeData> gameTypeList;
    public FindGameClassfyFragment.TabRecycleAdapter leftTypeAdapter;

    @Nullable
    private ExtBean parentExtBean;

    @NotNull
    private CategoryRequest requestArgs = new CategoryRequest();
    private int page = 1;

    @NotNull
    private GameSubTypeData featureType = new GameSubTypeData();

    @NotNull
    private TagData gameSortType = new TagData(1, 1, "综合");

    @NotNull
    private GameSubTypeData gameType = new GameSubTypeData();

    @NotNull
    private GameSubTypeData modelType = new GameSubTypeData();

    @NotNull
    private GameSubTypeData playType = new GameSubTypeData();

    @NotNull
    private GameSubTypeData themeType = new GameSubTypeData();

    @NotNull
    private GameTypeData tabType = new GameTypeData();

    @NotNull
    private ArrayList<Fragment> fragments = new ArrayList<>();

    @NotNull
    private ExtBean pageExtBean = new ExtBean();

    @NotNull
    private List<CommonListMainData> datas = new ArrayList();

    /* JADX WARN: Code duplicated, block: B:103:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:105:0x0200  */
    /* JADX WARN: Code duplicated, block: B:106:0x0202  */
    /* JADX WARN: Code duplicated, block: B:112:0x020b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0263  */
    /* JADX WARN: Code duplicated, block: B:132:0x0276  */
    /* JADX WARN: Code duplicated, block: B:133:0x0278  */
    /* JADX WARN: Code duplicated, block: B:139:0x0281  */
    /* JADX WARN: Code duplicated, block: B:142:0x0292  */
    /* JADX WARN: Code duplicated, block: B:145:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:147:0x02be  */
    /* JADX WARN: Code duplicated, block: B:148:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:159:0x02db  */
    /* JADX WARN: Code duplicated, block: B:161:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:162:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:168:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:181:0x032f  */
    /* JADX WARN: Code duplicated, block: B:185:0x03e1 A[LOOP:13: B:183:0x03db->B:185:0x03e1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:188:0x0405  */
    /* JADX WARN: Code duplicated, block: B:191:0x0411  */
    /* JADX WARN: Code duplicated, block: B:192:0x0418  */
    /* JADX WARN: Code duplicated, block: B:195:0x041d  */
    /* JADX WARN: Code duplicated, block: B:203:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0089  */
    /* JADX WARN: Code duplicated, block: B:233:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x027c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x009c  */
    /* JADX WARN: Code duplicated, block: B:254:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x009e  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:49:0x0100  */
    /* JADX WARN: Code duplicated, block: B:51:0x0113  */
    /* JADX WARN: Code duplicated, block: B:52:0x0115  */
    /* JADX WARN: Code duplicated, block: B:58:0x011e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0177  */
    /* JADX WARN: Code duplicated, block: B:78:0x018a  */
    /* JADX WARN: Code duplicated, block: B:79:0x018c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0195  */
    /*  JADX ERROR: JadxRuntimeException in pass: SwitchBreakVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v51 java.lang.Object, still in use, count: 2, list:
          (r2v51 java.lang.Object) from 0x024d: PHI (r2 I:??) = (r2v29 java.lang.Object), (r2v51 java.lang.Object) binds: [B:122:0x024c, B:239:0x024d] A[DONT_GENERATE, DONT_INLINE]
          (r2v51 java.lang.Object) from 0x023e: CHECK_CAST (com.join.kotlin.ui.findgame.data.GameTypeData) (r2v51 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.processIfRequested(IfRegionVisitor.java:36)
        	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:47)
        */
    private final void initView() {
        /*
            Method dump skipped, instruction units count: 1252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.findgame.CategoryDetailListActivity.initView():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$24(CategoryDetailListActivity categoryDetailListActivity) {
        categoryDetailListActivity.finish();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$25(CategoryDetailListActivity categoryDetailListActivity) {
        categoryDetailListActivity.showFilterLayout();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$27(CategoryDetailListActivity categoryDetailListActivity) {
        if (categoryDetailListActivity.isFinishing() || categoryDetailListActivity.isDestroyed()) {
            return;
        }
        categoryDetailListActivity.notifyTabSelected(categoryDetailListActivity.getBinding().f37839r.getCurrentItem());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void notifyTabSelected(int position) {
        Iterator<Fragment> it2 = this.fragments.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            Fragment next = it2.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            Fragment fragment = next;
            if ((fragment instanceof com.join.mgps.callbacks.q) && fragment.isAdded()) {
                ((com.join.mgps.callbacks.q) fragment).onPageVisible(position);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onfindTypeSelected(List<CommonListMainData> datas, GameSubTypeData type) {
        Iterator<CommonListMainData> it2 = datas.iterator();
        while (it2.hasNext()) {
            Object any = it2.next().getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
            GameSubTypeData gameSubTypeData = (GameSubTypeData) any;
            if (gameSubTypeData.getId() != type.getId()) {
                gameSubTypeData.setSelected(gameSubTypeData.getId() == type.getId());
            } else {
                gameSubTypeData.setSelected(!gameSubTypeData.isSelected());
            }
        }
        getFindTypeAdapter().notifyDataSetChanged();
        switch (this.tabType.getId()) {
            case 1:
            case 2:
                if (!type.isSelected()) {
                    type = new GameSubTypeData();
                }
                this.modelType = type;
                break;
            case 3:
                if (!type.isSelected()) {
                    type = new GameSubTypeData();
                }
                this.gameType = type;
                break;
            case 4:
                if (!type.isSelected()) {
                    type = new GameSubTypeData();
                }
                this.themeType = type;
                break;
            case 5:
                if (!type.isSelected()) {
                    type = new GameSubTypeData();
                }
                this.playType = type;
                break;
            case 6:
                if (!type.isSelected()) {
                    type = new GameSubTypeData();
                }
                this.featureType = type;
                break;
        }
        updateSelectedTagList();
    }

    private final void showFilterLayout() {
        if (getBinding().f37837p.getVisibility() == 0) {
            getBinding().f37837p.setVisibility(8);
            return;
        }
        getBinding().f37837p.setVisibility(0);
        getBinding().f37834m.setAdapter(getLeftTypeAdapter());
        showTypeList(this.tabType.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTypeList(int id2) {
        this.datas.clear();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp16);
        switch (id2) {
            case 1:
                getBinding().f37838q.setLayoutManager(new GridLayoutManager(getContext(), 2));
                while (getBinding().f37838q.getItemDecorationCount() > 0) {
                    getBinding().f37838q.removeItemDecorationAt(0);
                }
                getBinding().f37838q.addItemDecoration(new GridSpacingItemDecoration(2, dimensionPixelOffset, false));
                List<GameTypeData> gameTypeList = getGameTypeList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : gameTypeList) {
                    if (((GameTypeData) obj).getType() == id2) {
                        arrayList.add(obj);
                    }
                }
                ArrayList<GameSubTypeData> arrayList2 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    List<GameSubTypeData> sub_game_type = ((GameTypeData) it2.next()).getSub_game_type();
                    Intrinsics.checkNotNull(sub_game_type);
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList2, sub_game_type);
                }
                for (GameSubTypeData gameSubTypeData : arrayList2) {
                    List<CommonListMainData> list = this.datas;
                    Intrinsics.checkNotNull(gameSubTypeData);
                    list.add(new CommonListMainData(3, gameSubTypeData, null, null, 12, null));
                }
                break;
            case 2:
            case 3:
                getBinding().f37838q.setLayoutManager(new GridLayoutManager(getContext(), 1));
                while (getBinding().f37838q.getItemDecorationCount() > 0) {
                    getBinding().f37838q.removeItemDecorationAt(0);
                }
                getBinding().f37838q.addItemDecoration(new GridSpacingItemDecoration(1, dimensionPixelOffset, false));
                List<GameTypeData> gameTypeList2 = getGameTypeList();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : gameTypeList2) {
                    if (((GameTypeData) obj2).getType() == id2) {
                        arrayList3.add(obj2);
                    }
                }
                ArrayList<GameSubTypeData> arrayList4 = new ArrayList();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    List<GameSubTypeData> sub_game_type2 = ((GameTypeData) it3.next()).getSub_game_type();
                    Intrinsics.checkNotNull(sub_game_type2);
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList4, sub_game_type2);
                }
                for (GameSubTypeData gameSubTypeData2 : arrayList4) {
                    List<CommonListMainData> list2 = this.datas;
                    Intrinsics.checkNotNull(gameSubTypeData2);
                    list2.add(new CommonListMainData(3, gameSubTypeData2, null, null, 12, null));
                }
                break;
            case 4:
            case 5:
            case 6:
                getBinding().f37838q.setLayoutManager(new GridLayoutManager(getContext(), 3));
                while (getBinding().f37838q.getItemDecorationCount() > 0) {
                    getBinding().f37838q.removeItemDecorationAt(0);
                }
                getBinding().f37838q.addItemDecoration(new GridSpacingItemDecoration(3, dimensionPixelOffset, false));
                List<GameTypeData> gameTypeList3 = getGameTypeList();
                ArrayList arrayList5 = new ArrayList();
                for (Object obj3 : gameTypeList3) {
                    if (((GameTypeData) obj3).getType() == id2) {
                        arrayList5.add(obj3);
                    }
                }
                ArrayList<GameSubTypeData> arrayList6 = new ArrayList();
                Iterator it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    List<GameSubTypeData> sub_game_type3 = ((GameTypeData) it4.next()).getSub_game_type();
                    Intrinsics.checkNotNull(sub_game_type3);
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList6, sub_game_type3);
                }
                for (GameSubTypeData gameSubTypeData3 : arrayList6) {
                    List<CommonListMainData> list3 = this.datas;
                    Intrinsics.checkNotNull(gameSubTypeData3);
                    list3.add(new CommonListMainData(7, gameSubTypeData3, null, null, 12, null));
                }
                break;
        }
        getFindTypeAdapter().updateDatas(id2);
    }

    private final void updateRequestArgs() {
        this.page = 1;
        this.requestArgs.setPage(1);
        this.requestArgs.resetData();
        this.requestArgs.setUid(AccountUtil_.getInstance_(getContext()).getAccountData().getUid());
        this.requestArgs.setModelType(this.modelType.getId());
        this.requestArgs.setGameType(this.gameType.getId());
        this.requestArgs.setThemeType(this.themeType.getId());
        this.requestArgs.setPlayType(this.playType.getId());
        this.requestArgs.setFeatureType(this.featureType.getId());
        this.requestArgs.setGameSortType(this.gameSortType.getId());
    }

    private final void updateSelectedTagList() {
        TextView modelTypeText = getBinding().f37829h;
        Intrinsics.checkNotNullExpressionValue(modelTypeText, "modelTypeText");
        updateSelectedTagitem(modelTypeText, this.modelType);
        TextView gameTypeText = getBinding().f37827f;
        Intrinsics.checkNotNullExpressionValue(gameTypeText, "gameTypeText");
        updateSelectedTagitem(gameTypeText, this.gameType);
        TextView themeTypeText = getBinding().f37835n;
        Intrinsics.checkNotNullExpressionValue(themeTypeText, "themeTypeText");
        updateSelectedTagitem(themeTypeText, this.themeType);
        TextView playTypeText = getBinding().f37832k;
        Intrinsics.checkNotNullExpressionValue(playTypeText, "playTypeText");
        updateSelectedTagitem(playTypeText, this.playType);
        TextView featureTypeText = getBinding().f37825d;
        Intrinsics.checkNotNullExpressionValue(featureTypeText, "featureTypeText");
        updateSelectedTagitem(featureTypeText, this.featureType);
    }

    private final void updateSelectedTagitem(TextView textview, GameSubTypeData type) {
        textview.setText(type.getTitle());
        if (type.isSelected()) {
            textview.setVisibility(0);
        } else {
            textview.setVisibility(8);
        }
    }

    private final void updateTitle() {
        StringBuffer stringBuffer = new StringBuffer();
        List<GameTypeData> gameTypeList = getGameTypeList();
        ArrayList<List> arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(gameTypeList, 10));
        Iterator<T> it2 = gameTypeList.iterator();
        while (it2.hasNext()) {
            List<GameSubTypeData> sub_game_type = ((GameTypeData) it2.next()).getSub_game_type();
            Intrinsics.checkNotNull(sub_game_type);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : sub_game_type) {
                if (((GameSubTypeData) obj).isSelected()) {
                    arrayList2.add(obj);
                }
            }
            arrayList.add(arrayList2);
        }
        ArrayList<String> arrayList3 = new ArrayList();
        for (List list : arrayList) {
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList4.add(((GameSubTypeData) it3.next()).getTitle());
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList3, arrayList4);
        }
        if (arrayList3.isEmpty()) {
            getBinding().f37836o.f40466e.setText("全部游戏");
            return;
        }
        for (String str : arrayList3) {
            if (stringBuffer.length() < 16) {
                stringBuffer.append(str);
                stringBuffer.append("·");
            }
        }
        getBinding().f37836o.f40466e.setText(stringBuffer.substring(0, stringBuffer.length() - 1).toString());
    }

    @NotNull
    public final e8 getBinding() {
        e8 e8Var = this.binding;
        if (e8Var != null) {
            return e8Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final Context getContext() {
        Context context = this.context;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("context");
        return null;
    }

    @NotNull
    public final List<CommonListMainData> getDatas() {
        return this.datas;
    }

    @NotNull
    public final GameSubTypeData getFeatureType() {
        return this.featureType;
    }

    @NotNull
    public final FindTypeListAdapter getFindTypeAdapter() {
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter != null) {
            return findTypeListAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        return null;
    }

    @NotNull
    public final ArrayList<Fragment> getFragments() {
        return this.fragments;
    }

    @NotNull
    public final TagData getGameSortType() {
        return this.gameSortType;
    }

    @NotNull
    public final GameSubTypeData getGameType() {
        return this.gameType;
    }

    @NotNull
    public final List<GameTypeData> getGameTypeList() {
        List<GameTypeData> list = this.gameTypeList;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        return null;
    }

    @NotNull
    public final FindGameClassfyFragment.TabRecycleAdapter getLeftTypeAdapter() {
        FindGameClassfyFragment.TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter != null) {
            return tabRecycleAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        return null;
    }

    @NotNull
    public final GameSubTypeData getModelType() {
        return this.modelType;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final ExtBean getPageExtBean() {
        return this.pageExtBean;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @NotNull
    public final GameSubTypeData getPlayType() {
        return this.playType;
    }

    @NotNull
    public final CategoryRequest getRequestArgs() {
        return this.requestArgs;
    }

    @NotNull
    public final GameTypeData getTabType() {
        return this.tabType;
    }

    @NotNull
    public final GameSubTypeData getThemeType() {
        return this.themeType;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Intrinsics.checkNotNull(v10);
        switch (v10.getId()) {
            case R.id.featureTypeText /* 2131363332 */:
                this.featureType.setSelected(false);
                this.featureType = new GameSubTypeData();
                getBinding().f37825d.setVisibility(8);
                break;
            case R.id.gameTypeText /* 2131363618 */:
                this.gameType.setSelected(false);
                this.gameType = new GameSubTypeData();
                getBinding().f37827f.setVisibility(8);
                break;
            case R.id.modelTypeText /* 2131366000 */:
                this.modelType.setSelected(false);
                this.modelType = new GameSubTypeData();
                getBinding().f37829h.setVisibility(8);
                break;
            case R.id.okButn /* 2131366281 */:
                updateRequestArgs();
                getBinding().f37837p.setVisibility(8);
                for (Fragment fragment : this.fragments) {
                    Intrinsics.checkNotNull(fragment, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.CategoryDetailItemFragment");
                    ((CategoryDetailItemFragment) fragment).updateDatas(this.featureType, this.gameType, this.modelType, this.playType, this.themeType);
                }
                updateTitle();
                break;
            case R.id.playTypeText /* 2131366495 */:
                this.playType.setSelected(false);
                this.playType = new GameSubTypeData();
                getBinding().f37832k.setVisibility(8);
                break;
            case R.id.resetButn /* 2131366779 */:
                this.modelType.setSelected(false);
                this.modelType = new GameSubTypeData();
                getBinding().f37829h.setVisibility(8);
                this.gameType.setSelected(false);
                this.gameType = new GameSubTypeData();
                getBinding().f37827f.setVisibility(8);
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                getBinding().f37835n.setVisibility(8);
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                getBinding().f37835n.setVisibility(8);
                this.playType.setSelected(false);
                this.playType = new GameSubTypeData();
                getBinding().f37832k.setVisibility(8);
                this.featureType.setSelected(false);
                this.featureType = new GameSubTypeData();
                getBinding().f37825d.setVisibility(8);
                break;
            case R.id.themeTypeText /* 2131367745 */:
                this.themeType.setSelected(false);
                this.themeType = new GameSubTypeData();
                getBinding().f37835n.setVisibility(8);
                break;
        }
        getFindTypeAdapter().notifyDataSetChanged();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setBinding(e8.inflate(LayoutInflater.from(this)));
        setContext(this);
        setContentView(getBinding().getRoot());
        getBinding().f37836o.f40465d.setVisibility(8);
        String strD = new PrefDef_(getContext()).gameTypeList().d();
        if (strD == null || strD.length() == 0) {
            strD = "[{\"id\":1,\"title\":\"模拟器\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"街机\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"安卓\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"网游\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"单机\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"分类\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"动作冒险\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"休闲益智\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"角色扮演\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"射击飞行\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"策略战棋\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"模拟游戏\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"体育游戏\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"竞速游戏\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"格斗竞技\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"经营游戏\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG恋爱\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"生存游戏\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"恐怖游戏\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"塔防游戏\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"音乐节奏\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"放置挂机\"}]},{\"id\":4,\"title\":\"题材\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"二次元\"},{\"id\":249,\"pic\":\"\",\"title\":\"拟人\"},{\"id\":250,\"pic\":\"\",\"title\":\"枪战\"},{\"id\":251,\"pic\":\"\",\"title\":\"山海经\"},{\"id\":252,\"pic\":\"\",\"title\":\"动漫IP\"},{\"id\":253,\"pic\":\"\",\"title\":\"冒险\"},{\"id\":254,\"pic\":\"\",\"title\":\"地牢迷宫\"},{\"id\":255,\"pic\":\"\",\"title\":\"魔幻\"},{\"id\":256,\"pic\":\"\",\"title\":\"科幻\"},{\"id\":257,\"pic\":\"\",\"title\":\"末日\"},{\"id\":258,\"pic\":\"\",\"title\":\"火影忍者\"},{\"id\":259,\"pic\":\"\",\"title\":\"日漫\"},{\"id\":260,\"pic\":\"\",\"title\":\"海战\"},{\"id\":261,\"pic\":\"\",\"title\":\"武侠\"},{\"id\":262,\"pic\":\"\",\"title\":\"童话\"},{\"id\":263,\"pic\":\"\",\"title\":\"史莱姆\"},{\"id\":264,\"pic\":\"\",\"title\":\"美食\"},{\"id\":265,\"pic\":\"\",\"title\":\"忍者\"},{\"id\":266,\"pic\":\"\",\"title\":\"火柴人\"},{\"id\":267,\"pic\":\"\",\"title\":\"枪娘\"},{\"id\":268,\"pic\":\"\",\"title\":\"魔物娘\"},{\"id\":269,\"pic\":\"\",\"title\":\"机甲\"},{\"id\":270,\"pic\":\"\",\"title\":\"恋爱\"},{\"id\":271,\"pic\":\"\",\"title\":\"三国\"},{\"id\":272,\"pic\":\"\",\"title\":\"战争\"},{\"id\":273,\"pic\":\"\",\"title\":\"狩猎\"},{\"id\":274,\"pic\":\"\",\"title\":\"修仙\"},{\"id\":275,\"pic\":\"\",\"title\":\"初音未来\"},{\"id\":276,\"pic\":\"\",\"title\":\"人生\"},{\"id\":277,\"pic\":\"\",\"title\":\"坦克\"},{\"id\":278,\"pic\":\"\",\"title\":\"二战\"},{\"id\":279,\"pic\":\"\",\"title\":\"战舰\"},{\"id\":280,\"pic\":\"\",\"title\":\"神话\"},{\"id\":281,\"pic\":\"\",\"title\":\"僵尸\"},{\"id\":282,\"pic\":\"\",\"title\":\"植物\"},{\"id\":283,\"pic\":\"\",\"title\":\"恐怖\"},{\"id\":284,\"pic\":\"\",\"title\":\"动物\"},{\"id\":285,\"pic\":\"\",\"title\":\"盗墓\"},{\"id\":286,\"pic\":\"\",\"title\":\"舰娘\"},{\"id\":287,\"pic\":\"\",\"title\":\"狼人杀\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"仙侠\"},{\"id\":290,\"pic\":\"\",\"title\":\"西游\"},{\"id\":291,\"pic\":\"\",\"title\":\"农场\"},{\"id\":292,\"pic\":\"\",\"title\":\"电竞\"},{\"id\":293,\"pic\":\"\",\"title\":\"赛车\"},{\"id\":294,\"pic\":\"\",\"title\":\"开罗\"},{\"id\":295,\"pic\":\"\",\"title\":\"足球\"},{\"id\":296,\"pic\":\"\",\"title\":\"篮球\"},{\"id\":297,\"pic\":\"\",\"title\":\"妖怪\"},{\"id\":298,\"pic\":\"\",\"title\":\"太空\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"航海\"},{\"id\":301,\"pic\":\"\",\"title\":\"烹饪\"},{\"id\":302,\"pic\":\"\",\"title\":\"漫威\"},{\"id\":303,\"pic\":\"\",\"title\":\"超级英雄\"},{\"id\":304,\"pic\":\"\",\"title\":\"美漫\"},{\"id\":305,\"pic\":\"\",\"title\":\"暗黑\"},{\"id\":306,\"pic\":\"\",\"title\":\"国创\"},{\"id\":307,\"pic\":\"\",\"title\":\"偶像\"},{\"id\":308,\"pic\":\"\",\"title\":\"手机\"},{\"id\":309,\"pic\":\"\",\"title\":\"克苏鲁\"},{\"id\":310,\"pic\":\"\",\"title\":\"侦探\"},{\"id\":311,\"pic\":\"\",\"title\":\"高达\"},{\"id\":312,\"pic\":\"\",\"title\":\"乐高\"},{\"id\":313,\"pic\":\"\",\"title\":\"数独\"},{\"id\":314,\"pic\":\"\",\"title\":\"钢琴\"},{\"id\":315,\"pic\":\"\",\"title\":\"数学\"},{\"id\":316,\"pic\":\"\",\"title\":\"脱出\"},{\"id\":317,\"pic\":\"\",\"title\":\"大富翁\"},{\"id\":318,\"pic\":\"\",\"title\":\"口袋妖怪\"},{\"id\":319,\"pic\":\"\",\"title\":\"拳皇\"},{\"id\":320,\"pic\":\"\",\"title\":\"奥特曼\"},{\"id\":321,\"pic\":\"\",\"title\":\"死神\"},{\"id\":322,\"pic\":\"\",\"title\":\"侠盗猎车手\"},{\"id\":323,\"pic\":\"\",\"title\":\"死神vs火影\"},{\"id\":324,\"pic\":\"\",\"title\":\"三国战纪\"},{\"id\":325,\"pic\":\"\",\"title\":\"蜘蛛侠\"},{\"id\":326,\"pic\":\"\",\"title\":\"游戏王\"},{\"id\":327,\"pic\":\"\",\"title\":\"刺客信条\"},{\"id\":328,\"pic\":\"\",\"title\":\"坦克大战\"},{\"id\":329,\"pic\":\"\",\"title\":\"“热血”系列游戏\"},{\"id\":330,\"pic\":\"\",\"title\":\"捕鱼\"},{\"id\":331,\"pic\":\"\",\"title\":\"梦幻模拟战\"},{\"id\":332,\"pic\":\"\",\"title\":\"三国无双\"},{\"id\":333,\"pic\":\"\",\"title\":\"植物大战僵尸\"},{\"id\":334,\"pic\":\"\",\"title\":\"龙珠\"},{\"id\":335,\"pic\":\"\",\"title\":\"饥荒\"},{\"id\":336,\"pic\":\"\",\"title\":\"模拟山羊\"},{\"id\":337,\"pic\":\"\",\"title\":\"英雄联盟\"},{\"id\":338,\"pic\":\"\",\"title\":\"仙剑奇侠传\"},{\"id\":339,\"pic\":\"\",\"title\":\"传奇\"},{\"id\":340,\"pic\":\"\",\"title\":\"水浒传\"},{\"id\":341,\"pic\":\"\",\"title\":\"奇迹MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"实况足球\"},{\"id\":343,\"pic\":\"\",\"title\":\"最终幻想\"},{\"id\":344,\"pic\":\"\",\"title\":\"数码宝贝\"},{\"id\":345,\"pic\":\"\",\"title\":\"恐龙\"},{\"id\":346,\"pic\":\"\",\"title\":\"战国\"},{\"id\":347,\"pic\":\"\",\"title\":\"校园\"}]},{\"id\":5,\"title\":\"玩法\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"自走棋\"},{\"id\":387,\"pic\":\"\",\"title\":\"塔防\"},{\"id\":388,\"pic\":\"\",\"title\":\"养成\"},{\"id\":389,\"pic\":\"\",\"title\":\"策略\"},{\"id\":390,\"pic\":\"\",\"title\":\"射击\"},{\"id\":391,\"pic\":\"\",\"title\":\"卡牌\"},{\"id\":392,\"pic\":\"\",\"title\":\"回合制RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"动作\"},{\"id\":394,\"pic\":\"\",\"title\":\"挂机放置\"},{\"id\":395,\"pic\":\"\",\"title\":\"动作RPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"格斗\"},{\"id\":397,\"pic\":\"\",\"title\":\"吃鸡\"},{\"id\":398,\"pic\":\"\",\"title\":\"策略RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"建造\"},{\"id\":401,\"pic\":\"\",\"title\":\"模拟\"},{\"id\":402,\"pic\":\"\",\"title\":\"消除\"},{\"id\":403,\"pic\":\"\",\"title\":\"战棋\"},{\"id\":404,\"pic\":\"\",\"title\":\"竞速\"},{\"id\":405,\"pic\":\"\",\"title\":\"跑酷\"},{\"id\":406,\"pic\":\"\",\"title\":\"经营\"},{\"id\":407,\"pic\":\"\",\"title\":\"即时战略\"},{\"id\":408,\"pic\":\"\",\"title\":\"文字冒险\"},{\"id\":409,\"pic\":\"\",\"title\":\"音乐节奏\"},{\"id\":410,\"pic\":\"\",\"title\":\"棋牌\"},{\"id\":411,\"pic\":\"\",\"title\":\"桌游\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"换装\"},{\"id\":414,\"pic\":\"\",\"title\":\"闯关\"},{\"id\":415,\"pic\":\"\",\"title\":\"互动小说\"},{\"id\":416,\"pic\":\"\",\"title\":\"解谜\"},{\"id\":417,\"pic\":\"\",\"title\":\"点击\"},{\"id\":418,\"pic\":\"\",\"title\":\"益智\"},{\"id\":419,\"pic\":\"\",\"title\":\"弹射\"},{\"id\":420,\"pic\":\"\",\"title\":\"体育\"},{\"id\":421,\"pic\":\"\",\"title\":\"互动电影\"},{\"id\":422,\"pic\":\"\",\"title\":\"随行游戏\"},{\"id\":423,\"pic\":\"\",\"title\":\"视觉小说\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"飞行\"},{\"id\":426,\"pic\":\"\",\"title\":\"驾驶\"},{\"id\":427,\"pic\":\"\",\"title\":\"生存\"}]},{\"id\":6,\"title\":\"特色\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"联机\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"多人\"},{\"id\":431,\"pic\":\"\",\"title\":\"推塔\"},{\"id\":432,\"pic\":\"\",\"title\":\"美女\"},{\"id\":433,\"pic\":\"\",\"title\":\"硬核\"},{\"id\":434,\"pic\":\"\",\"title\":\"收集要素\"},{\"id\":435,\"pic\":\"\",\"title\":\"国产\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"竞技\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"合作\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"剧情\"},{\"id\":444,\"pic\":\"\",\"title\":\"对战\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam移植\"},{\"id\":447,\"pic\":\"\",\"title\":\"独立游戏\"},{\"id\":450,\"pic\":\"\",\"title\":\"休闲\"},{\"id\":451,\"pic\":\"\",\"title\":\"高画质\"},{\"id\":452,\"pic\":\"\",\"title\":\"高难度\"},{\"id\":453,\"pic\":\"\",\"title\":\"横版\"},{\"id\":454,\"pic\":\"\",\"title\":\"和风\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"卡通\"},{\"id\":457,\"pic\":\"\",\"title\":\"组队\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"可爱\"},{\"id\":461,\"pic\":\"\",\"title\":\"局域网联机\"},{\"id\":462,\"pic\":\"\",\"title\":\"像素\"},{\"id\":463,\"pic\":\"\",\"title\":\"弹幕\"},{\"id\":464,\"pic\":\"\",\"title\":\"中国风\"},{\"id\":465,\"pic\":\"\",\"title\":\"高自由度\"},{\"id\":466,\"pic\":\"\",\"title\":\"古风\"},{\"id\":467,\"pic\":\"\",\"title\":\"可捏脸\"},{\"id\":468,\"pic\":\"\",\"title\":\"开放世界\"},{\"id\":469,\"pic\":\"\",\"title\":\"社交\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"经典\"},{\"id\":472,\"pic\":\"\",\"title\":\"多结局\"},{\"id\":473,\"pic\":\"\",\"title\":\"手绘风格\"},{\"id\":474,\"pic\":\"\",\"title\":\"装修\"},{\"id\":475,\"pic\":\"\",\"title\":\"设计\"},{\"id\":476,\"pic\":\"\",\"title\":\"女性向\"},{\"id\":477,\"pic\":\"\",\"title\":\"声控\"},{\"id\":478,\"pic\":\"\",\"title\":\"漂移\"},{\"id\":479,\"pic\":\"\",\"title\":\"水墨风\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"打击感\"},{\"id\":482,\"pic\":\"\",\"title\":\"手速\"},{\"id\":483,\"pic\":\"\",\"title\":\"声优配音\"},{\"id\":484,\"pic\":\"\",\"title\":\"致郁\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"逃生\"},{\"id\":487,\"pic\":\"\",\"title\":\"移植\"},{\"id\":488,\"pic\":\"\",\"title\":\"搞笑\"},{\"id\":489,\"pic\":\"\",\"title\":\"合成\"},{\"id\":490,\"pic\":\"\",\"title\":\"动人音乐\"},{\"id\":491,\"pic\":\"\",\"title\":\"电音\"},{\"id\":492,\"pic\":\"\",\"title\":\"竖版\"},{\"id\":493,\"pic\":\"\",\"title\":\"童年\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q版\"},{\"id\":495,\"pic\":\"\",\"title\":\"有毒\"},{\"id\":496,\"pic\":\"\",\"title\":\"乙女\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"悬疑\"},{\"id\":499,\"pic\":\"\",\"title\":\"治愈\"},{\"id\":500,\"pic\":\"\",\"title\":\"组装\"},{\"id\":501,\"pic\":\"\",\"title\":\"推理\"},{\"id\":502,\"pic\":\"\",\"title\":\"解压\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"汉化\"},{\"id\":505,\"pic\":\"\",\"title\":\"欧美画风\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"魔性\"},{\"id\":508,\"pic\":\"\",\"title\":\"平台跳跃\"},{\"id\":509,\"pic\":\"\",\"title\":\"自制关卡\"},{\"id\":510,\"pic\":\"\",\"title\":\"轻改\"},{\"id\":511,\"pic\":\"\",\"title\":\"简约画风\"},{\"id\":512,\"pic\":\"\",\"title\":\"街机风格\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"户外\"},{\"id\":515,\"pic\":\"\",\"title\":\"日系风格\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"佛系\"},{\"id\":518,\"pic\":\"\",\"title\":\"低模\"},{\"id\":519,\"pic\":\"\",\"title\":\"小清新\"},{\"id\":520,\"pic\":\"\",\"title\":\"俯视视角\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC移植\"},{\"id\":522,\"pic\":\"\",\"title\":\"买断制\"},{\"id\":523,\"pic\":\"\",\"title\":\"进化\"},{\"id\":524,\"pic\":\"\",\"title\":\"剪纸风\"},{\"id\":525,\"pic\":\"\",\"title\":\"剪影风\"},{\"id\":526,\"pic\":\"\",\"title\":\"催泪\"},{\"id\":527,\"pic\":\"\",\"title\":\"下落式\"},{\"id\":528,\"pic\":\"\",\"title\":\"手残\"},{\"id\":529,\"pic\":\"\",\"title\":\"反应力\"}]}]";
        }
        setGameTypeList((List) new ObjectMapper().readValue(strD, JsonMapper.getInstance().createCollectionType(List.class, GameTypeData.class)));
        List<GameTypeData> gameTypeList = getGameTypeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : gameTypeList) {
            if (((GameTypeData) obj).getType() == 0) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            getGameTypeList().remove(arrayList.get(0));
        }
        List<GameTypeData> gameTypeList2 = getGameTypeList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : gameTypeList2) {
            if (((GameTypeData) obj2).getType() == 2) {
                arrayList2.add(obj2);
            }
        }
        if (!arrayList2.isEmpty()) {
            getGameTypeList().remove(arrayList2.get(0));
            List<GameSubTypeData> sub_game_type = ((GameTypeData) arrayList2.get(0)).getSub_game_type();
            Intrinsics.checkNotNull(sub_game_type);
            for (GameSubTypeData gameSubTypeData : CollectionsKt___CollectionsKt.reversed(sub_game_type)) {
                List<GameTypeData> gameTypeList3 = getGameTypeList();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : gameTypeList3) {
                    if (((GameTypeData) obj3).getType() == 1) {
                        arrayList3.add(obj3);
                    }
                }
                List<GameSubTypeData> sub_game_type2 = ((GameTypeData) CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3).get(0)).getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type2);
                sub_game_type2.add(0, gameSubTypeData);
            }
        }
        setContext(this);
        initView();
    }

    public final void reLoadDatas() {
        onClick(getBinding().f37833l);
        onClick(getBinding().f37831j);
    }

    public final void setBinding(@NotNull e8 e8Var) {
        Intrinsics.checkNotNullParameter(e8Var, "<set-?>");
        this.binding = e8Var;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setDatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.datas = list;
    }

    public final void setFeatureType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.featureType = gameSubTypeData;
    }

    public final void setFindTypeAdapter(@NotNull FindTypeListAdapter findTypeListAdapter) {
        Intrinsics.checkNotNullParameter(findTypeListAdapter, "<set-?>");
        this.findTypeAdapter = findTypeListAdapter;
    }

    public final void setFragments(@NotNull ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.fragments = arrayList;
    }

    public final void setGameSortType(@NotNull TagData tagData) {
        Intrinsics.checkNotNullParameter(tagData, "<set-?>");
        this.gameSortType = tagData;
    }

    public final void setGameType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.gameType = gameSubTypeData;
    }

    public final void setGameTypeList(@NotNull List<GameTypeData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gameTypeList = list;
    }

    public final void setLeftTypeAdapter(@NotNull FindGameClassfyFragment.TabRecycleAdapter tabRecycleAdapter) {
        Intrinsics.checkNotNullParameter(tabRecycleAdapter, "<set-?>");
        this.leftTypeAdapter = tabRecycleAdapter;
    }

    public final void setModelType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.modelType = gameSubTypeData;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setPageExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.pageExtBean = extBean;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setPlayType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.playType = gameSubTypeData;
    }

    public final void setRequestArgs(@NotNull CategoryRequest categoryRequest) {
        Intrinsics.checkNotNullParameter(categoryRequest, "<set-?>");
        this.requestArgs = categoryRequest;
    }

    public final void setTabType(@NotNull GameTypeData gameTypeData) {
        Intrinsics.checkNotNullParameter(gameTypeData, "<set-?>");
        this.tabType = gameTypeData;
    }

    public final void setThemeType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.themeType = gameSubTypeData;
    }
}
