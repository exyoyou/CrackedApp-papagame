package com.join.kotlin.base.impl;

import com.join.mgps.dto.ExtBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/join/kotlin/base/impl/IExposure;", "", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "exposure", "", "getExposure", "()Z", "setExposure", "(Z)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IExposure {
    boolean getExposure();

    @NotNull
    ExtBean getExtBean();

    void setExposure(boolean z10);
}
