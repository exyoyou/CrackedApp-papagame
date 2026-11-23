.class Lcom/join/mgps/service/CommonService_$p;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->U(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:J

.field final synthetic f:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic g:Z

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Z

.field final synthetic k:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic l:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 5
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
            0x1010,
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
            "val$uncheckSelfSupport",
            "val$resourceSize",
            "val$data",
            "val$disableShowSpeedUpPrompt",
            "val$from",
            "val$fromType",
            "val$fromRecomDown",
            "val$downArgs"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/join/mgps/service/CommonService_$p;->l:Lcom/join/mgps/service/CommonService_;

    .line 4
    .line 5
    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/join/mgps/service/CommonService_$p;->b:Ljava/lang/String;

    .line 7
    .line 8
    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/join/mgps/service/CommonService_$p;->c:Ljava/lang/String;

    .line 10
    .line 11
    move v1, p8

    .line 12
    iput-boolean v1, v0, Lcom/join/mgps/service/CommonService_$p;->d:Z

    .line 13
    .line 14
    move-wide v1, p9

    .line 15
    iput-wide v1, v0, Lcom/join/mgps/service/CommonService_$p;->e:J

    .line 16
    .line 17
    move-object/from16 v1, p11

    .line 18
    .line 19
    iput-object v1, v0, Lcom/join/mgps/service/CommonService_$p;->f:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 20
    .line 21
    move/from16 v1, p12

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/join/mgps/service/CommonService_$p;->g:Z

    .line 24
    .line 25
    move/from16 v1, p13

    .line 26
    .line 27
    iput v1, v0, Lcom/join/mgps/service/CommonService_$p;->h:I

    .line 28
    .line 29
    move/from16 v1, p14

    .line 30
    .line 31
    iput v1, v0, Lcom/join/mgps/service/CommonService_$p;->i:I

    .line 32
    .line 33
    move/from16 v1, p15

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/join/mgps/service/CommonService_$p;->j:Z

    .line 36
    .line 37
    move-object/from16 v1, p16

    .line 38
    .line 39
    iput-object v1, v0, Lcom/join/mgps/service/CommonService_$p;->k:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 40
    .line 41
    move-object v1, p2

    .line 42
    move-wide v2, p3

    .line 43
    move-object v4, p5

    .line 44
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$p;->l:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$p;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$p;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService_$p;->d:Z

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/join/mgps/service/CommonService_$p;->e:J

    .line 10
    .line 11
    iget-object v6, p0, Lcom/join/mgps/service/CommonService_$p;->f:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 12
    .line 13
    iget-boolean v7, p0, Lcom/join/mgps/service/CommonService_$p;->g:Z

    .line 14
    .line 15
    iget v8, p0, Lcom/join/mgps/service/CommonService_$p;->h:I

    .line 16
    .line 17
    iget v9, p0, Lcom/join/mgps/service/CommonService_$p;->i:I

    .line 18
    .line 19
    iget-boolean v10, p0, Lcom/join/mgps/service/CommonService_$p;->j:Z

    .line 20
    .line 21
    iget-object v11, p0, Lcom/join/mgps/service/CommonService_$p;->k:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 22
    .line 23
    invoke-static/range {v0 .. v11}, Lcom/join/mgps/service/CommonService_;->i2(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
