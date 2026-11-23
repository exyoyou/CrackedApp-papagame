package androidx.room;

import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.n1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"queryDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "Landroidx/room/RoomDatabase;", "getQueryDispatcher", "(Landroidx/room/RoomDatabase;)Lkotlinx/coroutines/CoroutineDispatcher;", "transactionDispatcher", "getTransactionDispatcher", "room-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class CoroutinesRoomKt {
    @NotNull
    public static final CoroutineDispatcher getQueryDispatcher(@NotNull RoomDatabase roomDatabase) {
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkExpressionValueIsNotNull(backingFieldMap, "backingFieldMap");
        Object objC = backingFieldMap.get("QueryDispatcher");
        if (objC == null) {
            Executor queryExecutor = roomDatabase.getQueryExecutor();
            Intrinsics.checkExpressionValueIsNotNull(queryExecutor, "queryExecutor");
            objC = n1.c(queryExecutor);
            backingFieldMap.put("QueryDispatcher", objC);
        }
        if (objC != null) {
            return (CoroutineDispatcher) objC;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
    }

    @NotNull
    public static final CoroutineDispatcher getTransactionDispatcher(@NotNull RoomDatabase roomDatabase) {
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkExpressionValueIsNotNull(backingFieldMap, "backingFieldMap");
        Object objC = backingFieldMap.get("TransactionDispatcher");
        if (objC == null) {
            Executor transactionExecutor = roomDatabase.getTransactionExecutor();
            Intrinsics.checkExpressionValueIsNotNull(transactionExecutor, "transactionExecutor");
            objC = n1.c(transactionExecutor);
            backingFieldMap.put("TransactionDispatcher", objC);
        }
        if (objC != null) {
            return (CoroutineDispatcher) objC;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
    }
}
