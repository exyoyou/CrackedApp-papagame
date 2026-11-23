.class Lcom/join/mgps/service/CommonService_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->K1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic i:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            "val$detialResultBean",
            "val$needCheckpay",
            "val$uncheckSelfSupport",
            "val$ext",
            "val$disableShowSpeedUpPrompt",
            "val$fromRecomDown",
            "val$downArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$d;->i:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$d;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/service/CommonService_$d;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/service/CommonService_$d;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/service/CommonService_$d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/join/mgps/service/CommonService_$d;->f:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/join/mgps/service/CommonService_$d;->g:Z

    .line 14
    .line 15
    iput-object p8, p0, Lcom/join/mgps/service/CommonService_$d;->h:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$d;->i:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$d;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/service/CommonService_$d;->c:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService_$d;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/service/CommonService_$d;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService_$d;->f:Z

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService_$d;->g:Z

    .line 14
    .line 15
    iget-object v7, p0, Lcom/join/mgps/service/CommonService_$d;->h:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/join/mgps/service/CommonService_;->z2(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
