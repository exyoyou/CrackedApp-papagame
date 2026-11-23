.class Lcom/join/mgps/service/CommonService_$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->G1(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic f:Z

.field final synthetic g:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic h:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameId",
            "val$ext",
            "val$data",
            "val$task",
            "val$isfromRecomed",
            "val$downArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$f;->h:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/service/CommonService_$f;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService_$f;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/service/CommonService_$f;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/join/mgps/service/CommonService_$f;->f:Z

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/service/CommonService_$f;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$f;->h:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$f;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/service/CommonService_$f;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/service/CommonService_$f;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService_$f;->f:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/join/mgps/service/CommonService_$f;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/join/mgps/service/CommonService_;->J2(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
