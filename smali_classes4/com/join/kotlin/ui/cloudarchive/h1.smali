.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

.field public final synthetic c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/h1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/h1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/h1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/h1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->T(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
