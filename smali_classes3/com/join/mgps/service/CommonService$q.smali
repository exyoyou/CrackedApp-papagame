.class Lcom/join/mgps/service/CommonService$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->U(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic j:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;IILcom/join/mgps/dto/QueryDownloadInfoResponseData;ZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V
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
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$from",
            "val$fromType",
            "val$data",
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
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$q;->j:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/service/CommonService$q;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/service/CommonService$q;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService$q;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/join/mgps/service/CommonService$q;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/service/CommonService$q;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/join/mgps/service/CommonService$q;->g:Z

    .line 14
    .line 15
    iput-boolean p8, p0, Lcom/join/mgps/service/CommonService$q;->h:Z

    .line 16
    .line 17
    iput-object p9, p0, Lcom/join/mgps/service/CommonService$q;->i:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->j:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 v0, 0x258

    .line 22
    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v1, p1

    .line 49
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget p1, p0, Lcom/join/mgps/service/CommonService$q;->b:I

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lcom/join/mgps/service/CommonService$q;->c:I

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    invoke-virtual {v1, p1, p2}, Lcom/join/mgps/dto/CollectionBeanSub;->setResourceSize(J)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    invoke-virtual {v1, p1, p2}, Lcom/join/mgps/dto/CollectionBeanSub;->setActual_size(J)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setDown_url_remote(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->d:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setResourceUrl(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$q;->j:Lcom/join/mgps/service/CommonService;

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService$q;->e:Z

    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/service/CommonService$q;->f:Ljava/lang/String;

    .line 107
    .line 108
    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService$q;->g:Z

    .line 109
    .line 110
    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService$q;->h:Z

    .line 111
    .line 112
    iget-object v7, p0, Lcom/join/mgps/service/CommonService$q;->i:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 113
    .line 114
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/service/CommonService;->K1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$q;->j:Lcom/join/mgps/service/CommonService;

    .line 123
    .line 124
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    return-void
.end method
