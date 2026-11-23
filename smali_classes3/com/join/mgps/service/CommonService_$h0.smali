.class Lcom/join/mgps/service/CommonService_$h0;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->E(Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic e:Z

.field final synthetic f:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic g:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$gameId",
            "val$ext",
            "val$downloadTask",
            "val$fromRecomDown",
            "val$downArgs"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$h0;->g:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/service/CommonService_$h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/join/mgps/service/CommonService_$h0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/join/mgps/service/CommonService_$h0;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    iput-boolean p9, p0, Lcom/join/mgps/service/CommonService_$h0;->e:Z

    .line 10
    .line 11
    iput-object p10, p0, Lcom/join/mgps/service/CommonService_$h0;->f:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$h0;->g:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$h0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/service/CommonService_$h0;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/join/mgps/service/CommonService_$h0;->e:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/join/mgps/service/CommonService_$h0;->f:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/service/CommonService_;->C2(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
