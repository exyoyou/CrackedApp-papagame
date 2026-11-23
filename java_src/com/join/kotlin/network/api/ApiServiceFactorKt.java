package com.join.kotlin.network.api;

import com.join.kotlin.network.NetworkApi;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.mgps.rpc.h;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"gameApiService", "Lcom/join/kotlin/network/api/GameApiService;", "getGameApiService", "()Lcom/join/kotlin/network/api/GameApiService;", "gameApiService$delegate", "Lkotlin/Lazy;", "searchGameApiService", "Lcom/join/kotlin/network/api/SearchGameApiService;", "getSearchGameApiService", "()Lcom/join/kotlin/network/api/SearchGameApiService;", "searchGameApiService$delegate", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ApiServiceFactorKt {

    @NotNull
    private static final Lazy gameApiService$delegate;

    @NotNull
    private static final Lazy searchGameApiService$delegate;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        gameApiService$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: b6.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ApiServiceFactorKt.gameApiService_delegate$lambda$0();
            }
        });
        searchGameApiService$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: b6.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ApiServiceFactorKt.searchGameApiService_delegate$lambda$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameApiService gameApiService_delegate$lambda$0() {
        NetworkApi instance = NetworkApi.INSTANCE.getINSTANCE();
        String gameUrl = h.B;
        Intrinsics.checkNotNullExpressionValue(gameUrl, "gameUrl");
        return (GameApiService) instance.getApi(GameApiService.class, gameUrl);
    }

    @NotNull
    public static final GameApiService getGameApiService() {
        return (GameApiService) gameApiService$delegate.getValue();
    }

    @NotNull
    public static final SearchGameApiService getSearchGameApiService() {
        return (SearchGameApiService) searchGameApiService$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchGameApiService searchGameApiService_delegate$lambda$1() {
        NetworkApi instance = NetworkApi.INSTANCE.getINSTANCE();
        String searchgameUrl = h.C;
        Intrinsics.checkNotNullExpressionValue(searchgameUrl, "searchgameUrl");
        return (SearchGameApiService) instance.getApi(SearchGameApiService.class, searchgameUrl);
    }
}
