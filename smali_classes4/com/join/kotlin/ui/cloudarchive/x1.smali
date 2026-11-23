.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

.field public final synthetic c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/x1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/x1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/x1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/x1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;->f(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Landroid/view/View;)V

    return-void
.end method
