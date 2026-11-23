.class public final Lcom/join/kotlin/base/state/ResultStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006\u001a/\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\u0007\u001a(\u0010\u0008\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "paresResult",
        "",
        "T",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/state/ResultState;",
        "result",
        "Lcom/join/mgps/dto/ResponseModel;",
        "(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V",
        "paresException",
        "e",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final paresException(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    .line 12
    .line 13
    sget-object v1, Lcom/join/kotlin/base/net/ExceptionHandle;->INSTANCE:Lcom/join/kotlin/base/net/ExceptionHandle;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/join/kotlin/base/net/ExceptionHandle;->handleException(Ljava/lang/Throwable;)Lcom/join/kotlin/base/net/AppException;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestError(Lcom/join/kotlin/base/net/AppException;)Lcom/join/kotlin/base/state/ResultState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final paresResult(Landroidx/lifecycle/MutableLiveData;Lcom/join/mgps/dto/ResponseModel;)V
    .locals 9
    .param p0    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/dto/ResponseModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;>;",
            "Lcom/join/mgps/dto/ResponseModel<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getResponseData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestSuccess(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    new-instance v8, Lcom/join/kotlin/base/net/AppException;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getResponseMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/base/net/AppException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestError(Lcom/join/kotlin/base/net/AppException;)Lcom/join/kotlin/base/state/ResultState;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final paresResult(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestSuccess(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
