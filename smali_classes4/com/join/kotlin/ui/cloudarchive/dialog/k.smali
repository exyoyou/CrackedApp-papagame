.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/k;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/k;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->N(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V

    return-void
.end method
