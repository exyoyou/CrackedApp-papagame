package dagger.hilt.android.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import dagger.hilt.android.internal.lifecycle.c;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@JvmName(name = "HiltViewModelExtensions")
public final class HiltViewModelExtensions {
    @NotNull
    public static final <VMF> CreationExtras a(@NotNull MutableCreationExtras mutableCreationExtras, @NotNull final Function1<? super VMF, ? extends ViewModel> callback) {
        Intrinsics.checkNotNullParameter(mutableCreationExtras, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CreationExtras.Key<Function1<Object, ViewModel>> CREATION_CALLBACK_KEY = c.f90776d;
        Intrinsics.checkNotNullExpressionValue(CREATION_CALLBACK_KEY, "CREATION_CALLBACK_KEY");
        mutableCreationExtras.set(CREATION_CALLBACK_KEY, new Function1<Object, ViewModel>() { // from class: dagger.hilt.android.lifecycle.HiltViewModelExtensions$addCreationCallback$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ViewModel invoke(Object obj) {
                return callback.invoke((VMF) obj);
            }
        });
        return mutableCreationExtras;
    }

    @NotNull
    public static final <VMF> CreationExtras b(@NotNull CreationExtras creationExtras, @NotNull Function1<? super VMF, ? extends ViewModel> callback) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return a(new MutableCreationExtras(creationExtras), callback);
    }
}
