package com.join.kotlin.base.ext.utils;

import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/join/kotlin/base/ext/utils/LEVEL;", "", "<init>", "(Ljava/lang/String;I)V", "V", SDKManager.ALGO_D_RFU, "I", "W", SDKManager.ALGO_E_SM4_SM3_SM2, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
enum LEVEL {
    V,
    D,
    I,
    W,
    E;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    @NotNull
    public static EnumEntries<LEVEL> getEntries() {
        return $ENTRIES;
    }
}
