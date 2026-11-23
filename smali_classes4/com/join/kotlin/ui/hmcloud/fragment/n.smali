.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/n;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/n;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->W(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
