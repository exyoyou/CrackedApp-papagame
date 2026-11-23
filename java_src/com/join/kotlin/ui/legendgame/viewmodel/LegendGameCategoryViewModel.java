package com.join.kotlin.ui.legendgame.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.legendgame.data.LegendGameListMapper;
import com.join.kotlin.ui.legendgame.data.LegendGameTabData;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fR'\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "tabData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "", "Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;", "getTabData", "()Landroidx/lifecycle/MutableLiveData;", "loadTabs", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegendGameCategoryViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<ResultState<List<LegendGameTabData>>> tabData = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<ResultState<List<LegendGameTabData>>> getTabData() {
        return this.tabData;
    }

    public final void loadTabs() {
        this.tabData.setValue(new ResultState.Success(CollectionsKt__CollectionsKt.listOf((Object[]) new LegendGameTabData[]{new LegendGameTabData(0, LegendGameListMapper.SOP_LATEST_SERVER), new LegendGameTabData(1, LegendGameListMapper.SOP_BRAND)})));
    }
}
