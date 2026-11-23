.class public Lcom/join/mgps/fragment/s;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0160
.end annotation


# instance fields
.field c:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private m:Landroid/content/Context;

.field private n:Lcom/join/mgps/dto/CollectionDataBeanInfo;

.field private o:Lcom/join/mgps/dto/CollectionBeanSub;

.field private p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field q:Lcom/join/mgps/rpc/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method M(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method N(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->l:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->k:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "%"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public O(Lcom/join/mgps/dto/CollectionDataBeanInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s;->n:Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 15
    .line 16
    return-void
.end method

.method P()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->n:Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/BreakBeanMain;->getTpl_pic()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f080caf

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->f:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->e:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 63
    .line 64
    .line 65
    return-void
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
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->q:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ge v0, v1, :cond_0

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    const/16 v1, 0x9

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    const/4 v1, 0x5

    .line 151
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getScreenshot_pic()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->P()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method instalButtomButn()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x2b

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v2, 0x2

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    if-eq v0, v2, :cond_3

    .line 44
    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    if-ne v0, v3, :cond_4

    .line 48
    .line 49
    :cond_3
    const/4 v0, 0x3

    .line 50
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_4
    const/16 v3, 0xc

    .line 61
    .line 62
    if-ne v0, v3, :cond_5

    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    const/16 v3, 0xd

    .line 66
    .line 67
    if-ne v0, v3, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    const/4 v3, 0x5

    .line 80
    if-ne v0, v3, :cond_7

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_7
    const/16 v4, 0x9

    .line 90
    .line 91
    const-string v5, ""

    .line 92
    .line 93
    if-ne v0, v4, :cond_10

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_8

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    if-eq v0, v1, :cond_a

    .line 125
    .line 126
    if-eq v0, v2, :cond_9

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_b

    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver_name()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 229
    .line 230
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_down_url()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-lez v0, :cond_c

    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 275
    .line 276
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 282
    .line 283
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-ne v0, v3, :cond_e

    .line 298
    .line 299
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 302
    .line 303
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_4

    .line 307
    .line 308
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 309
    .line 310
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 311
    .line 312
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    iget-object v4, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 325
    .line 326
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :cond_f
    :goto_1
    return-void

    .line 336
    :cond_10
    const/16 v4, 0x2a

    .line 337
    .line 338
    if-ne v0, v4, :cond_13

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_12

    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_11

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 391
    .line 392
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 402
    .line 403
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 404
    .line 405
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 413
    .line 414
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver_name()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 424
    .line 425
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_down_url()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 435
    .line 436
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 437
    .line 438
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_12
    :goto_2
    return-void

    .line 443
    :cond_13
    const/16 v4, 0xb

    .line 444
    .line 445
    if-ne v4, v0, :cond_14

    .line 446
    .line 447
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 448
    .line 449
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-lez v0, :cond_15

    .line 470
    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 476
    .line 477
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    goto :goto_3

    .line 485
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 486
    .line 487
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 488
    .line 489
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 493
    .line 494
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 495
    .line 496
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_16

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-ne v0, v3, :cond_17

    .line 510
    .line 511
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 512
    .line 513
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 514
    .line 515
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 516
    .line 517
    .line 518
    goto :goto_3

    .line 519
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 520
    .line 521
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 522
    .line 523
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 524
    .line 525
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    iget-object v4, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 530
    .line 531
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    iget-object v5, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 536
    .line 537
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    invoke-static {v0, v1, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 542
    .line 543
    .line 544
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 547
    .line 548
    .line 549
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 550
    .line 551
    .line 552
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
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x5

    .line 34
    if-eq p1, v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq p1, v1, :cond_0

    .line 39
    .line 40
    const/16 v1, 0xb

    .line 41
    .line 42
    if-eq p1, v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/fragment/s;->l:Landroid/widget/ProgressBar;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    long-to-int v1, v0

    .line 69
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/fragment/s;->k:Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, "%"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 122
    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x5

    .line 49
    if-ne v1, v2, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ge v0, v1, :cond_0

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 126
    .line 127
    const/16 v1, 0x9

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 140
    .line 141
    const/16 v1, 0xb

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void
.end method

.method progress_layout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x6

    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->updateButn()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method showInstallButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->i:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->h:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showProgress()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->i:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->h:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method updateButn()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 12
    .line 13
    const v1, 0x7f0804bf

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0x2b

    .line 47
    .line 48
    if-lez v2, :cond_2

    .line 49
    .line 50
    const/16 v0, 0x2b

    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 88
    .line 89
    const v1, 0x7f080f8b

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 96
    .line 97
    const-string v1, "\u5f00\u59cb"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v2, 0x7f06002b

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_3
    const/16 v2, 0xc

    .line 121
    .line 122
    const/4 v4, -0x1

    .line 123
    if-ne v0, v2, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 129
    .line 130
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 141
    .line 142
    const v1, 0x7f080550

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_4
    const/16 v2, 0xd

    .line 151
    .line 152
    if-ne v0, v2, :cond_5

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 158
    .line 159
    const-string v1, "\u89e3\u538b"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 170
    .line 171
    const v1, 0x7f080fb6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :cond_5
    const/16 v2, 0x9

    .line 180
    .line 181
    const v5, 0x7f08049c

    .line 182
    .line 183
    .line 184
    if-ne v0, v2, :cond_6

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 190
    .line 191
    const-string v1, "\u66f4\u65b0"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 202
    .line 203
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_4

    .line 207
    .line 208
    :cond_6
    const/16 v2, 0xb

    .line 209
    .line 210
    if-ne v0, v2, :cond_7

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 216
    .line 217
    const-string v1, "\u5b89\u88c5"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 223
    .line 224
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_4

    .line 228
    .line 229
    :cond_7
    const/4 v2, 0x5

    .line 230
    if-eq v0, v2, :cond_10

    .line 231
    .line 232
    const/16 v2, 0x2a

    .line 233
    .line 234
    if-ne v0, v2, :cond_8

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_8
    const/4 v2, 0x2

    .line 239
    if-ne v0, v2, :cond_9

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showProgress()V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 245
    .line 246
    const v1, 0x7f08049d

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Ljava/io/File;

    .line 253
    .line 254
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_11

    .line 268
    .line 269
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->j(Ljava/lang/String;J)D

    .line 282
    .line 283
    .line 284
    move-result-wide v0

    .line 285
    double-to-int v0, v0

    .line 286
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->l:Landroid/widget/ProgressBar;

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->k:Landroid/widget/TextView;

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v0, "%"

    .line 302
    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_9
    const/4 v2, 0x3

    .line 316
    if-ne v0, v2, :cond_a

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showProgress()V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 322
    .line 323
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/io/File;

    .line 327
    .line 328
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_11

    .line 342
    .line 343
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 352
    .line 353
    .line 354
    move-result-wide v1

    .line 355
    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->j(Ljava/lang/String;J)D

    .line 356
    .line 357
    .line 358
    move-result-wide v0

    .line 359
    double-to-int v0, v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s;->N(I)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :cond_a
    const/16 v2, 0xa

    .line 366
    .line 367
    const-string v6, "M"

    .line 368
    .line 369
    if-ne v0, v2, :cond_b

    .line 370
    .line 371
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 375
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v2, "\u7b49\u5f85\u3000"

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 387
    .line 388
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 406
    .line 407
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 411
    .line 412
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_4

    .line 416
    .line 417
    :cond_b
    const/4 v2, 0x1

    .line 418
    const v7, 0x7f12037c

    .line 419
    .line 420
    .line 421
    const-string v8, "\u3000"

    .line 422
    .line 423
    const v9, 0x7f120104

    .line 424
    .line 425
    .line 426
    if-ne v0, v3, :cond_d

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-eqz v0, :cond_c

    .line 438
    .line 439
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-lez v0, :cond_c

    .line 450
    .line 451
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 456
    .line 457
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_c

    .line 466
    .line 467
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 468
    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    new-array v2, v2, [Ljava/lang/Object;

    .line 474
    .line 475
    iget-object v6, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 476
    .line 477
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    aput-object v6, v2, v1

    .line 486
    .line 487
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    goto :goto_1

    .line 495
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 496
    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 503
    .line 504
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 519
    .line 520
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 538
    .line 539
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    .line 541
    .line 542
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 543
    .line 544
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 548
    .line 549
    if-eqz v0, :cond_11

    .line 550
    .line 551
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 556
    .line 557
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 565
    .line 566
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 567
    .line 568
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_4

    .line 572
    .line 573
    :cond_d
    const/16 v3, 0x30

    .line 574
    .line 575
    if-ne v0, v3, :cond_e

    .line 576
    .line 577
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 578
    .line 579
    .line 580
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 581
    .line 582
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 583
    .line 584
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    const v2, 0x7f120107

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_4

    .line 599
    .line 600
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 601
    .line 602
    .line 603
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 604
    .line 605
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    if-eqz v0, :cond_f

    .line 610
    .line 611
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-lez v0, :cond_f

    .line 622
    .line 623
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    iget-object v3, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_f

    .line 638
    .line 639
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 640
    .line 641
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    new-array v2, v2, [Ljava/lang/Object;

    .line 646
    .line 647
    iget-object v6, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 648
    .line 649
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    aput-object v6, v2, v1

    .line 658
    .line 659
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    goto :goto_2

    .line 667
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 668
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .line 673
    .line 674
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 675
    .line 676
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    iget-object v2, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 691
    .line 692
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    .line 708
    .line 709
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 710
    .line 711
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 712
    .line 713
    .line 714
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 715
    .line 716
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    .line 718
    .line 719
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 720
    .line 721
    if-eqz v0, :cond_11

    .line 722
    .line 723
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 728
    .line 729
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 737
    .line 738
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->o:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 739
    .line 740
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 741
    .line 742
    .line 743
    goto :goto_4

    .line 744
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->showInstallButn()V

    .line 745
    .line 746
    .line 747
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 748
    .line 749
    const v1, 0x7f0804c2

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 753
    .line 754
    .line 755
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 756
    .line 757
    iget-object v1, p0, Lcom/join/mgps/fragment/s;->m:Landroid/content/Context;

    .line 758
    .line 759
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    const v2, 0x7f120105

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    .line 772
    .line 773
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/Button;

    .line 774
    .line 775
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    .line 777
    .line 778
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->j:Landroid/widget/ImageView;

    .line 779
    .line 780
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    .line 782
    .line 783
    :cond_11
    :goto_4
    return-void
.end method
