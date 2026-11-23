package com.join.kotlin.base.ext.utils;

import com.join.android.app.common.http.c;
import com.join.mgps.activity.TagGameListActivity_;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0002\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\u0014\u0010\u0005\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\u0014\u0010\u0007\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\u0014\u0010\b\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a \u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"TAG", "", "logv", "", TagGameListActivity_.TAG_EXTRA, "logd", "logi", "logw", "loge", "log", "level", "Lcom/join/kotlin/base/ext/utils/LEVEL;", "message", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class LogExtKt {

    @NotNull
    public static final String TAG = "WF-PLATFORM";

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LEVEL.values().length];
            try {
                iArr[LEVEL.V.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LEVEL.D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LEVEL.I.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LEVEL.W.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LEVEL.E.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final void log(LEVEL level, String str, String str2) {
        int i10;
        if (c.f34547c && (i10 = WhenMappings.$EnumSwitchMapping$0[level.ordinal()]) != 1 && i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final void logd(@NotNull String str, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        log(LEVEL.D, tag, str);
    }

    public static /* synthetic */ void logd$default(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = TAG;
        }
        logd(str, str2);
    }

    public static final void loge(@NotNull String str, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        log(LEVEL.E, tag, str);
    }

    public static /* synthetic */ void loge$default(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = TAG;
        }
        loge(str, str2);
    }

    public static final void logi(@NotNull String str, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        log(LEVEL.I, tag, str);
    }

    public static /* synthetic */ void logi$default(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = TAG;
        }
        logi(str, str2);
    }

    public static final void logv(@NotNull String str, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        log(LEVEL.V, tag, str);
    }

    public static /* synthetic */ void logv$default(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = TAG;
        }
        logv(str, str2);
    }

    public static final void logw(@NotNull String str, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        log(LEVEL.W, tag, str);
    }

    public static /* synthetic */ void logw$default(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = TAG;
        }
        logw(str, str2);
    }
}
