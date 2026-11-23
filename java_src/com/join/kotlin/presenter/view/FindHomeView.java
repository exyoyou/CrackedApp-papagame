package com.join.kotlin.presenter.view;

import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.FindClassifyResultData;
import com.psk.kotlin.base.presenter.view.BaseView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/join/kotlin/presenter/view/FindHomeView;", "Lcom/psk/kotlin/base/presenter/view/BaseView;", "onLoadDataSuccess", "", "page", "", "result", "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;", "onLoadDataSuccessV9", "Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FindHomeView extends BaseView {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onLoadDataSuccess(@NotNull FindHomeView findHomeView, int i10, @NotNull FindChoiceResultData result) {
            Intrinsics.checkNotNullParameter(result, "result");
        }

        public static void onLoadDataSuccessV9(@NotNull FindHomeView findHomeView, int i10, @NotNull FindClassifyResultData result) {
            Intrinsics.checkNotNullParameter(result, "result");
        }
    }

    void onLoadDataSuccess(int page, @NotNull FindChoiceResultData result);

    void onLoadDataSuccessV9(int page, @NotNull FindClassifyResultData result);
}
