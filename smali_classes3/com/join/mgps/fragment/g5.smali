.class public Lcom/join/mgps/fragment/g5;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/b7$g;
.implements Lcom/join/mgps/callbacks/n;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d8
.end annotation


# instance fields
.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/rpc/e;

.field e:Lcom/join/mgps/adapter/b7;

.field f:I
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field private o:Landroid/content/Context;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/fragment/g5;->m:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/fragment/g5;->p:Z

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 28
    .line 29
    iput v0, p0, Lcom/join/mgps/fragment/g5;->x:I

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/fragment/g5;->y:I

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/join/mgps/fragment/g5;->z:Z

    .line 34
    .line 35
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/g5;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/g5;->z:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/g5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/g5;->x:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic R(Lcom/join/mgps/fragment/g5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/g5;->y:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic S(Lcom/join/mgps/fragment/g5;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/join/mgps/fragment/g5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/g5;->updateDownStateList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 26
    .line 27
    new-instance v2, Lcom/join/mgps/adapter/b7$n;

    .line 28
    .line 29
    invoke-direct {v2, v1, p1}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->setShowDivider(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/adapter/b7$n;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-direct {v1, v2, p1}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/adapter/b7$n;

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    invoke-direct {v1, v2, p1}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SearchDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/g5;->y:I

    .line 2
    .line 3
    if-ltz v0, :cond_7

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/g5;->x:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_7

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/g5;->y:I

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/g5;->x:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_7

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_1
    if-nez v1, :cond_1

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/16 v3, 0xc

    .line 60
    .line 61
    const/4 v4, 0x2

    .line 62
    if-eq v2, v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ne v2, v3, :cond_6

    .line 69
    .line 70
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 71
    .line 72
    iget v5, p0, Lcom/join/mgps/fragment/g5;->y:I

    .line 73
    .line 74
    sub-int v5, v0, v5

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    instance-of v5, v5, Lcom/join/mgps/adapter/b7$s;

    .line 85
    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/join/mgps/adapter/b7$s;

    .line 93
    .line 94
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 118
    .line 119
    mul-double v6, v6, v8

    .line 120
    .line 121
    mul-double v6, v6, v8

    .line 122
    .line 123
    double-to-long v6, v6

    .line 124
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 125
    .line 126
    .line 127
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    const-wide/16 v10, 0x0

    .line 129
    .line 130
    const-string v12, "/"

    .line 131
    .line 132
    cmp-long v13, v8, v10

    .line 133
    .line 134
    if-nez v13, :cond_4

    .line 135
    .line 136
    :try_start_2
    iget-object v8, v2, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 137
    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 144
    .line 145
    .line 146
    move-result-wide v10

    .line 147
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    iget-object v8, v2, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 173
    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 180
    .line 181
    .line 182
    move-result-wide v10

    .line 183
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-ne v6, v3, :cond_5

    .line 212
    .line 213
    iget-object v3, v2, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 214
    .line 215
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 216
    .line 217
    .line 218
    move-result-wide v6

    .line 219
    long-to-int v7, v6

    .line 220
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_5
    iget-object v3, v2, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 227
    .line 228
    .line 229
    move-result-wide v6

    .line 230
    long-to-int v7, v6

    .line 231
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 232
    .line 233
    .line 234
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-ne v1, v4, :cond_6

    .line 239
    .line 240
    iget-object v1, v2, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 241
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v3, "/S"

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :catch_1
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_7
    return-void
.end method


# virtual methods
.method O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "uid",
            "game_id",
            "company_id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "fromid"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p2, "_from"

    .line 17
    .line 18
    const/16 v1, 0x2b5e

    .line 19
    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    :goto_0
    const-string p3, "groupuid"

    .line 36
    .line 37
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p2, "gameid"

    .line 41
    .line 42
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p2, "company_id"

    .line 46
    .line 47
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method V(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->isNeedLoad(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method W()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/g5;->j:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 18
    .line 19
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/g5;->k:I

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g5;->a0(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget v0, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g5;->Z(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget v0, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g5;->Y(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method Y(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadingView()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v6, p0, Lcom/join/mgps/fragment/g5;->m:I

    .line 34
    .line 35
    iget v7, p0, Lcom/join/mgps/fragment/g5;->j:I

    .line 36
    .line 37
    iget v8, p0, Lcom/join/mgps/fragment/g5;->k:I

    .line 38
    .line 39
    iget-object v9, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 40
    .line 41
    move v5, p1

    .line 42
    invoke-virtual/range {v3 .. v9}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/join/mgps/fragment/g5;->d:Lcom/join/mgps/rpc/e;

    .line 47
    .line 48
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/e;->G1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ne v3, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/join/mgps/dto/SearchIntegratedBean;

    .line 85
    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/g5;->d0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception p1

    .line 104
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_0
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_1
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_2
    :goto_2
    return-void

    .line 120
    :cond_3
    if-ne p1, v1, :cond_5

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v0, 0x7f12031e

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g5;->T(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_3
    return-void
.end method

.method Z(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_8

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadingView()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v7, p0, Lcom/join/mgps/fragment/g5;->m:I

    .line 36
    .line 37
    iget v8, p0, Lcom/join/mgps/fragment/g5;->j:I

    .line 38
    .line 39
    iget v9, p0, Lcom/join/mgps/fragment/g5;->k:I

    .line 40
    .line 41
    iget-object v10, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 42
    .line 43
    move v6, p1

    .line 44
    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/fragment/g5;->d:Lcom/join/mgps/rpc/e;

    .line 49
    .line 50
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->z0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-gtz v4, :cond_1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v4, 0x0

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 118
    :goto_1
    if-ne p1, v1, :cond_3

    .line 119
    .line 120
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 129
    .line 130
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/g5;->c0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    if-eqz v4, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 146
    .line 147
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/g5;->c0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const/4 v4, 0x0

    .line 152
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catch_0
    move-exception v1

    .line 157
    goto :goto_3

    .line 158
    :catch_1
    move-exception v1

    .line 159
    const/4 v4, 0x0

    .line 160
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .line 165
    .line 166
    :goto_4
    if-eqz v4, :cond_6

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :catch_2
    move-exception v1

    .line 170
    goto :goto_5

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    const/4 v4, 0x0

    .line 173
    goto :goto_8

    .line 174
    :catch_3
    move-exception v1

    .line 175
    const/4 v4, 0x0

    .line 176
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    .line 178
    .line 179
    if-eqz v4, :cond_6

    .line 180
    .line 181
    :goto_6
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_6
    iput p1, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 185
    .line 186
    iput v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 187
    .line 188
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 189
    .line 190
    .line 191
    goto :goto_b

    .line 192
    :catchall_1
    move-exception v1

    .line 193
    :goto_8
    if-eqz v4, :cond_7

    .line 194
    .line 195
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_7
    iput p1, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 199
    .line 200
    iput v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 201
    .line 202
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :cond_8
    :goto_a
    return-void

    .line 207
    :cond_9
    if-ne p1, v1, :cond_b

    .line 208
    .line 209
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 210
    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_b

    .line 218
    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V

    .line 220
    .line 221
    .line 222
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 223
    .line 224
    if-eqz p1, :cond_c

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const v0, 0x7f12031e

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g5;->T(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_c
    :goto_b
    return-void
.end method

.method a0(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_8

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadingView()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v7, p0, Lcom/join/mgps/fragment/g5;->m:I

    .line 36
    .line 37
    iget v8, p0, Lcom/join/mgps/fragment/g5;->j:I

    .line 38
    .line 39
    iget v9, p0, Lcom/join/mgps/fragment/g5;->k:I

    .line 40
    .line 41
    iget-object v10, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 42
    .line 43
    move v6, p1

    .line 44
    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/fragment/g5;->d:Lcom/join/mgps/rpc/e;

    .line 49
    .line 50
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->x1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-gtz v4, :cond_1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    const/4 v4, 0x0

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 142
    :goto_1
    if-ne p1, v1, :cond_3

    .line 143
    .line 144
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lcom/join/mgps/dto/SearchPostsBean;

    .line 153
    .line 154
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/g5;->e0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    if-eqz v4, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/join/mgps/dto/SearchPostsBean;

    .line 170
    .line 171
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/g5;->e0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    const/4 v4, 0x0

    .line 176
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catch_0
    move-exception v1

    .line 181
    goto :goto_3

    .line 182
    :catch_1
    move-exception v1

    .line 183
    const/4 v4, 0x0

    .line 184
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .line 189
    .line 190
    :goto_4
    if-eqz v4, :cond_6

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :catch_2
    move-exception v1

    .line 194
    goto :goto_5

    .line 195
    :catchall_0
    move-exception v1

    .line 196
    const/4 v4, 0x0

    .line 197
    goto :goto_8

    .line 198
    :catch_3
    move-exception v1

    .line 199
    const/4 v4, 0x0

    .line 200
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    .line 202
    .line 203
    if-eqz v4, :cond_6

    .line 204
    .line 205
    :goto_6
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_6
    iput p1, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 209
    .line 210
    iput v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 211
    .line 212
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 213
    .line 214
    .line 215
    goto :goto_b

    .line 216
    :catchall_1
    move-exception v1

    .line 217
    :goto_8
    if-eqz v4, :cond_7

    .line 218
    .line 219
    iput v2, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_7
    iput p1, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 223
    .line 224
    iput v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 225
    .line 226
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->g0()V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_8
    :goto_a
    return-void

    .line 231
    :cond_9
    if-ne p1, v1, :cond_b

    .line 232
    .line 233
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 234
    .line 235
    if-eqz p1, :cond_a

    .line 236
    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_b

    .line 242
    .line 243
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadFailed()V

    .line 244
    .line 245
    .line 246
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 247
    .line 248
    if-eqz p1, :cond_c

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const v0, 0x7f12031e

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g5;->T(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_c
    :goto_b
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->d:Lcom/join/mgps/rpc/e;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/adapter/b7;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/b7;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/b7;->E(Lcom/join/mgps/adapter/b7$g;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/b7;->K(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/fragment/g5$a;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g5$a;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 59
    .line 60
    const/4 v1, 0x5

    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->loading()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/join/mgps/fragment/g5;->p:Z

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/fragment/g5$b;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g5$b;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 83
    .line 84
    new-instance v1, Lcom/join/mgps/fragment/g5$c;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g5$c;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method b0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-class v3, Lcom/join/mgps/dto/SearchIntegratedBean;

    .line 41
    .line 42
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/dto/SearchIntegratedBean;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedBean;->getKeyword()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedBean;->getKeyword()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/g5;->d0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x2

    .line 80
    if-ne v1, v3, :cond_2

    .line 81
    .line 82
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-class v3, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 87
    .line 88
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getKeyword()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getKeyword()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/g5;->c0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const/4 v3, 0x3

    .line 126
    if-ne v1, v3, :cond_3

    .line 127
    .line 128
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-class v3, Lcom/join/mgps/dto/SearchPostsBean;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/join/mgps/dto/SearchPostsBean;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchPostsBean;->getKeyword()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchPostsBean;->getKeyword()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/g5;->e0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->hideLoading()V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    return-void
.end method

.method c0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-ne p2, v0, :cond_2

    .line 6
    .line 7
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/adapter/b7$n;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->setKeyword(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p2, "2"

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p2, v0}, Lcom/join/mgps/Util/r0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 v0, 0x6

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 87
    .line 88
    new-instance v2, Lcom/join/mgps/adapter/b7$n;

    .line 89
    .line 90
    invoke-direct {v2, v0, p2}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/adapter/b7$n;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/16 v3, 0xb

    .line 107
    .line 108
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_4

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 151
    .line 152
    new-instance v2, Lcom/join/mgps/adapter/b7$n;

    .line 153
    .line 154
    invoke-direct {v2, v0, p2}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/b7;->H(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 169
    .line 170
    if-eqz p1, :cond_5

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->notifyDataSetChanged()V

    .line 173
    .line 174
    .line 175
    :cond_5
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "searchTotalList"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "searchGameList"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/t;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method d0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move/from16 v4, p2

    .line 11
    .line 12
    if-ne v4, v2, :cond_1

    .line 13
    .line 14
    iget-object v4, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v4, v0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/SearchIntegratedBean;->setKeyword(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v4, "0"

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Lcom/join/mgps/Util/r0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 38
    .line 39
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/b7;->H(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/g5;->notifyDataSetChanged()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void

    .line 52
    :cond_3
    iget-object v4, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 53
    .line 54
    new-instance v5, Lcom/join/mgps/adapter/b7$n;

    .line 55
    .line 56
    const/16 v6, 0xa

    .line 57
    .line 58
    invoke-direct {v5, v6, v3}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/16 v5, 0xc

    .line 69
    .line 70
    const/4 v7, 0x5

    .line 71
    const/16 v8, 0xb

    .line 72
    .line 73
    if-eqz v4, :cond_f

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v9, "2"

    .line 84
    .line 85
    const/4 v10, 0x7

    .line 86
    const-string v11, "1"

    .line 87
    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    iget-object v4, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 91
    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-virtual {v12}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-virtual {v4, v12}, Lcom/join/mgps/adapter/b7;->F(Lcom/join/mgps/dto/SearchResultAdinfo;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchResultAdinfo;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget v12, v0, Lcom/join/mgps/fragment/g5;->f:I

    .line 116
    .line 117
    if-nez v12, :cond_4

    .line 118
    .line 119
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    if-ne v12, v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    const/16 v12, 0x93

    .line 129
    .line 130
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 134
    .line 135
    .line 136
    iget-object v12, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 137
    .line 138
    new-instance v13, Lcom/join/mgps/adapter/b7$n;

    .line 139
    .line 140
    const/16 v14, 0x9

    .line 141
    .line 142
    invoke-direct {v13, v14, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v12, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 149
    .line 150
    new-instance v13, Lcom/join/mgps/adapter/b7$n;

    .line 151
    .line 152
    invoke-direct {v13, v10, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    if-eqz v12, :cond_6

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-gtz v12, :cond_7

    .line 173
    .line 174
    :cond_6
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_8

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-eqz v12, :cond_8

    .line 193
    .line 194
    :cond_7
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setViewType(I)V

    .line 195
    .line 196
    .line 197
    iget-object v12, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 198
    .line 199
    new-instance v13, Lcom/join/mgps/adapter/b7$n;

    .line 200
    .line 201
    const/16 v14, 0x8

    .line 202
    .line 203
    invoke-direct {v13, v14, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const/16 v12, 0x70

    .line 218
    .line 219
    const/16 v13, 0x67

    .line 220
    .line 221
    if-eqz v4, :cond_c

    .line 222
    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_c

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    if-eqz v4, :cond_b

    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_b

    .line 260
    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_b

    .line 278
    .line 279
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    check-cast v14, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 284
    .line 285
    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 289
    .line 290
    .line 291
    iget v15, v0, Lcom/join/mgps/fragment/g5;->f:I

    .line 292
    .line 293
    if-nez v15, :cond_9

    .line 294
    .line 295
    invoke-virtual {v14, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_9
    if-ne v15, v2, :cond_a

    .line 300
    .line 301
    invoke-virtual {v14, v9}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_a
    :goto_2
    iget-object v15, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 305
    .line 306
    new-instance v6, Lcom/join/mgps/adapter/b7$n;

    .line 307
    .line 308
    invoke-direct {v6, v10, v14}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6, v2}, Lcom/join/mgps/adapter/b7$n;->a(Z)Lcom/join/mgps/adapter/b7$n;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-object v6, v0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    const/16 v6, 0xa

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-lt v2, v7, :cond_f

    .line 339
    .line 340
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 341
    .line 342
    new-instance v4, Lcom/join/mgps/adapter/b7$n;

    .line 343
    .line 344
    invoke-direct {v4, v5, v3}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_c
    iget-object v4, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 352
    .line 353
    new-instance v6, Lcom/join/mgps/adapter/b7$n;

    .line 354
    .line 355
    invoke-direct {v6, v8, v3}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    if-eqz v3, :cond_f

    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_f

    .line 384
    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_f

    .line 402
    .line 403
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 408
    .line 409
    invoke-virtual {v4, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 413
    .line 414
    .line 415
    iget v6, v0, Lcom/join/mgps/fragment/g5;->f:I

    .line 416
    .line 417
    if-nez v6, :cond_d

    .line 418
    .line 419
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_d
    if-ne v6, v2, :cond_e

    .line 424
    .line 425
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    :goto_4
    iget-object v6, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 429
    .line 430
    new-instance v14, Lcom/join/mgps/adapter/b7$n;

    .line 431
    .line 432
    invoke-direct {v14, v10, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v14, v2}, Lcom/join/mgps/adapter/b7$n;->a(Z)Lcom/join/mgps/adapter/b7$n;

    .line 436
    .line 437
    .line 438
    move-result-object v14

    .line 439
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    iget-object v6, v0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 443
    .line 444
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_3

    .line 448
    :cond_f
    :goto_5
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 449
    .line 450
    new-instance v3, Lcom/join/mgps/adapter/b7$n;

    .line 451
    .line 452
    const/4 v4, 0x2

    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    const/16 v9, 0xa

    .line 458
    .line 459
    invoke-direct {v3, v9, v6}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    if-eqz v2, :cond_12

    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    const/4 v3, 0x6

    .line 480
    if-eqz v2, :cond_11

    .line 481
    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_11

    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_10

    .line 513
    .line 514
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    check-cast v6, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 519
    .line 520
    iget-object v9, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 521
    .line 522
    new-instance v10, Lcom/join/mgps/adapter/b7$n;

    .line 523
    .line 524
    invoke-direct {v10, v3, v6}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_6

    .line 531
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-lt v2, v7, :cond_12

    .line 544
    .line 545
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 546
    .line 547
    new-instance v3, Lcom/join/mgps/adapter/b7$n;

    .line 548
    .line 549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-direct {v3, v5, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto :goto_8

    .line 560
    :cond_11
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 561
    .line 562
    new-instance v6, Lcom/join/mgps/adapter/b7$n;

    .line 563
    .line 564
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    invoke-direct {v6, v8, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    if-eqz v2, :cond_12

    .line 583
    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_12

    .line 597
    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    if-eqz v4, :cond_12

    .line 615
    .line 616
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    check-cast v4, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 621
    .line 622
    iget-object v6, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 623
    .line 624
    new-instance v9, Lcom/join/mgps/adapter/b7$n;

    .line 625
    .line 626
    invoke-direct {v9, v3, v4}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    goto :goto_7

    .line 633
    :cond_12
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    const/4 v3, 0x3

    .line 638
    if-eqz v2, :cond_13

    .line 639
    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    if-eqz v2, :cond_13

    .line 649
    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-nez v2, :cond_14

    .line 663
    .line 664
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    if-eqz v2, :cond_17

    .line 673
    .line 674
    :cond_14
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 675
    .line 676
    new-instance v4, Lcom/join/mgps/adapter/b7$n;

    .line 677
    .line 678
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v6

    .line 682
    const/16 v8, 0xa

    .line 683
    .line 684
    invoke-direct {v4, v8, v6}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    if-eqz v2, :cond_15

    .line 699
    .line 700
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 701
    .line 702
    new-instance v4, Lcom/join/mgps/adapter/b7$n;

    .line 703
    .line 704
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    invoke-virtual {v6}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    const/4 v8, 0x4

    .line 713
    invoke-direct {v4, v8, v6}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    if-eqz v2, :cond_18

    .line 728
    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v4

    .line 745
    if-eqz v4, :cond_16

    .line 746
    .line 747
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 752
    .line 753
    invoke-direct {v0, v4}, Lcom/join/mgps/fragment/g5;->f0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    .line 754
    .line 755
    .line 756
    goto :goto_9

    .line 757
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    if-lt v1, v7, :cond_18

    .line 770
    .line 771
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 772
    .line 773
    new-instance v2, Lcom/join/mgps/adapter/b7$n;

    .line 774
    .line 775
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-direct {v2, v5, v3}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    goto :goto_b

    .line 786
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    if-eqz v2, :cond_18

    .line 795
    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    if-eqz v2, :cond_18

    .line 809
    .line 810
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 811
    .line 812
    new-instance v4, Lcom/join/mgps/adapter/b7$n;

    .line 813
    .line 814
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 815
    .line 816
    .line 817
    move-result-object v5

    .line 818
    const/16 v6, 0xa

    .line 819
    .line 820
    invoke-direct {v4, v6, v5}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 827
    .line 828
    new-instance v4, Lcom/join/mgps/adapter/b7$n;

    .line 829
    .line 830
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    invoke-direct {v4, v8, v3}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    if-eqz v2, :cond_18

    .line 857
    .line 858
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 863
    .line 864
    invoke-direct {v0, v2}, Lcom/join/mgps/fragment/g5;->f0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    .line 865
    .line 866
    .line 867
    goto :goto_a

    .line 868
    :cond_18
    :goto_b
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 869
    .line 870
    invoke-direct {v0, v1}, Lcom/join/mgps/fragment/g5;->updateDownStateList(Ljava/util/List;)V

    .line 871
    .line 872
    .line 873
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 874
    .line 875
    iget-object v2, v0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 876
    .line 877
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/b7;->H(Ljava/util/List;)V

    .line 878
    .line 879
    .line 880
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 881
    .line 882
    if-eqz v1, :cond_19

    .line 883
    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/g5;->notifyDataSetChanged()V

    .line 885
    .line 886
    .line 887
    :cond_19
    iget-object v1, v0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 888
    .line 889
    if-eqz v1, :cond_1a

    .line 890
    .line 891
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 892
    .line 893
    .line 894
    :cond_1a
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_sign_id"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "searchTotalList"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "searchGameList"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method e0(Lcom/join/mgps/dto/SearchPostsBean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/SearchPostsBean;->setKeyword(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "3"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/join/mgps/Util/r0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    if-ne p2, v0, :cond_4

    .line 77
    .line 78
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 79
    .line 80
    new-instance v0, Lcom/join/mgps/adapter/b7$n;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x4

    .line 91
    invoke-direct {v0, v2, v1}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 130
    .line 131
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/g5;->f0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 136
    .line 137
    new-instance v0, Lcom/join/mgps/adapter/b7$n;

    .line 138
    .line 139
    const/4 v1, 0x3

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/16 v2, 0xb

    .line 145
    .line 146
    invoke-direct {v0, v2, v1}, Lcom/join/mgps/adapter/b7$n;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_6

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 185
    .line 186
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/g5;->f0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 191
    .line 192
    iget-object p2, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/b7;->H(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->notifyDataSetChanged()V

    .line 202
    .line 203
    .line 204
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 205
    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 209
    .line 210
    .line 211
    :cond_8
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "s",
            "uid",
            "s1",
            "s2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "fromSearchP2"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "fromSearchP3"

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v0, "fromSearchP4"

    .line 19
    .line 20
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/join/mgps/fragment/g5;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0, p2, p3}, Lcom/papa/sim/statistic/t;->j0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method g0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->r:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->s:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/g5;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g5;->V(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->loading()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public loading()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/g5;->l:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/g5;->n:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/join/mgps/fragment/g5;->j:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 23
    .line 24
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/join/mgps/fragment/g5;->k:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 33
    .line 34
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getGameId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->g:Ljava/lang/String;

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->q:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->showLoadingView()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/fragment/g5;->h:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->b0()V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    if-eq v0, v2, :cond_2

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    if-eq v0, v2, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/g5;->a0(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/g5;->Z(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/g5;->Y(I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->W()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/b7;->K(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    :cond_0
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
    .locals 2
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
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/fragment/g5$f;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g5$f;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/join/mgps/fragment/g5;->z:Z

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/fragment/g5;->updateProgressPartly()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/g5;->f:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->e()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/fragment/g5$d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/g5$d;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/fragment/g5$e;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/g5$e;-><init>(Lcom/join/mgps/fragment/g5;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5;->loading()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g5;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/g5;->s:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->r:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->r:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->c:Lcom/join/mgps/customview/XListView2;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->r:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g5;->s:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method
