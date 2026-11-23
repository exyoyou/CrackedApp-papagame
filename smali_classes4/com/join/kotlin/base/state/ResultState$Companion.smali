.class public final Lcom/join/kotlin/base/state/ResultState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/base/state/ResultState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u0001H\u0006\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u001c\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\r\u001a\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/join/kotlin/base/state/ResultState$Companion;",
        "",
        "<init>",
        "()V",
        "onRequestSuccess",
        "Lcom/join/kotlin/base/state/ResultState;",
        "T",
        "data",
        "(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState;",
        "onRequestLoading",
        "loadingMessage",
        "",
        "onRequestError",
        "error",
        "Lcom/join/kotlin/base/net/AppException;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/state/ResultState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestError(Lcom/join/kotlin/base/net/AppException;)Lcom/join/kotlin/base/state/ResultState;
    .locals 1
    .param p1    # Lcom/join/kotlin/base/net/AppException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/join/kotlin/base/net/AppException;",
            ")",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Error;-><init>(Lcom/join/kotlin/base/net/AppException;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final onRequestLoading(Ljava/lang/String;)Lcom/join/kotlin/base/state/ResultState;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "loadingMessage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Loading;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Loading;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final onRequestSuccess(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/join/kotlin/base/state/ResultState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Success;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
