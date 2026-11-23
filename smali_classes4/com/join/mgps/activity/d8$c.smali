.class Lcom/join/mgps/activity/d8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d8;->Z(Z)V
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
.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/d8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d8;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isRefreshAllData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/d8$c;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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
    if-eqz p2, :cond_4

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/join/mgps/activity/d8$c;->b:Z

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 28
    .line 29
    iput-object v0, p2, Lcom/join/mgps/activity/d8;->E:Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getRecommendList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v0, v1, :cond_0

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    if-ge v0, v1, :cond_0

    .line 61
    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 67
    .line 68
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 96
    .line 97
    invoke-static {p2}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_1

    .line 102
    .line 103
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 104
    .line 105
    invoke-static {p2}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/join/mgps/activity/d8;->notifyDataSetChanged()V

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_3

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_3

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/d8;->p0(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getRecAd()Lcom/join/mgps/dto/RecommendGameAdInfo;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget-object p2, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 156
    .line 157
    invoke-static {p2, p1}, Lcom/join/mgps/activity/d8;->R(Lcom/join/mgps/activity/d8;Lcom/join/mgps/dto/RecommendGameAdInfo;)Lcom/join/mgps/dto/RecommendGameAdInfo;

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/mgps/activity/d8$c;->c:Lcom/join/mgps/activity/d8;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/activity/d8;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_1
    return-void
.end method
