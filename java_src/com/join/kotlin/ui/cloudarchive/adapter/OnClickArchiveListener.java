package com.join.kotlin.ui.cloudarchive.adapter;

import android.view.View;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.dto.DomainInfoBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0012\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "", "onClickRun", "", "archive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "uploadCloud", "onClickMore", "view", "Landroid/view/View;", "onPraise", "onClickDislike", "onClickImage", "imagePath", "", "onClickDomain", "domainInfoBean", "Lcom/join/mgps/dto/DomainInfoBean;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface OnClickArchiveListener {
    void onClickDislike(@NotNull ArchiveData archive);

    void onClickDomain(@Nullable DomainInfoBean domainInfoBean);

    void onClickImage(@Nullable String imagePath);

    void onClickMore(@NotNull View view, @NotNull ArchiveData archive);

    void onClickRun(@NotNull ArchiveData archive);

    void onPraise(@NotNull ArchiveData archive);

    void uploadCloud();
}
