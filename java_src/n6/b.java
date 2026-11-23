package n6;

import com.join.android.app.common.utils.JsonMapper;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
    public static final /* synthetic */ <T> T a(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        JsonMapper jsonMapper = JsonMapper.getInstance();
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) jsonMapper.fromJson(str, Object.class);
    }

    @NotNull
    public static final String b(@Nullable Object obj) {
        String json = JsonMapper.getInstance().toJson(obj);
        return json == null ? "" : json;
    }
}
