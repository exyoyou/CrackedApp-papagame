.class public Lcom/join/mgps/activity/GameMainNewActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/i2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainNewActivity$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0061
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0x1
    }
.end annotation


# instance fields
.field A:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field E:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private F:Landroid/content/Context;

.field G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private I:Ljava/lang/String;

.field J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;"
        }
    .end annotation
.end field

.field K:Lcom/join/mgps/activity/GameMainNewActivity$g;

.field L:Lcom/join/mgps/rpc/l;

.field private L1:Landroid/os/CountDownTimer;

.field M:Lcom/join/mgps/dto/GameMainV3DataBean;

.field private N:Ljava/lang/String;

.field O:Lcom/wufan/user/service/protobuf/UserInfo;

.field P:Lcom/join/mgps/rpc/e;

.field private Q:Ljava/lang/String;

.field private R:I

.field private final R1:Lcom/join/mgps/socket/fight/arena/b$b;

.field private S:Ljava/lang/String;

.field private T:Lcom/join/mgps/socket/fight/arena/b;

.field private U:Lcom/join/mgps/socket/fight/arena/a;

.field private V:Lcom/join/mgps/adapter/i2;

.field private final V1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DynamicEntranceBean;",
            ">;"
        }
    .end annotation
.end field

.field private X:Lcom/join/mgps/adapter/l3;

.field private Y:Lcom/join/mgps/adapter/n2;

.field Z:Lcom/join/mgps/rpc/f;

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private b1:Landroid/graphics/Bitmap;

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
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

.field private f1:Ljava/lang/String;

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private i1:Z

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private l1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Ljava/lang/String;

.field p1:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field q:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q1:Lcom/join/mgps/rpc/i;

.field r:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r1:I

.field s:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;",
            ">;"
        }
    .end annotation
.end field

.field w:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->I:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Q:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->R:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->S:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->b1:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i1:Z

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 40
    .line 41
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity$d;

    .line 42
    .line 43
    const-wide/16 v3, 0x2710

    .line 44
    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v2, p0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/GameMainNewActivity$d;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;JJ)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->L1:Landroid/os/CountDownTimer;

    .line 53
    .line 54
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity$e;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity$e;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->R1:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity$f;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity$f;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 67
    .line 68
    return-void
.end method

.method private G()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private L()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method private Q()V
    .locals 10

    .line 1
    invoke-static {}, Lt6/d0;->n()Lt6/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Lt6/d0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->G:Ljava/util/List;

    .line 35
    .line 36
    const-string v1, "0\u5206\u949f"

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->G:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->getGamePlayTotalTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    const-wide/16 v6, 0xe10

    .line 80
    .line 81
    div-long v8, v4, v6

    .line 82
    .line 83
    long-to-int v0, v8

    .line 84
    rem-long/2addr v4, v6

    .line 85
    const-wide/16 v6, 0x3c

    .line 86
    .line 87
    div-long v8, v4, v6

    .line 88
    .line 89
    long-to-int v9, v8

    .line 90
    rem-long/2addr v4, v6

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, "\u5c0f\u65f6"

    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_0
    if-eqz v9, :cond_1

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, "\u5206\u949f"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    move-object v1, v2

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->G:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->getGamePlayRecentlyTime()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    const-wide/16 v4, 0x0

    .line 161
    .line 162
    cmp-long v2, v0, v4

    .line 163
    .line 164
    if-lez v2, :cond_3

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->G:Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->getGamePlayRecentlyTime()J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    const-wide/16 v2, 0x3e8

    .line 179
    .line 180
    mul-long v0, v0, v2

    .line 181
    .line 182
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 193
    .line 194
    const-string v1, "\u65e0"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 201
    .line 202
    const/4 v2, 0x4

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 227
    .line 228
    const-string v1, "\u672a\u73a9\u8fc7"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    :goto_1
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private U(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 99
    .line 100
    .line 101
    :cond_0
    return-void
.end method

.method private W(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "-1"

    .line 51
    .line 52
    const-string v3, "0"

    .line 53
    .line 54
    invoke-direct {v1, v3, p1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/r0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private X(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGetData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    if-eqz v1, :cond_9

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V:Lcom/join/mgps/adapter/i2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i2;->b()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v7, 0x5

    .line 35
    const/4 v8, 0x2

    .line 36
    const/16 v9, 0x31

    .line 37
    .line 38
    if-lt v1, v8, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v11, 0x7

    .line 49
    const/16 v12, 0x30

    .line 50
    .line 51
    if-lt v10, v11, :cond_0

    .line 52
    .line 53
    const/4 v10, 0x6

    .line 54
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-ne v11, v9, :cond_1

    .line 63
    .line 64
    const/16 v11, 0x31

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/16 v10, 0x30

    .line 68
    .line 69
    :cond_1
    const/16 v11, 0x30

    .line 70
    .line 71
    :goto_0
    if-eq v9, v1, :cond_4

    .line 72
    .line 73
    if-ne v9, v10, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-ne v12, v1, :cond_3

    .line 77
    .line 78
    if-ne v12, v10, :cond_3

    .line 79
    .line 80
    if-ne v11, v9, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->j:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->j:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->j:Landroid/widget/RelativeLayout;

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/16 v10, 0xc

    .line 104
    .line 105
    if-le v1, v10, :cond_6

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    invoke-virtual {p0, p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->M(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-ne v1, v9, :cond_6

    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 122
    .line 123
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 124
    .line 125
    const-string v11, "\u6392\u4f4d\u8d5b"

    .line 126
    .line 127
    const-string v12, "NEW"

    .line 128
    .line 129
    invoke-direct {v10, v11, v12, v3}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-le v1, v6, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-ne v1, v9, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 148
    .line 149
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 150
    .line 151
    const-string v11, "\u7ec3\u4e60\u6a21\u5f0f"

    .line 152
    .line 153
    invoke-direct {v10, v11, v4, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    const/4 v7, 0x3

    .line 164
    if-lt v1, v6, :cond_8

    .line 165
    .line 166
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ne v1, v9, :cond_8

    .line 171
    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 173
    .line 174
    new-instance v10, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 175
    .line 176
    const-string v11, "\u7ea6\u6218"

    .line 177
    .line 178
    invoke-direct {v10, v11, v4, v8}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-lt v1, v3, :cond_9

    .line 189
    .line 190
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ne v9, v0, :cond_9

    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 197
    .line 198
    new-instance v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 199
    .line 200
    const-string v8, "\u672c\u5730\u5bf9\u6218"

    .line 201
    .line 202
    invoke-direct {v1, v8, v4, v7}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 209
    .line 210
    if-eqz v0, :cond_19

    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_back_ground_img()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_a

    .line 239
    .line 240
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 241
    .line 242
    invoke-virtual {v2, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_area_id()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iput v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r1:I

    .line 250
    .line 251
    if-eqz p1, :cond_d

    .line 252
    .line 253
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->N:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_b

    .line 260
    .line 261
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->N:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity;->E(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_b
    iget p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r1:I

    .line 268
    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->B()V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->y()V

    .line 276
    .line 277
    .line 278
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getMember_info()Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_f

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getPic_remote()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_e

    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getPic_remote()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getTitle()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->m:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getSub_title()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 328
    .line 329
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getMember_fun()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    if-eqz p1, :cond_10

    .line 334
    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-lez v0, :cond_10

    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->X:Lcom/join/mgps/adapter/l3;

    .line 342
    .line 343
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/l3;->c(Ljava/util/List;)V

    .line 344
    .line 345
    .line 346
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_recommend_info()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    if-eqz p1, :cond_11

    .line 353
    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-lez v0, :cond_11

    .line 359
    .line 360
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Y:Lcom/join/mgps/adapter/n2;

    .line 361
    .line 362
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/n2;->b(Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_12

    .line 372
    .line 373
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->d:Landroid/widget/TextView;

    .line 374
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string p1, "\u623f"

    .line 388
    .line 389
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 400
    .line 401
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getPlay_game_info()Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 411
    .line 412
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    if-eqz p1, :cond_18

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getFile_save_count()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getFile_save_switch()I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-ne v1, v3, :cond_13

    .line 436
    .line 437
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 438
    .line 439
    new-instance v2, Lcom/join/mgps/dto/DynamicEntranceBean;

    .line 440
    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    const-string v3, "\u4e91\u5b58\u6863"

    .line 457
    .line 458
    invoke-direct {v2, v3, v0, v6}, Lcom/join/mgps/dto/DynamicEntranceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V:Lcom/join/mgps/adapter/i2;

    .line 465
    .line 466
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getCurrent_play_time()J

    .line 470
    .line 471
    .line 472
    move-result-wide v10

    .line 473
    const-wide/16 v0, 0xe10

    .line 474
    .line 475
    div-long v2, v10, v0

    .line 476
    .line 477
    long-to-int v3, v2

    .line 478
    rem-long v0, v10, v0

    .line 479
    .line 480
    const-wide/16 v7, 0x3c

    .line 481
    .line 482
    div-long v12, v0, v7

    .line 483
    .line 484
    long-to-int v2, v12

    .line 485
    rem-long/2addr v0, v7

    .line 486
    if-eqz v3, :cond_14

    .line 487
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v1, "\u5c0f\u65f6"

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    goto :goto_4

    .line 509
    :cond_14
    move-object v0, v4

    .line 510
    :goto_4
    if-eqz v2, :cond_15

    .line 511
    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v0, "\u5206\u949f"

    .line 524
    .line 525
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    :cond_15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_16

    .line 537
    .line 538
    const-string v0, "0\u5206\u949f"

    .line 539
    .line 540
    :cond_16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 541
    .line 542
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getCurrent_play_time()J

    .line 546
    .line 547
    .line 548
    move-result-wide v0

    .line 549
    const-wide/16 v2, 0x0

    .line 550
    .line 551
    cmp-long v7, v0, v2

    .line 552
    .line 553
    if-lez v7, :cond_17

    .line 554
    .line 555
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getLast_play_time()J

    .line 556
    .line 557
    .line 558
    move-result-wide v0

    .line 559
    const-wide/16 v2, 0x3e8

    .line 560
    .line 561
    mul-long v0, v0, v2

    .line 562
    .line 563
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    new-instance v1, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 568
    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 575
    .line 576
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    iget-object v9, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;->getLast_play_time()J

    .line 593
    .line 594
    .line 595
    move-result-wide v12

    .line 596
    move-object v7, v1

    .line 597
    invoke-direct/range {v7 .. v13}, Lcom/join/mgps/db/tables/PlayGameTimeTable;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 598
    .line 599
    .line 600
    invoke-static {}, Lt6/d0;->n()Lt6/d0;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-virtual {p1, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 608
    .line 609
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .line 611
    .line 612
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 613
    .line 614
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 615
    .line 616
    .line 617
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 618
    .line 619
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 623
    .line 624
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 628
    .line 629
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 630
    .line 631
    .line 632
    goto :goto_5

    .line 633
    :cond_17
    new-instance p1, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 634
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 641
    .line 642
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    iget-object v9, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 657
    .line 658
    const-wide/16 v12, 0x0

    .line 659
    .line 660
    move-object v7, p1

    .line 661
    invoke-direct/range {v7 .. v13}, Lcom/join/mgps/db/tables/PlayGameTimeTable;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 662
    .line 663
    .line 664
    invoke-static {}, Lt6/d0;->n()Lt6/d0;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 672
    .line 673
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 674
    .line 675
    .line 676
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 677
    .line 678
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 679
    .line 680
    .line 681
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 682
    .line 683
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 684
    .line 685
    .line 686
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 687
    .line 688
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 689
    .line 690
    .line 691
    goto :goto_5

    .line 692
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    .line 693
    .line 694
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 695
    .line 696
    .line 697
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroid/widget/TextView;

    .line 698
    .line 699
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 700
    .line 701
    .line 702
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    .line 703
    .line 704
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 705
    .line 706
    .line 707
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    .line 708
    .line 709
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 710
    .line 711
    .line 712
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V:Lcom/join/mgps/adapter/i2;

    .line 713
    .line 714
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 715
    .line 716
    .line 717
    goto :goto_5

    .line 718
    :cond_19
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 719
    .line 720
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 721
    .line 722
    .line 723
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Landroid/widget/RelativeLayout;

    .line 724
    .line 725
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    .line 727
    .line 728
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameMainNewActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameMainNewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/activity/GameMainNewActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/activity/GameMainNewActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->L()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic g(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->L1:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "1"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/t;->X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/activity/DocumentManageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->a(I)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_$r;->b(Ljava/lang/String;)Lcom/join/mgps/activity/DocumentManageActivity_$r;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ApFightActivity_$q;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ApFightActivity_$q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y0(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "onEnterQualifying"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->J()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->b(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->k()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->b:Landroid/view/View;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->L1:Landroid/os/CountDownTimer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->X(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 43
    .line 44
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->J()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const-string v3, "register_type_GameMainActivity"

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-static {v3, v0, v1, v4, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v3}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 108
    .line 109
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->N0(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v0, p0, v1}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->T0(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->A0(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method A()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->N:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->Y(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method B()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q1:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r1:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->Q(I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean;->getPosts()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 81
    .line 82
    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-direct {v4, v2, v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x1

    .line 105
    if-le v1, v2, :cond_3

    .line 106
    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 134
    .line 135
    new-instance v4, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 136
    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getPid()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-direct {v4, v1, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_0
    return-void
.end method

.method public C()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p1:Lcom/join/mgps/pref/PrefDef_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v6, v0

    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move v5, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method D()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q1:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-interface {v2, v4, v3, v0, v1}, Lcom/join/mgps/rpc/i;->g0(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 78
    .line 79
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-direct {v2, v5, v4}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_1

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 112
    .line 113
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 114
    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-direct {v2, v4, v0}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    return-void
.end method

.method E(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pids"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q1:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/i;->t(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/mgps/dto/MulPostData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/MulPostData;->getPosts_list()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-le v0, v1, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 90
    .line 91
    new-instance v2, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-direct {v2, v3, p1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method F()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->L:Lcom/join/mgps/rpc/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/join/mgps/rpc/l;->n()Lcom/join/mgps/dto/GameWorldResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x2bd

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->l()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/List;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->J:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method H(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpl_type",
            "link_type",
            "jump_type",
            "crc_lint_val",
            "link_type_val"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method I(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->J()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const-string v2, "\u786e\u5b9a"

    .line 9
    .line 10
    const/16 v3, 0x101

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x4

    .line 21
    const-string v9, "dialog_error_hint"

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 26
    .line 27
    new-array v1, v8, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v3, v1, v7

    .line 30
    .line 31
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v1, v6

    .line 38
    .line 39
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 40
    .line 41
    aput-object p1, v1, v5

    .line 42
    .line 43
    aput-object v2, v1, v4

    .line 44
    .line 45
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const/16 v1, 0x11

    .line 50
    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 54
    .line 55
    new-array v1, v8, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, v1, v7

    .line 58
    .line 59
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    aput-object p1, v1, v6

    .line 66
    .line 67
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 68
    .line 69
    aput-object p1, v1, v5

    .line 70
    .line 71
    const-string p1, "\u6211\u77e5\u9053\u4e86"

    .line 72
    .line 73
    aput-object p1, v1, v4

    .line 74
    .line 75
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    const/16 v1, 0x9

    .line 80
    .line 81
    if-ne v0, v1, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 84
    .line 85
    new-array v1, v8, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v3, v1, v7

    .line 88
    .line 89
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    aput-object p1, v1, v6

    .line 96
    .line 97
    const-string p1, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1\u4f60\u65e0\u6cd5\u52a0\u5165\u623f\u95f4!"

    .line 98
    .line 99
    aput-object p1, v1, v5

    .line 100
    .line 101
    aput-object v2, v1, v4

    .line 102
    .line 103
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    const/4 v1, 0x7

    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 111
    .line 112
    const/4 v1, 0x6

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    .line 114
    .line 115
    const/16 v3, 0x100

    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    aput-object v3, v1, v7

    .line 122
    .line 123
    iget v3, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    aput-object v3, v1, v6

    .line 130
    .line 131
    const-string v3, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    .line 132
    .line 133
    aput-object v3, v1, v5

    .line 134
    .line 135
    const-string v3, "\u53d6\u6d88"

    .line 136
    .line 137
    aput-object v3, v1, v4

    .line 138
    .line 139
    aput-object v2, v1, v8

    .line 140
    .line 141
    const/4 v2, 0x5

    .line 142
    aput-object p1, v1, v2

    .line 143
    .line 144
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_3
    const/16 v1, 0x8

    .line 149
    .line 150
    if-ne v0, v1, :cond_4

    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 153
    .line 154
    new-array v1, v8, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v3, v1, v7

    .line 157
    .line 158
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    aput-object p1, v1, v6

    .line 165
    .line 166
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    .line 167
    .line 168
    aput-object p1, v1, v5

    .line 169
    .line 170
    aput-object v2, v1, v4

    .line 171
    .line 172
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_4
    const/16 v1, 0xb

    .line 177
    .line 178
    if-ne v0, v1, :cond_5

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 181
    .line 182
    new-array v1, v8, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v3, v1, v7

    .line 185
    .line 186
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aput-object p1, v1, v6

    .line 193
    .line 194
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    .line 195
    .line 196
    aput-object p1, v1, v5

    .line 197
    .line 198
    aput-object v2, v1, v4

    .line 199
    .line 200
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    const/16 v1, 0xd

    .line 205
    .line 206
    if-ne v0, v1, :cond_6

    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 209
    .line 210
    new-array v1, v8, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v3, v1, v7

    .line 213
    .line 214
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 215
    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    aput-object p1, v1, v6

    .line 221
    .line 222
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 223
    .line 224
    aput-object p1, v1, v5

    .line 225
    .line 226
    aput-object v2, v1, v4

    .line 227
    .line 228
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    return-void
.end method

.method J()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->b:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method M(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_1
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v1, v2, :cond_4

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Lcom/join/android/app/common/utils/APKUtils;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    :try_start_4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 71
    .line 72
    const/16 p2, 0x14a

    .line 73
    .line 74
    if-gt p1, p2, :cond_4

    .line 75
    .line 76
    return v0

    .line 77
    :catch_1
    move-exception p1

    .line 78
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :catch_2
    move-exception p1

    .line 83
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    return v0

    .line 87
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x2

    .line 92
    if-ne v1, v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v1, v2, :cond_3

    .line 99
    .line 100
    new-array v1, v0, [Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1, p2, v0, v1}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 106
    return p1

    .line 107
    :cond_3
    return v0

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :catch_4
    :cond_4
    const/4 p1, 0x1

    .line 113
    return p1
.end method

.method N()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v3, 0x1

    .line 71
    if-le v0, v3, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method O()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v3, 0x1

    .line 72
    if-le v0, v3, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v1:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->getSubject()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method P(Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameMaindataImg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getAd_switch()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->B:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getPic_remote()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 51
    .line 52
    sget-object v1, Lcom/facebook/drawee/drawable/s$c;->d:Lcom/facebook/drawee/drawable/s$c;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity$c;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity$c;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;Lcom/join/mgps/dto/GameMainV3DataBean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    return-void
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->K:Lcom/join/mgps/activity/GameMainNewActivity$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->K:Lcom/join/mgps/activity/GameMainNewActivity$g;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity$g;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 19
    .line 20
    const v2, 0x7f13017f

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/GameMainNewActivity$g;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->K:Lcom/join/mgps/activity/GameMainNewActivity$g;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method T()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getMember_info()Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getMember_info()Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "http"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "?"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "&game_id="

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "?game_id="

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->setLink_type_val(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getJump_type()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    return-void
.end method

.method V()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "0"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_package()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_plugin_num()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_bespeak_switch()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_is_started()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_comment_score_switch()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method Y(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "isGetData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->c:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/GameMainNewActivity;->X(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method j()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->P:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->L:Lcom/join/mgps/rpc/l;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q1:Lcom/join/mgps/rpc/i;

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Z:Lcom/join/mgps/rpc/f;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->c:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/i2;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->W:Ljava/util/List;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1, p0}, Lcom/join/mgps/adapter/i2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/i2$a;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V:Lcom/join/mgps/adapter/i2;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->t:Landroid/widget/GridView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->t:Landroid/widget/GridView;

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const v1, 0x7f071658

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    float-to-int v0, v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const v2, 0x7f071543

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    float-to-int v1, v1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const v3, 0x7f07138a

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    float-to-int v2, v2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const v4, 0x7f0713dc

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    float-to-int v3, v3

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    .line 149
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    .line 151
    int-to-float v4, v4

    .line 152
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    int-to-float v6, v5

    .line 161
    div-float/2addr v4, v6

    .line 162
    const v6, 0x3fe38e39

    .line 163
    .line 164
    .line 165
    const/4 v7, 0x1

    .line 166
    const/4 v8, -0x1

    .line 167
    cmpl-float v4, v4, v6

    .line 168
    .line 169
    if-lez v4, :cond_1

    .line 170
    .line 171
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    .line 173
    invoke-direct {v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .line 175
    .line 176
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 177
    .line 178
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->x:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    .line 184
    .line 185
    sub-int/2addr v5, v3

    .line 186
    mul-int v0, v0, v5

    .line 187
    .line 188
    div-int/2addr v0, v1

    .line 189
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .line 191
    invoke-direct {v1, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 195
    .line 196
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 197
    .line 198
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Lcom/join/mgps/adapter/n2;

    .line 219
    .line 220
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/n2;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Y:Lcom/join/mgps/adapter/n2;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/join/mgps/adapter/l3;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/l3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->X:Lcom/join/mgps/adapter/l3;

    .line 238
    .line 239
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 240
    .line 241
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 242
    .line 243
    const/4 v2, 0x4

    .line 244
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->X:Lcom/join/mgps/adapter/l3;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->A()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->z()V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    .line 266
    .line 267
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity$a;

    .line 268
    .line 269
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainNewActivity$a;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;)V

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 276
    .line 277
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    sget-object v3, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    .line 282
    .line 283
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v6, p0, Lcom/join/mgps/activity/GameMainNewActivity;->E:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v7, 0x0

    .line 296
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->Z0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method l()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u767b\u5f55\u5df2\u5931\u6548\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->K()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method m()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method n()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method o()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->U(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->W(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->U:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->z0(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 62
    .line 63
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->J()V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->R1:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3, p0}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->d(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i1:Z

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    new-instance v0, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity$b;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainNewActivity$b;-><init>(Lcom/join/mgps/activity/GameMainNewActivity;)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v2, 0x5dc

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Y:Lcom/join/mgps/adapter/n2;

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/adapter/n2;->c()V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void
.end method

.method public onRootView(Lcom/join/mgps/dto/DynamicEntranceBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTypeId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->x()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->q()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->s()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->w()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->u()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->V1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->T:Lcom/join/mgps/socket/fight/arena/b;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method p()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->U(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameMainNewActivity;->W(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method r()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->R(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "game_main"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/t;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->L0(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    nop

    .line 58
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/4 v5, 0x7

    .line 113
    const/16 v6, 0x31

    .line 114
    .line 115
    const/16 v7, 0x30

    .line 116
    .line 117
    if-lt v4, v5, :cond_2

    .line 118
    .line 119
    const/4 v4, 0x6

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/4 v5, 0x5

    .line 125
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ne v1, v6, :cond_1

    .line 130
    .line 131
    const/16 v1, 0x31

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const/16 v1, 0x30

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    const/16 v1, 0x30

    .line 138
    .line 139
    const/16 v4, 0x30

    .line 140
    .line 141
    :goto_1
    if-ne v7, v3, :cond_3

    .line 142
    .line 143
    if-ne v7, v4, :cond_3

    .line 144
    .line 145
    if-ne v1, v6, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->F()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method t()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r1:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r1:I

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->V()V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method v()V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v6, 0x7

    .line 44
    if-lt v4, v6, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x6

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v4, 0x31

    .line 52
    .line 53
    if-ne v4, v3, :cond_1

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 58
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainNewActivity;->M:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    move v12, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v12, 0x0

    .line 79
    :goto_1
    if-ne v0, v5, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Q:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget v10, p0, Lcom/join/mgps/activity/GameMainNewActivity;->R:I

    .line 90
    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    iget-object v6, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 96
    .line 97
    const/4 v8, 0x1

    .line 98
    iget-object v9, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Q:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v11, p0, Lcom/join/mgps/activity/GameMainNewActivity;->S:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static/range {v6 .. v12}, Lcom/join/mgps/Util/UtilsMy;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/4 v4, 0x2

    .line 115
    if-ne v0, v4, :cond_6

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Q:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    iget v10, p0, Lcom/join/mgps/activity/GameMainNewActivity;->R:I

    .line 128
    .line 129
    if-eqz v10, :cond_5

    .line 130
    .line 131
    iget-object v6, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 134
    .line 135
    const/4 v8, 0x1

    .line 136
    iget-object v9, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Q:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v11, p0, Lcom/join/mgps/activity/GameMainNewActivity;->S:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static/range {v6 .. v12}, Lcom/join/mgps/Util/UtilsMy;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 147
    .line 148
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 155
    .line 156
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 161
    .line 162
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->H:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->I0(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method y()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->F:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->C()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->Z:Lcom/join/mgps/rpc/f;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->a(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/CommentAllListBean;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l1:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->N()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method z()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->O:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameMainData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->P:Lcom/join/mgps/rpc/e;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->p(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-boolean v3, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i1:Z

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v1, v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainNewActivity;->P(Lcom/join/mgps/dto/GameMainV3DataBean;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMaingameinfo;->getCommunity_multi_posts_id()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->N:Ljava/lang/String;

    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV3DataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-class v6, Lcom/join/mgps/dto/GameMainDataBean;

    .line 94
    .line 95
    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lcom/join/mgps/dto/GameMainDataBean;

    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-virtual {v2, v4, v5}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, v1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    new-instance v1, Lcom/join/mgps/db/tables/GameMainTable;

    .line 143
    .line 144
    invoke-direct {v1}, Lcom/join/mgps/db/tables/GameMainTable;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2, v1}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/GameMainNewActivity;->Y(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_2
    return-void
.end method
