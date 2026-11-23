.class public final Lcom/join/mgps/cloud/bean/HMMessage$Start;
.super Lcom/join/mgps/cloud/bean/HMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/bean/HMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Start"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage$Start;",
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "<init>",
        "()V",
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "archiveData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getArchiveData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "setArchiveData",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V",
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
.field private archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$Start;->gameId:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$Start;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$Start;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setArchiveData(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/cloud/bean/HMMessage$Start;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/cloud/bean/HMMessage$Start;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
