package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class BufferedChannel$onReceive$2 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BufferedChannel$onReceive$2 f92403b = new BufferedChannel$onReceive$2();

    BufferedChannel$onReceive$2() {
        super(3, BufferedChannel.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull BufferedChannel<?> bufferedChannel, @Nullable Object obj, @Nullable Object obj2) {
        return bufferedChannel.m1(obj, obj2);
    }
}
