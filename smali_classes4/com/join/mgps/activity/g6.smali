.class public Lcom/join/mgps/activity/g6;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0687
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/e;

.field private h:Lcom/join/mgps/adapter/d0;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/join/mgps/dto/LoadWarCenterBean;

.field private t:J

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field x:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->e:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/join/mgps/activity/g6;->u:Z

    .line 79
    .line 80
    iput v0, p0, Lcom/join/mgps/activity/g6;->z:I

    .line 81
    .line 82
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/activity/g6;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/g6;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method private Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warMatchAndLocalTable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCdn_down_switch()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCdn_down_switch(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getOther_down_switch()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOther_down_switch(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPay_game_amount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/join/mgps/db/tables/DownloadUrlTable;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/DownloadUrlTable;->getDownUrlBean()Lcom/join/mgps/dto/DownloadUrlBean;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTp_down_url(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTask(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_1
    return-object p1
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    if-eqz v1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/LoadWarCenterBean;->setDownloadTasksMap(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/d0;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_1
    return-void
.end method

.method private updateProgressPartly()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 4
    .line 5
    if-ltz v0, :cond_11

    .line 6
    .line 7
    iget v0, v1, Lcom/join/mgps/activity/g6;->y:I

    .line 8
    .line 9
    iget-object v2, v1, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_11

    .line 16
    .line 17
    iget v0, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 18
    .line 19
    move v2, v0

    .line 20
    :goto_0
    iget v0, v1, Lcom/join/mgps/activity/g6;->y:I

    .line 21
    .line 22
    if-gt v2, v0, :cond_11

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "firstVisiblePosition="

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v4, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map;

    .line 46
    .line 47
    if-eqz v0, :cond_10

    .line 48
    .line 49
    const-string v4, "Left"

    .line 50
    .line 51
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    const-string v5, "Mid"

    .line 58
    .line 59
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    const-string v6, "Right"

    .line 66
    .line 67
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v6, v0

    .line 72
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    const-string v7, "/S"

    .line 75
    .line 76
    const-string v8, "progress="

    .line 77
    .line 78
    const-string v11, ";status="

    .line 79
    .line 80
    const-string v12, ",name="

    .line 81
    .line 82
    const-string v13, "/"

    .line 83
    .line 84
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 85
    .line 86
    const/16 v9, 0xc

    .line 87
    .line 88
    const/4 v10, 0x2

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eq v0, v10, :cond_0

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v9, :cond_4

    .line 102
    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v0, v1, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 135
    .line 136
    iget v10, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 137
    .line 138
    sub-int v10, v2, v10

    .line 139
    .line 140
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    instance-of v10, v10, Lcom/join/mgps/adapter/d0$n;

    .line 149
    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/join/mgps/adapter/d0$n;

    .line 157
    .line 158
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v10, v9}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-nez v9, :cond_1

    .line 171
    .line 172
    return-void

    .line 173
    :cond_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    mul-double v18, v18, v14

    .line 182
    .line 183
    move-object/from16 v20, v11

    .line 184
    .line 185
    mul-double v10, v18, v14

    .line 186
    .line 187
    double-to-long v10, v10

    .line 188
    :try_start_1
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    const-wide/16 v16, 0x0

    .line 193
    .line 194
    cmp-long v21, v18, v16

    .line 195
    .line 196
    if-nez v21, :cond_2

    .line 197
    .line 198
    iget-object v14, v0, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    .line 199
    .line 200
    new-instance v15, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 206
    .line 207
    .line 208
    move-result-wide v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    move-object/from16 v23, v6

    .line 210
    .line 211
    :try_start_2
    invoke-static/range {v21 .. v22}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_2
    move-object/from16 v23, v6

    .line 237
    .line 238
    iget-object v6, v0, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    .line 239
    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 246
    .line 247
    .line 248
    move-result-wide v21

    .line 249
    invoke-static/range {v21 .. v22}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 282
    .line 283
    .line 284
    move-result-wide v10

    .line 285
    long-to-int v11, v10

    .line 286
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    const/16 v10, 0xc

    .line 294
    .line 295
    if-ne v6, v10, :cond_3

    .line 296
    .line 297
    iget-object v6, v0, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    .line 298
    .line 299
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 300
    .line 301
    .line 302
    move-result-wide v10

    .line 303
    long-to-int v11, v10

    .line 304
    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_3
    iget-object v6, v0, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 311
    .line 312
    .line 313
    move-result-wide v10

    .line 314
    long-to-int v11, v10

    .line 315
    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 316
    .line 317
    .line 318
    :goto_2
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    const/4 v6, 0x2

    .line 323
    if-ne v4, v6, :cond_5

    .line 324
    .line 325
    iget-object v0, v0, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    .line 326
    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :catch_0
    move-exception v0

    .line 351
    goto :goto_3

    .line 352
    :catch_1
    move-exception v0

    .line 353
    move-object/from16 v23, v6

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :catch_2
    move-exception v0

    .line 357
    move-object/from16 v23, v6

    .line 358
    .line 359
    move-object/from16 v20, v11

    .line 360
    .line 361
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_4
    move-object/from16 v23, v6

    .line 366
    .line 367
    move-object/from16 v20, v11

    .line 368
    .line 369
    :cond_5
    :goto_4
    if-eqz v5, :cond_a

    .line 370
    .line 371
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    const/4 v4, 0x2

    .line 376
    if-eq v0, v4, :cond_6

    .line 377
    .line 378
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    const/16 v4, 0xc

    .line 383
    .line 384
    if-ne v0, v4, :cond_a

    .line 385
    .line 386
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    move-object/from16 v4, v20

    .line 408
    .line 409
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    iget-object v0, v1, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 420
    .line 421
    iget v6, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 422
    .line 423
    sub-int v6, v2, v6

    .line 424
    .line 425
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    instance-of v6, v6, Lcom/join/mgps/adapter/d0$n;

    .line 434
    .line 435
    if-eqz v6, :cond_b

    .line 436
    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lcom/join/mgps/adapter/d0$n;

    .line 442
    .line 443
    :try_start_3
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    invoke-virtual {v6, v9}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    if-nez v6, :cond_7

    .line 456
    .line 457
    return-void

    .line 458
    :cond_7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 463
    .line 464
    .line 465
    move-result-wide v9

    .line 466
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 467
    .line 468
    mul-double v9, v9, v14

    .line 469
    .line 470
    mul-double v9, v9, v14

    .line 471
    .line 472
    double-to-long v9, v9

    .line 473
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 474
    .line 475
    .line 476
    move-result-wide v14

    .line 477
    const-wide/16 v16, 0x0

    .line 478
    .line 479
    cmp-long v11, v14, v16

    .line 480
    .line 481
    if-nez v11, :cond_8

    .line 482
    .line 483
    iget-object v11, v0, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    .line 484
    .line 485
    new-instance v14, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 491
    .line 492
    .line 493
    move-result-wide v20

    .line 494
    invoke-static/range {v20 .. v21}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    goto :goto_5

    .line 519
    :cond_8
    iget-object v11, v0, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    .line 520
    .line 521
    new-instance v14, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 527
    .line 528
    .line 529
    move-result-wide v20

    .line 530
    invoke-static/range {v20 .. v21}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v15

    .line 534
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 563
    .line 564
    .line 565
    move-result-wide v10

    .line 566
    long-to-int v11, v10

    .line 567
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    const/16 v10, 0xc

    .line 575
    .line 576
    if-ne v9, v10, :cond_9

    .line 577
    .line 578
    iget-object v9, v0, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    .line 579
    .line 580
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 581
    .line 582
    .line 583
    move-result-wide v10

    .line 584
    long-to-int v11, v10

    .line 585
    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 586
    .line 587
    .line 588
    goto :goto_6

    .line 589
    :cond_9
    iget-object v9, v0, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    .line 590
    .line 591
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 592
    .line 593
    .line 594
    move-result-wide v10

    .line 595
    long-to-int v11, v10

    .line 596
    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 597
    .line 598
    .line 599
    :goto_6
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    const/4 v9, 0x2

    .line 604
    if-ne v5, v9, :cond_b

    .line 605
    .line 606
    iget-object v0, v0, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    .line 607
    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 628
    .line 629
    .line 630
    goto :goto_7

    .line 631
    :catch_3
    move-exception v0

    .line 632
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 633
    .line 634
    .line 635
    goto :goto_7

    .line 636
    :cond_a
    move-object/from16 v4, v20

    .line 637
    .line 638
    :cond_b
    :goto_7
    if-eqz v23, :cond_10

    .line 639
    .line 640
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    const/4 v5, 0x2

    .line 645
    if-eq v0, v5, :cond_c

    .line 646
    .line 647
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    const/16 v5, 0xc

    .line 652
    .line 653
    if-ne v0, v5, :cond_10

    .line 654
    .line 655
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    iget-object v0, v1, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 687
    .line 688
    iget v3, v1, Lcom/join/mgps/activity/g6;->z:I

    .line 689
    .line 690
    sub-int v3, v2, v3

    .line 691
    .line 692
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    instance-of v3, v3, Lcom/join/mgps/adapter/d0$n;

    .line 701
    .line 702
    if-eqz v3, :cond_10

    .line 703
    .line 704
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Lcom/join/mgps/adapter/d0$n;

    .line 709
    .line 710
    :try_start_4
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    if-nez v3, :cond_d

    .line 723
    .line 724
    return-void

    .line 725
    :cond_d
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 730
    .line 731
    .line 732
    move-result-wide v4

    .line 733
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 734
    .line 735
    mul-double v4, v4, v9

    .line 736
    .line 737
    mul-double v4, v4, v9

    .line 738
    .line 739
    double-to-long v4, v4

    .line 740
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 741
    .line 742
    .line 743
    move-result-wide v9

    .line 744
    const-wide/16 v11, 0x0

    .line 745
    .line 746
    cmp-long v6, v9, v11

    .line 747
    .line 748
    if-nez v6, :cond_e

    .line 749
    .line 750
    iget-object v6, v0, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    .line 751
    .line 752
    new-instance v9, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 758
    .line 759
    .line 760
    move-result-wide v10

    .line 761
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v10

    .line 765
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    .line 784
    .line 785
    goto :goto_8

    .line 786
    :cond_e
    iget-object v6, v0, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    .line 787
    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 794
    .line 795
    .line 796
    move-result-wide v10

    .line 797
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v10

    .line 801
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    .line 820
    .line 821
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 830
    .line 831
    .line 832
    move-result-wide v5

    .line 833
    long-to-int v6, v5

    .line 834
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    const/16 v5, 0xc

    .line 842
    .line 843
    if-ne v4, v5, :cond_f

    .line 844
    .line 845
    iget-object v4, v0, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    .line 846
    .line 847
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 848
    .line 849
    .line 850
    move-result-wide v5

    .line 851
    long-to-int v6, v5

    .line 852
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 853
    .line 854
    .line 855
    goto :goto_9

    .line 856
    :cond_f
    iget-object v4, v0, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    .line 857
    .line 858
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 859
    .line 860
    .line 861
    move-result-wide v5

    .line 862
    long-to-int v6, v5

    .line 863
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 864
    .line 865
    .line 866
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 867
    .line 868
    .line 869
    move-result v4

    .line 870
    const/4 v5, 0x2

    .line 871
    if-ne v4, v5, :cond_10

    .line 872
    .line 873
    iget-object v0, v0, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    .line 874
    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 895
    .line 896
    .line 897
    goto :goto_a

    .line 898
    :catch_4
    move-exception v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 900
    .line 901
    .line 902
    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 903
    .line 904
    goto/16 :goto_0

    .line 905
    .line 906
    :cond_11
    return-void
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d0687

    return v0
.end method

.method protected Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a0423

    return v0
.end method

.method protected R()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x42400000    # 48.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public a0(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->loadWarIndexRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->g:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->x:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->t2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->z2(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-lez v0, :cond_0

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->i:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/join/mgps/dto/LoadWarCenterBean;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/adapter/d0;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/d0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/d0;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 142
    .line 143
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/activity/g6$a;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/g6$a;-><init>(Lcom/join/mgps/activity/g6;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->loadData()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method b0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/p0;->n()Lt6/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lt6/r;->n()Lt6/r;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_4

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-lez v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ge v0, v1, :cond_3

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWarType()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    packed-switch v2, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_0
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 144
    .line 145
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :pswitch_2
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 154
    .line 155
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 164
    .line 165
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_4
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 174
    .line 175
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_5
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 184
    .line 185
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :pswitch_6
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 194
    .line 195
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->f0()V

    .line 206
    .line 207
    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->c0()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/g6;->u:Z

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/g6;->a0(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/g6;->g:Lcom/join/mgps/rpc/e;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->e(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/WarIndexResultMainBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/WarIndexResultMainBean;->getMessages()Lcom/join/mgps/dto/WarIndexMessageMainBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/WarIndexMessageMainBean;->getData()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/mgps/dto/WarIndexDataBean;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/g6;->g0(Lcom/join/mgps/dto/WarIndexDataBean;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->e0()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->e0()V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/g6;->u:Z

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->e0()V

    .line 73
    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/join/mgps/activity/g6;->u:Z

    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->e0()V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method d0(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fightDataBeanList",
            "warType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_5

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/join/mgps/dto/FightDataBean;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightDataBean;->getMain()Lcom/join/mgps/dto/FightMainDataBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/join/mgps/dto/FightDataBean;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightDataBean;->getSub()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/join/mgps/dto/FightSubDataBean;

    .line 42
    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    new-instance v4, Lcom/join/mgps/db/tables/FightMainTable;

    .line 46
    .line 47
    invoke-direct {v4}, Lcom/join/mgps/db/tables/FightMainTable;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTitle(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getLabel()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLabel(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setPic_remote(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getIco_remote()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setIco_remote(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle_type()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTitle_type(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getMargin()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setMargin(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getSub_title()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setSub_title(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getModel_type()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setModel_type(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getLink_type()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLink_type(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getJump_type()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setJump_type(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getTpl_type()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTpl_type(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getLink_type_val()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLink_type_val(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getDown_status()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setDown_status(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-eqz v5, :cond_0

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-eqz v5, :cond_0

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    goto :goto_1

    .line 181
    :cond_0
    const/4 v5, 0x0

    .line 182
    :goto_1
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setPay_game_amount(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lt6/r;->n()Lt6/r;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v5, v4}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const/4 v5, 0x1

    .line 197
    if-ne v4, v5, :cond_4

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTable(Lcom/join/mgps/dto/FightSubGameInfoDataBean;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4, p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWarType(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPic_remote(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eqz v2, :cond_1

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-eqz v2, :cond_1

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPay_game_amount(I)V

    .line 246
    .line 247
    .line 248
    :cond_1
    invoke-static {}, Lt6/p0;->n()Lt6/p0;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2, v4}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTable(Lcom/join/mgps/dto/FightSubGameInfoDataBean;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v4, p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWarType(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPic_remote(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setMain_title(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getSub_title()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setMain_sub_title(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    if-eqz v2, :cond_3

    .line 293
    .line 294
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    if-eqz v2, :cond_3

    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPay_game_amount(I)V

    .line 317
    .line 318
    .line 319
    :cond_3
    invoke-static {}, Lt6/p0;->n()Lt6/p0;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2, v4}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 324
    .line 325
    .line 326
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_5
    return-void
.end method

.method e0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->d:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f12031e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setDownloadTasksMap(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setFightMainTables(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setWaradInfoDataBeans(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setHotGameInfoDataBeans(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkGameInfoDataBeans(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkPassInfoDataBeans(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkMatchingInfoDataBeans(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkLocalInfoDataBeans(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkRoomInfoDataBeans(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/g6;->s:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/d0;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->h:Lcom/join/mgps/adapter/d0;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->f:Lcom/join/mgps/customview/XListView2;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method g0(Lcom/join/mgps/dto/WarIndexDataBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warIndexDataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/activity/g6;->t:J

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getWarad()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getHotgame()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkgame()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkpass()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkmatching()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPklocal()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkroom()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lt6/p0;->n()Lt6/p0;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lq5/b;->a()I

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lt6/r;->n()Lt6/r;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Lq5/b;->a()I

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0, v0, v6}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p0, v4, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    invoke-virtual {p0, v5, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/g6;->d0(Ljava/util/List;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lt6/p0;->n()Lt6/p0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lq5/b;->d()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 86
    .line 87
    invoke-static {}, Lt6/r;->n()Lt6/r;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lq5/b;->d()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 98
    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-gtz p1, :cond_1

    .line 106
    .line 107
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_4

    .line 116
    .line 117
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-lez p1, :cond_2

    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->k:Ljava/util/List;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->w:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 140
    .line 141
    if-eqz p1, :cond_3

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-lez p1, :cond_3

    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 182
    .line 183
    .line 184
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-ge v6, p1, :cond_3

    .line 191
    .line 192
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->v:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWarType()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    packed-switch v0, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->r:Ljava/util/List;

    .line 209
    .line 210
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->q:Ljava/util/List;

    .line 219
    .line 220
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->p:Ljava/util/List;

    .line 229
    .line 230
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->o:Ljava/util/List;

    .line 239
    .line 240
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->n:Ljava/util/List;

    .line 249
    .line 250
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->m:Ljava/util/List;

    .line 259
    .line 260
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/activity/g6;->l:Ljava/util/List;

    .line 269
    .line 270
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->Z(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->f0()V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->e0()V

    .line 285
    .line 286
    .line 287
    :goto_2
    return-void

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected loadData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_5

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq p1, v2, :cond_1

    .line 27
    .line 28
    const/16 v4, 0x30

    .line 29
    .line 30
    if-eq p1, v4, :cond_4

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 p1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    if-nez v0, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x4

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/g6;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/join/mgps/activity/g6;->t:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/32 v2, 0x6ddd00

    .line 18
    .line 19
    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-ltz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/g6;->c0()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x1

    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/activity/g6;->y:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/g6;->z:I

    .line 7
    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/g6;->j:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/g6;->updateProgressPartly()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    packed-switch p2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    goto :goto_0

    .line 24
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g6;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
