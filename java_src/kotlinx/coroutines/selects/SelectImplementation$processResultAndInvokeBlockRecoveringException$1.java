package kotlinx.coroutines.selects;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_EXIT}, m = "processResultAndInvokeBlockRecoveringException", n = {}, s = {})
final class SelectImplementation$processResultAndInvokeBlockRecoveringException$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    /* synthetic */ Object f93742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ SelectImplementation<R> f93743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f93744d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectImplementation$processResultAndInvokeBlockRecoveringException$1(SelectImplementation<R> selectImplementation, Continuation<? super SelectImplementation$processResultAndInvokeBlockRecoveringException$1> continuation) {
        super(continuation);
        this.f93743c = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f93742b = obj;
        this.f93744d |= Integer.MIN_VALUE;
        return this.f93743c.G(null, null, this);
    }
}
