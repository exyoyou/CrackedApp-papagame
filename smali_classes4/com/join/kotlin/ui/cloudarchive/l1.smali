.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field public final synthetic c:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/l1;->b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/l1;->c:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/l1;->b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/l1;->c:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->Q(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
