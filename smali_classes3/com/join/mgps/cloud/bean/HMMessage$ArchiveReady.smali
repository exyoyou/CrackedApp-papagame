.class public final Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;
.super Lcom/join/mgps/cloud/bean/HMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/bean/HMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArchiveReady"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;",
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "<init>",
        "()V",
        "status",
        "",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "equals",
        "",
        "other",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->status:I

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "archiveReady"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0xd2a3728

    return v0
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    sput p1, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ArchiveReady"

    return-object v0
.end method
