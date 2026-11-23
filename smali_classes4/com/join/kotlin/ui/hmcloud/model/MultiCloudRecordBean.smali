.class public final Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        "Lcom/join/mgps/base/entity/MultiItemEntity;",
        "viewType",
        "",
        "data",
        "",
        "collapse",
        "",
        "<init>",
        "(ILjava/lang/Object;Z)V",
        "getViewType",
        "()I",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "getCollapse",
        "()Z",
        "setCollapse",
        "(Z)V",
        "getItemType",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
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
.field private collapse:Z

.field private data:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Z)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;ILjava/lang/Object;ZILjava/lang/Object;)Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->copy(ILjava/lang/Object;Z)Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    return v0
.end method

.method public final copy(ILjava/lang/Object;Z)Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;Z)V

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
    instance-of v1, p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    iget v3, p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    iget-boolean p1, p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCollapse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCollapse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiCloudRecordBean(viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->viewType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collapse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->collapse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
