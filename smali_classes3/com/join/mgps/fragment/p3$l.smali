.class Lcom/join/mgps/fragment/p3$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p3;->e0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/fragment/p3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p3;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean",
            "val$downloadTask",
            "val$what"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p3$l;->e:Lcom/join/mgps/fragment/p3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/p3$l;->b:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/p3$l;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/fragment/p3$l;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p3$l;->e:Lcom/join/mgps/fragment/p3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/p3$l;->b:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/p3$l;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/fragment/p3$l;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/fragment/p3;->m0(Lcom/join/mgps/fragment/p3;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
