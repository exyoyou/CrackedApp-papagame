package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class g3 extends AbstractCoroutineContextElement {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f93437c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public boolean f93438b;

    public static final class a implements CoroutineContext.Key<g3> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g3() {
        super(f93437c);
    }
}
