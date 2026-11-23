.class public final Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;
.super Lcom/join/mgps/cloud/bean/HMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/bean/HMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCloudArchive"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;",
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "<init>",
        "()V",
        "archiveData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getArchiveData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archivePathData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "getArchivePathData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
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
.field private final archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final archivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "downloadCloudArchive"

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
.method public final getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;->archivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 2
    .line 3
    return-object v0
.end method
