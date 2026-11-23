package com.join.kotlin.module.hmcloud.pad;

import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH&J\u001e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H&J\u001e\u0010\u0013\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;", "", "onKeyItem", "", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "onKeyPress", "name", "", "pressed", "", "onTrackball", "x", "", "y", "onDpad", "directions", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "onCombineKey", COSHttpResponseKey.Data.KEYS, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface OnHMOpEventListener {
    void onCombineKey(@NotNull List<String> keys, boolean pressed);

    void onDpad(@NotNull String name, @NotNull List<? extends HMDpadDirection> directions);

    void onKeyItem(@Nullable HMKeyItem item);

    void onKeyPress(@NotNull String name, boolean pressed);

    void onTrackball(@NotNull String name, float x10, float y10);
}
