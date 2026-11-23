.class public final Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;
.super Lcom/join/mgps/cloud/bean/HMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/bean/HMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapScreenResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;",
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "success",
        "",
        "data",
        "",
        "<init>",
        "(ZLjava/lang/String;)V",
        "getSuccess",
        "()Z",
        "getData",
        "()Ljava/lang/String;",
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


# instance fields
.field private final data:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "capScreenResult"

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;->success:Z

    iput-object p2, p0, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;->data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;->success:Z

    .line 2
    .line 3
    return v0
.end method
