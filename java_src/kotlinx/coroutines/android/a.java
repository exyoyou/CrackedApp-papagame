package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.z;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class a implements b0 {
    @Override // kotlinx.coroutines.internal.b0
    public int a() {
        return z.f93551j;
    }

    @Override // kotlinx.coroutines.internal.b0
    @NotNull
    public String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.b0
    @NotNull
    public e2 c(@NotNull List<? extends b0> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new HandlerContext(f.e(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
