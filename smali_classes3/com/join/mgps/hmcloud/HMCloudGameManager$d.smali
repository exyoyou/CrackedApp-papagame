.class Lcom/join/mgps/hmcloud/HMCloudGameManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$d;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->m(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/imagepipeline/datasource/b;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
