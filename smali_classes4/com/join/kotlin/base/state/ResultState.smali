.class public abstract Lcom/join/kotlin/base/state/ResultState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/base/state/ResultState$Companion;,
        Lcom/join/kotlin/base/state/ResultState$Error;,
        Lcom/join/kotlin/base/state/ResultState$Loading;,
        Lcom/join/kotlin/base/state/ResultState$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u0005*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0004\u0005\u0006\u0007\u0008B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u0082\u0001\u0003\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/kotlin/base/state/ResultState;",
        "T",
        "",
        "<init>",
        "()V",
        "Companion",
        "Loading",
        "Success",
        "Error",
        "Lcom/join/kotlin/base/state/ResultState$Error;",
        "Lcom/join/kotlin/base/state/ResultState$Loading;",
        "Lcom/join/kotlin/base/state/ResultState$Success;",
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


# static fields
.field public static final Companion:Lcom/join/kotlin/base/state/ResultState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/base/state/ResultState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/state/ResultState;-><init>()V

    return-void
.end method
