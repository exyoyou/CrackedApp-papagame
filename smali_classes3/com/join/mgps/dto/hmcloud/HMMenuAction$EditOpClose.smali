.class public final Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;
.super Lcom/join/mgps/dto/hmcloud/HMMenuAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/hmcloud/HMMenuAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditOpClose"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;",
        "Lcom/join/mgps/dto/hmcloud/HMMenuAction;",
        "cfg",
        "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "success",
        "",
        "<init>",
        "(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V",
        "getCfg",
        "()Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "getSuccess",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final success:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/hmcloud/HMMenuAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iput-boolean p2, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILjava/lang/Object;)Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->copy(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    return v0
.end method

.method public final copy(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    iget-object v1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iget-object v3, p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    iget-boolean p1, p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditOpClose(cfg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
