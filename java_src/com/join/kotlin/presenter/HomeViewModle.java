package com.join.kotlin.presenter;

import android.content.Context;
import androidx.lifecycle.ViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/presenter/HomeViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "lists", "", "", "getLists", "()Ljava/util/List;", "setLists", "(Ljava/util/List;)V", "initStat", "", "context", "Landroid/content/Context;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HomeViewModle extends ViewModel {

    @NotNull
    private List<String> lists = new ArrayList();

    @NotNull
    public final List<String> getLists() {
        return this.lists;
    }

    public final void initStat(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setLists(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.lists = list;
    }
}
