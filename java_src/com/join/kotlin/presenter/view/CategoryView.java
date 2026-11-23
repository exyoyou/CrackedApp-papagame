package com.join.kotlin.presenter.view;

import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.psk.kotlin.base.presenter.view.BaseView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/join/kotlin/presenter/view/CategoryView;", "Lcom/psk/kotlin/base/presenter/view/BaseView;", "onLoadDataSuccess", "", "page", "", "result", "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CategoryView extends BaseView {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onLoadDataSuccess(@NotNull CategoryView categoryView, int i10, @NotNull CategoryListMain result) {
            Intrinsics.checkNotNullParameter(result, "result");
        }
    }

    void onLoadDataSuccess(int page, @NotNull CategoryListMain result);
}
