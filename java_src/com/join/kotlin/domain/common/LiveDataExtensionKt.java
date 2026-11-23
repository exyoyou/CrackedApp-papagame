package com.join.kotlin.domain.common;

import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0005\u001a/\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\b\"\u0002H\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"setEvent", "", "T", "Lcom/join/kotlin/domain/common/SingleLiveEvent;", HmInputMappingContent.FIELD_VALUE, "(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V", "Lcom/join/kotlin/domain/common/SingleLiveEvents;", HmDataChannelManager.BEHAVIOR_VALUE, "", "(Lcom/join/kotlin/domain/common/SingleLiveEvents;[Ljava/lang/Object;)V", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class LiveDataExtensionKt {
    public static final <T> void setEvent(@NotNull SingleLiveEvent<T> singleLiveEvent, T t10) {
        Intrinsics.checkNotNullParameter(singleLiveEvent, "<this>");
        singleLiveEvent.setValue(t10);
    }

    public static final <T> void setEvent(@NotNull SingleLiveEvents<T> singleLiveEvents, @NotNull T... values) {
        Intrinsics.checkNotNullParameter(singleLiveEvents, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        singleLiveEvents.setValue((List) ArraysKt___ArraysKt.toList(values));
    }
}
