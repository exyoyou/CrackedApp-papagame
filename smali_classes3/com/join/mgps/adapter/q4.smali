.class public Lcom/join/mgps/adapter/q4;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/q4$f;,
        Lcom/join/mgps/adapter/q4$g;,
        Lcom/join/mgps/adapter/q4$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/adapter/q4$g;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x6


# instance fields
.field h:Landroid/content/Context;

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:I

.field m:Lcom/join/mgps/adapter/q4$f;

.field private n:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/adapter/q4;->i:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/adapter/q4;->j:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/adapter/q4;->k:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/adapter/q4;->l:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    const v0, 0x7f0d02c2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    const v0, 0x7f0d02be

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    const v0, 0x7f0d02bd

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    const v1, 0x7f0d02bb

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x5

    .line 48
    const v1, 0x7f0d02bf

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x6

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/join/mgps/adapter/q4$a;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/q4$a;-><init>(Lcom/join/mgps/adapter/q4;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setSpanSizeLookup(Lcom/join/mgps/base/BaseQuickAdapter$m;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static synthetic A(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/q4;->X(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/join/mgps/adapter/q4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/q4;->Y(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/q4;->U(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/join/mgps/adapter/q4;Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/q4;->W(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/join/mgps/adapter/q4;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/q4;->T(Landroid/view/View;)V

    return-void
.end method

.method static synthetic F(Lcom/join/mgps/adapter/q4;Lcom/join/mgps/base/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lcom/join/mgps/adapter/q4;)Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/q4;->n:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object p0
.end method

.method private H(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u5171"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, "\u6b3e\u6e38\u620f"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const v0, 0x7f0a0441

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a084f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const v0, 0x7f0a10d8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    const v2, 0x7f0a129e

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-ne v0, v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/ProgressBar;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    long-to-int v2, v4

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/ProgressBar;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    const/4 v1, 0x5

    .line 110
    const v2, 0x7f0a1151

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    if-ne v0, v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    xor-int/2addr v0, v4

    .line 121
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info_switch()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ne v1, v4, :cond_5

    .line 141
    .line 142
    const v1, 0x7f0a197d

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->g0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const v2, 0x7f0a15e3

    .line 168
    .line 169
    .line 170
    if-ge v0, v1, :cond_6

    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/join/mgps/adapter/q4$g;

    .line 181
    .line 182
    iget-boolean v0, v0, Lcom/join/mgps/adapter/q4$g;->f:Z

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/q4;->M(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    new-instance v0, Lcom/join/mgps/adapter/q4$b;

    .line 204
    .line 205
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/q4$b;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void
.end method

.method private J(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;

    .line 13
    .line 14
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/adapter/p4;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/p4;-><init>(Lcom/join/mgps/adapter/q4;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->getRecommend_list()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x3

    .line 29
    new-array v1, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    const v2, 0x7f0a0850

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v3, v1, v4

    .line 42
    .line 43
    const v3, 0x7f0a0851

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    aput-object v3, v1, v5

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    aput-object p1, v1, v2

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    :goto_0
    if-ge p1, v0, :cond_2

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lt p1, v2, :cond_1

    .line 72
    .line 73
    aget-object v2, v1, p1

    .line 74
    .line 75
    const/16 v3, 0x8

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    aget-object v2, v1, p1

    .line 82
    .line 83
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    aget-object v2, v1, p1

    .line 87
    .line 88
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method private K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a084f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a10d8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    const v2, 0x7f0a129e

    .line 43
    .line 44
    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    long-to-int v2, v1

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ProgressBar;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->g0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, "\u6b3e\u6e38\u620f\u9700\u66f4\u65b0"

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const v0, 0x7f0a0441

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    new-instance p2, Lcom/join/mgps/adapter/o4;

    .line 37
    .line 38
    invoke-direct {p2}, Lcom/join/mgps/adapter/o4;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_$IntentBuilder_;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 13
    .line 14
    instance-of v0, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickTabGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 33
    .line 34
    instance-of v0, p1, Lcom/join/mgps/activity/MyGameManagerActivity;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickCentreGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 43
    .line 44
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/join/mgps/adapter/q4;->k:Z

    .line 54
    .line 55
    return-void
.end method

.method private static synthetic U(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$k;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic V(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/q4$f;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method private synthetic W(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p3, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Lcom/join/mgps/adapter/q4$f;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const/4 v0, 0x6

    .line 27
    if-ne p3, v0, :cond_1

    .line 28
    .line 29
    iget-object p3, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-interface {p3, p1, p2}, Lcom/join/mgps/adapter/q4$f;->c(ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic X(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic Y(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p4, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, p4, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p4, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p4, p2}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/q4;->O(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/q4;->O(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private synthetic Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/q4$f;->onLongClick(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/t;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 17
    .line 18
    const v2, 0x7f1301b0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0d0186

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a04b8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/Button;

    .line 38
    .line 39
    const v2, 0x7f0a1762

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    const v3, 0x7f0a04bb

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v4, "\u5220\u9664\u6e38\u620f"

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, "\u5220\u9664"

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v2, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5378\u8f7d\u8be5\u6e38\u620f\uff1f"

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "\u5378\u8f7d"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\uff1f"

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    const/4 v2, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u53ca\u6587\u4ef6\uff1f"

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_1
    const v3, 0x7f0a04b2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/Button;

    .line 138
    .line 139
    new-instance v4, Lcom/join/mgps/adapter/m4;

    .line 140
    .line 141
    invoke-direct {v4, p2}, Lcom/join/mgps/adapter/m4;-><init>(Landroid/app/Dialog;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/join/mgps/adapter/n4;

    .line 148
    .line 149
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/join/mgps/adapter/n4;-><init>(Lcom/join/mgps/adapter/q4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 156
    .line 157
    .line 158
    return v0
.end method

.method private k0(Lcom/join/mgps/base/b;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "show"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a084f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f0a10d8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object v5, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const v6, 0x7f071294

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    float-to-int v5, v5

    .line 40
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const v6, 0x7f071369

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const v5, 0x7f07130c

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    float-to-int v3, v3

    .line 93
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const v5, 0x7f071395

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    const v0, 0x7f0a095e

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a0efa

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 130
    .line 131
    .line 132
    const v0, 0x7f0a129e

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 136
    .line 137
    .line 138
    const v0, 0x7f0a1b2e

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 142
    .line 143
    .line 144
    const p2, 0x7f0a195c

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 148
    .line 149
    .line 150
    const p2, 0x7f0a048c

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private l0(Lcom/join/mgps/base/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a084f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f071294

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    float-to-int v2, v2

    .line 28
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a10d8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v3, 0x7f071369

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a095e

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    const v1, 0x7f0a129e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 82
    .line 83
    .line 84
    const v1, 0x7f0a1b2e

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 88
    .line 89
    .line 90
    const v2, 0x7f0a0efa

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 94
    .line 95
    .line 96
    const v2, 0x7f0a195c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 100
    .line 101
    .line 102
    const v2, 0x7f0a048c

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 119
    .line 120
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 121
    .line 122
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private m0(Lcom/join/mgps/base/b;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "show"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a084f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f0a095e

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    .line 29
    const v5, 0x7f0a10d8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/widget/TextView;

    .line 37
    .line 38
    const v7, 0x7f071374

    .line 39
    .line 40
    .line 41
    const v8, 0x7f0a1b2e

    .line 42
    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    iget-object v10, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const v11, 0x7f071294

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    float-to-int v10, v10

    .line 61
    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    .line 63
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/widget/TextView;

    .line 68
    .line 69
    iget-object v10, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    const v11, 0x7f071369

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 87
    .line 88
    iget-object v5, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    float-to-int v5, v5

    .line 99
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 110
    .line 111
    iget-object v10, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    const v11, 0x7f07130c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    float-to-int v10, v10

    .line 125
    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object v10, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    const v11, 0x7f071395

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    .line 148
    .line 149
    iget-object v5, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    float-to-int v5, v5

    .line 160
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 161
    .line 162
    const/4 v5, 0x2

    .line 163
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 167
    .line 168
    .line 169
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    const v0, 0x7f0a0efa

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0, v9}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 182
    .line 183
    .line 184
    const v0, 0x7f0a129e

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 191
    .line 192
    .line 193
    const v0, 0x7f0a048c

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->V(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method M(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_4

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v1, v1

    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    cmp-long v5, v1, v3

    .line 60
    .line 61
    if-gtz v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    :cond_3
    const/4 v0, 0x1

    .line 90
    :cond_4
    return v0
.end method

.method protected N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/q4$g;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->J(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v1, 0x5

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_4

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->H(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const/4 v1, 0x6

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 44
    .line 45
    .line 46
    :cond_5
    :goto_0
    return-void
.end method

.method public O(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :cond_1
    new-instance v0, Lcom/join/mgps/adapter/q4$d;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/q4$d;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q4;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/adapter/q4$g;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/adapter/q4$g;->c()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x3

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/adapter/q4$g;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public Q()Lcom/join/mgps/adapter/q4$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/q4;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/q4;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method a0()V
    .locals 10

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->a0(Landroid/content/Context;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-wide v4, v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    cmp-long v7, v4, v2

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    cmp-long v9, v4, v7

    .line 48
    .line 49
    if-gez v9, :cond_0

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    move-object v1, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v1, :cond_a

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/join/mgps/adapter/q4;->i:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/4 v6, 0x3

    .line 99
    if-gt v5, v6, :cond_4

    .line 100
    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-wide v4, v2

    .line 110
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    const/4 v8, 0x5

    .line 127
    if-ne v7, v8, :cond_6

    .line 128
    .line 129
    cmp-long v7, v4, v2

    .line 130
    .line 131
    if-eqz v7, :cond_7

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    cmp-long v9, v4, v7

    .line 138
    .line 139
    if-gez v9, :cond_6

    .line 140
    .line 141
    :cond_7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    move-object v1, v6

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/join/mgps/adapter/q4;->i:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    const-string v0, ""

    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/adapter/q4;->i:Ljava/lang/String;

    .line 159
    .line 160
    :cond_a
    :goto_3
    return-void
.end method

.method public b0(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adAppBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q4;->n:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public c0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canShowHighlight"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/q4;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/adapter/q4$g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/q4$g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canShowRecommBadge"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/q4;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "corner_mark_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q4;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method f0(Landroid/widget/TextView;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "number"
        }
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
    if-ge p2, v0, :cond_1

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    const v5, 0x7f0713c2

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-ge p2, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f080da4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v4, -0x2

    .line 64
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 71
    .line 72
    const/16 v4, 0x11

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    const v3, 0x7f080ccc

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    const v3, 0x7f0711b5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p1, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    .line 98
    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, ""

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method g0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "downloadTask"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0efa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/join/mgps/adapter/q4$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/adapter/q4$c;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/base/b;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/adapter/j4;

    .line 33
    .line 34
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/j4;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/adapter/q4$e;

    .line 44
    .line 45
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/q4$e;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    const v0, 0x7f0a095e

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/join/mgps/adapter/q4$e;

    .line 59
    .line 60
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/q4$e;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x3

    .line 71
    const/4 v2, 0x1

    .line 72
    const/4 v3, 0x0

    .line 73
    if-ne v0, v1, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 78
    :goto_2
    const v1, 0x7f0a08a5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v4, 0x6

    .line 90
    if-ne v1, v4, :cond_3

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 v1, 0x0

    .line 95
    :goto_3
    const v5, 0x7f0a083b

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v5, v1}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-ne v1, v4, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    const/4 v2, 0x0

    .line 110
    :goto_4
    const v1, 0x7f0a083d

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/adapter/q4;->o:Ljava/lang/String;

    .line 133
    .line 134
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->d:Lcom/facebook/drawee/drawable/s$c;

    .line 135
    .line 136
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    const v0, 0x7f0a1087

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Lcom/join/mgps/adapter/k4;

    .line 147
    .line 148
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/adapter/k4;-><init>(Lcom/join/mgps/adapter/q4;Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 155
    .line 156
    new-instance v1, Lcom/join/mgps/adapter/l4;

    .line 157
    .line 158
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/l4;-><init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/q4;->i0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method h0(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const p2, 0x7f080f8b

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    const-string p2, "\u5f00\u59cb"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const v0, 0x7f06002b

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method i0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "downloadTask"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 28
    .line 29
    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v7, ""

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_0
    const v6, 0x7f0a095e

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v6, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6, v5}, Lcom/join/mgps/base/b;->setEnabled(IZ)Lcom/join/mgps/base/b;

    .line 61
    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/adapter/q4;->h0(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 89
    .line 90
    mul-double v7, v7, v9

    .line 91
    .line 92
    mul-double v7, v7, v9

    .line 93
    .line 94
    double-to-long v7, v7

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    const/16 v10, 0x2b

    .line 108
    .line 109
    if-lez v9, :cond_3

    .line 110
    .line 111
    const/16 v3, 0x2b

    .line 112
    .line 113
    :cond_3
    if-eqz v3, :cond_5

    .line 114
    .line 115
    const/16 v12, 0x1b

    .line 116
    .line 117
    const-string v13, "\u6682\u505c\u4e2d"

    .line 118
    .line 119
    if-eq v3, v12, :cond_e

    .line 120
    .line 121
    const/16 v12, 0x30

    .line 122
    .line 123
    if-eq v3, v12, :cond_d

    .line 124
    .line 125
    const/4 v12, 0x2

    .line 126
    const-string v14, "/"

    .line 127
    .line 128
    const-string v15, "#.0"

    .line 129
    .line 130
    const v9, 0x7f0a129e

    .line 131
    .line 132
    .line 133
    const v11, 0x7f0a048c

    .line 134
    .line 135
    .line 136
    if-eq v3, v12, :cond_b

    .line 137
    .line 138
    const/4 v12, 0x3

    .line 139
    if-eq v3, v12, :cond_7

    .line 140
    .line 141
    const/4 v12, 0x5

    .line 142
    if-eq v3, v12, :cond_8

    .line 143
    .line 144
    const/4 v12, 0x6

    .line 145
    if-eq v3, v12, :cond_7

    .line 146
    .line 147
    const/4 v12, 0x7

    .line 148
    if-eq v3, v12, :cond_5

    .line 149
    .line 150
    const/16 v12, 0x2a

    .line 151
    .line 152
    if-eq v3, v12, :cond_6

    .line 153
    .line 154
    if-eq v3, v10, :cond_5

    .line 155
    .line 156
    packed-switch v3, :pswitch_data_0

    .line 157
    .line 158
    .line 159
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/UtilsMy;->U1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-eqz v5, :cond_4

    .line 178
    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    :cond_4
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    const-string v0, "#FFA8A8A8"

    .line 195
    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_7

    .line 207
    .line 208
    :pswitch_0
    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 209
    .line 210
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Landroid/widget/ProgressBar;

    .line 218
    .line 219
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    long-to-int v0, v4

    .line 224
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 225
    .line 226
    .line 227
    const v0, 0x7f080fb6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 231
    .line 232
    .line 233
    const-string v0, "\u89e3\u538b"

    .line 234
    .line 235
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 236
    .line 237
    .line 238
    iget-object v0, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const v3, 0x7f060032

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 252
    .line 253
    .line 254
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q4;->l0(Lcom/join/mgps/base/b;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :pswitch_1
    const-string v3, "\u89e3\u538b\u4e2d.."

    .line 260
    .line 261
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Landroid/widget/ProgressBar;

    .line 269
    .line 270
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 271
    .line 272
    .line 273
    move-result-wide v7

    .line 274
    long-to-int v0, v7

    .line 275
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 276
    .line 277
    .line 278
    const v0, 0x7f080550

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 282
    .line 283
    .line 284
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 285
    .line 286
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 287
    .line 288
    .line 289
    const v0, -0x4a4a4b

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 293
    .line 294
    .line 295
    invoke-direct {v1, v2, v5}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_7

    .line 299
    .line 300
    :pswitch_2
    const v3, 0x7f080381

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 304
    .line 305
    .line 306
    const-string v0, "\u5b89\u88c5"

    .line 307
    .line 308
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 309
    .line 310
    .line 311
    iget-object v0, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const v4, 0x7f06002b

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 325
    .line 326
    .line 327
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q4;->l0(Lcom/join/mgps/base/b;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :pswitch_3
    const v3, 0x7f080381

    .line 333
    .line 334
    .line 335
    const v4, 0x7f06002b

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 339
    .line 340
    .line 341
    const-string v3, "\u7b49\u5f85"

    .line 342
    .line 343
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 344
    .line 345
    .line 346
    iget-object v3, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 357
    .line 358
    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 365
    .line 366
    .line 367
    move-result-wide v12

    .line 368
    invoke-static {v12, v13, v15}, Lcom/join/mgps/Util/UtilsMy;->d(JLjava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 390
    .line 391
    .line 392
    :try_start_0
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroid/widget/ProgressBar;

    .line 397
    .line 398
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 399
    .line 400
    .line 401
    move-result-wide v6

    .line 402
    long-to-int v0, v6

    .line 403
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    .line 410
    .line 411
    :goto_1
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 412
    .line 413
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 414
    .line 415
    .line 416
    invoke-direct {v1, v2, v5}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_7

    .line 420
    .line 421
    :pswitch_4
    const v0, 0x7f080381

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 425
    .line 426
    .line 427
    const-string v0, "\u66f4\u65b0"

    .line 428
    .line 429
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 430
    .line 431
    .line 432
    iget-object v0, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const v3, 0x7f06002b

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 446
    .line 447
    .line 448
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q4;->l0(Lcom/join/mgps/base/b;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_7

    .line 452
    .line 453
    :cond_5
    const v3, 0x7f080381

    .line 454
    .line 455
    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q4;->l0(Lcom/join/mgps/base/b;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_7

    .line 462
    .line 463
    :cond_7
    const v3, 0x7f080381

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    if-eqz v3, :cond_9

    .line 472
    .line 473
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_9

    .line 478
    .line 479
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info_switch()I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-ne v0, v5, :cond_9

    .line 484
    .line 485
    const/4 v4, 0x1

    .line 486
    :cond_9
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/q4;->k0(Lcom/join/mgps/base/b;Z)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :goto_2
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 492
    .line 493
    .line 494
    const-string v3, "\u7ee7\u7eed"

    .line 495
    .line 496
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 497
    .line 498
    .line 499
    iget-object v3, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 500
    .line 501
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    const v4, 0x7f06002b

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 513
    .line 514
    .line 515
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 516
    .line 517
    .line 518
    move-result-wide v3

    .line 519
    const-wide/16 v16, 0x0

    .line 520
    .line 521
    cmp-long v6, v3, v16

    .line 522
    .line 523
    if-nez v6, :cond_a

    .line 524
    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 531
    .line 532
    .line 533
    move-result-wide v5

    .line 534
    invoke-static {v5, v6, v15}, Lcom/join/mgps/Util/UtilsMy;->d(JLjava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 556
    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 565
    .line 566
    .line 567
    move-result-wide v4

    .line 568
    invoke-static {v4, v5, v15}, Lcom/join/mgps/Util/UtilsMy;->d(JLjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 590
    .line 591
    .line 592
    :goto_3
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Landroid/widget/ProgressBar;

    .line 597
    .line 598
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 599
    .line 600
    .line 601
    move-result-wide v4

    .line 602
    long-to-int v0, v4

    .line 603
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    .line 605
    .line 606
    goto :goto_4

    .line 607
    :catch_1
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 609
    .line 610
    .line 611
    :goto_4
    invoke-virtual {v2, v11, v13}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 612
    .line 613
    .line 614
    const/4 v3, 0x1

    .line 615
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_7

    .line 619
    .line 620
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 621
    .line 622
    .line 623
    const v3, 0x7f080381

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 627
    .line 628
    .line 629
    const-string v3, "\u6682\u505c"

    .line 630
    .line 631
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 632
    .line 633
    .line 634
    iget-object v3, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 635
    .line 636
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    const v4, 0x7f06002b

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 648
    .line 649
    .line 650
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 651
    .line 652
    .line 653
    move-result-wide v3

    .line 654
    const-wide/16 v5, 0x0

    .line 655
    .line 656
    cmp-long v12, v3, v5

    .line 657
    .line 658
    if-nez v12, :cond_c

    .line 659
    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 666
    .line 667
    .line 668
    move-result-wide v4

    .line 669
    invoke-static {v4, v5, v15}, Lcom/join/mgps/Util/UtilsMy;->d(JLjava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 691
    .line 692
    .line 693
    goto :goto_5

    .line 694
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 700
    .line 701
    .line 702
    move-result-wide v4

    .line 703
    invoke-static {v4, v5, v15}, Lcom/join/mgps/Util/UtilsMy;->d(JLjava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    invoke-virtual {v2, v11, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 725
    .line 726
    .line 727
    :goto_5
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    check-cast v3, Landroid/widget/ProgressBar;

    .line 732
    .line 733
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 734
    .line 735
    .line 736
    move-result-wide v4

    .line 737
    long-to-int v0, v4

    .line 738
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 739
    .line 740
    .line 741
    const/4 v3, 0x1

    .line 742
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 743
    .line 744
    .line 745
    goto :goto_7

    .line 746
    :cond_d
    const v0, 0x7f080381

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 750
    .line 751
    .line 752
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 753
    .line 754
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 755
    .line 756
    .line 757
    iget-object v0, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 758
    .line 759
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const v3, 0x7f06002b

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 771
    .line 772
    .line 773
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q4;->l0(Lcom/join/mgps/base/b;)V

    .line 774
    .line 775
    .line 776
    goto :goto_7

    .line 777
    :cond_e
    invoke-virtual {v2, v6, v13}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 778
    .line 779
    .line 780
    const/4 v3, 0x1

    .line 781
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 782
    .line 783
    .line 784
    goto :goto_7

    .line 785
    :goto_6
    invoke-virtual {v2, v6, v3}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 786
    .line 787
    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    invoke-static {v3, v5}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    check-cast v3, Landroid/widget/TextView;

    .line 804
    .line 805
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    invoke-static {v3, v5, v0}, Lcom/join/mgps/Util/UtilsMy;->n3(Landroid/widget/TextView;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 810
    .line 811
    .line 812
    iget-object v0, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 813
    .line 814
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    const v3, 0x7f06002b

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-virtual {v2, v6, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 826
    .line 827
    .line 828
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/q4;->m0(Lcom/join/mgps/base/b;Z)V

    .line 829
    .line 830
    .line 831
    :goto_7
    return-void

    .line 832
    nop

    .line 833
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j0(Lcom/join/mgps/adapter/q4$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q4;->m:Lcom/join/mgps/adapter/q4$f;

    .line 2
    .line 3
    return-void
.end method
