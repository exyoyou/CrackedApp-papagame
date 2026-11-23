.class public Lcom/join/mgps/adapter/d0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/d0$o;,
        Lcom/join/mgps/adapter/d0$p;,
        Lcom/join/mgps/adapter/d0$n;
    }
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
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

.field private m:Lcom/join/mgps/dto/LoadWarCenterBean;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->b:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->f:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 76
    .line 77
    new-instance v0, Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/join/mgps/dto/LoadWarCenterBean;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/join/mgps/adapter/d0;->n:I

    .line 86
    .line 87
    iput v0, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 88
    .line 89
    iput v0, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 90
    .line 91
    iput v0, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 92
    .line 93
    iput v0, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 94
    .line 95
    iput v0, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 96
    .line 97
    iput v0, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 98
    .line 99
    iput v0, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 106
    .line 107
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/d0;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/d0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/d0;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "down_status"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x2b

    .line 22
    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x2b

    .line 26
    .line 27
    :cond_1
    const/4 v1, 0x5

    .line 28
    if-eqz v0, :cond_8

    .line 29
    .line 30
    if-eq v0, v2, :cond_8

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v0, v2, :cond_7

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v0, v3, :cond_6

    .line 37
    .line 38
    if-eq v0, v1, :cond_5

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    if-eq v0, v3, :cond_6

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    if-eq v0, v3, :cond_8

    .line 45
    .line 46
    packed-switch v0, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    if-eq p2, v0, :cond_3

    .line 66
    .line 67
    if-eq p2, v2, :cond_2

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_7
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-lez v0, :cond_9

    .line 191
    .line 192
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_a
    if-ne p2, v1, :cond_b

    .line 212
    .line 213
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 214
    .line 215
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_b
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-static {p2, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 234
    .line 235
    .line 236
    :goto_1
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private e(IILjava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "titlePos",
            "fightSubGameInfoDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    sub-int/2addr p1, p2

    .line 9
    mul-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    :try_start_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    const-string v1, "Left"

    .line 44
    .line 45
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ge p2, v1, :cond_1

    .line 55
    .line 56
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    const-string v1, "Mid"

    .line 89
    .line 90
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_1
    add-int/lit8 p1, p1, 0x2

    .line 94
    .line 95
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-ge p1, p2, :cond_2

    .line 100
    .line 101
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_2

    .line 118
    .line 119
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    const-string p2, "Right"

    .line 134
    .line 135
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_0
    return-object v0
.end method

.method private g(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "down_status"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x2b

    .line 22
    .line 23
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :pswitch_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-eq p2, v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq p2, v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_8

    .line 93
    .line 94
    new-instance p2, Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    const/4 p2, 0x3

    .line 124
    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_5
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 133
    .line 134
    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-lez v0, :cond_5

    .line 151
    .line 152
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_6
    const/4 v0, 0x5

    .line 172
    if-ne p2, v0, :cond_7

    .line 173
    .line 174
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_7
    iget-object p2, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {p2, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 195
    .line 196
    .line 197
    :cond_8
    :goto_0
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public f()Lcom/join/mgps/dto/LoadWarCenterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/d0;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_5

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v3, v2

    .line 20
    div-int/lit8 v3, v3, 0x3

    .line 21
    .line 22
    add-int/2addr v0, v3

    .line 23
    if-gt p1, v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v3, v2

    .line 45
    div-int/lit8 v3, v3, 0x3

    .line 46
    .line 47
    add-int/2addr v0, v3

    .line 48
    if-gt p1, v0, :cond_1

    .line 49
    .line 50
    iget v0, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 53
    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_1
    iget v0, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v2

    .line 70
    div-int/lit8 v3, v3, 0x3

    .line 71
    .line 72
    add-int/2addr v0, v3

    .line 73
    if-gt p1, v0, :cond_2

    .line 74
    .line 75
    iget v0, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 78
    .line 79
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_2
    iget v0, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 85
    .line 86
    if-lez v0, :cond_3

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    add-int/2addr v3, v2

    .line 95
    div-int/lit8 v3, v3, 0x3

    .line 96
    .line 97
    add-int/2addr v0, v3

    .line 98
    if-gt p1, v0, :cond_3

    .line 99
    .line 100
    iget v0, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 103
    .line 104
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_3
    iget v0, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 110
    .line 111
    if-lez v0, :cond_4

    .line 112
    .line 113
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-int/2addr v3, v2

    .line 120
    div-int/lit8 v3, v3, 0x3

    .line 121
    .line 122
    add-int/2addr v0, v3

    .line 123
    if-gt p1, v0, :cond_4

    .line 124
    .line 125
    iget v0, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 128
    .line 129
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_4
    iget v0, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 135
    .line 136
    if-lez v0, :cond_5

    .line 137
    .line 138
    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    add-int/2addr v3, v2

    .line 145
    div-int/lit8 v3, v3, 0x3

    .line 146
    .line 147
    add-int/2addr v0, v3

    .line 148
    if-gt p1, v0, :cond_5

    .line 149
    .line 150
    iget v0, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 153
    .line 154
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/d0;->e(IILjava/util/List;)Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :cond_5
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
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
    iget v0, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 22
    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x2

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";total="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/adapter/d0;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/d0;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_3

    const v3, 0x7f0a0614

    const v4, 0x7f0a0611

    const v5, 0x7f0a060f

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v2, :cond_0

    move-object v3, v1

    move-object v6, v3

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v6, Lcom/join/mgps/adapter/d0$n;

    invoke-direct {v6, p0}, Lcom/join/mgps/adapter/d0$n;-><init>(Lcom/join/mgps/adapter/d0;)V

    .line 4
    iget-object v7, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d0268

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v7, 0x7f0a0612

    .line 5
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/d0$n;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0613

    .line 6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/d0$n;->b:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->c:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0a0610

    .line 9
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0a162e

    .line 11
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->g:Landroid/widget/ImageView;

    const v3, 0x7f0a162f

    .line 12
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->h:Landroid/widget/ImageView;

    const v3, 0x7f0a1630

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->i:Landroid/widget/ImageView;

    const v3, 0x7f0a1672    # 1.8355E38f

    .line 14
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->j:Landroid/widget/ImageView;

    const v3, 0x7f0a1673

    .line 15
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->k:Landroid/widget/ImageView;

    const v3, 0x7f0a1674

    .line 16
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->l:Landroid/widget/ImageView;

    const v3, 0x7f0a0519

    .line 17
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->m:Landroid/widget/LinearLayout;

    const v3, 0x7f0a051a

    .line 18
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->n:Landroid/widget/LinearLayout;

    const v3, 0x7f0a051b

    .line 19
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->o:Landroid/widget/LinearLayout;

    const v3, 0x7f0a162b

    .line 20
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v3, 0x7f0a162c

    .line 21
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v3, 0x7f0a162d

    .line 22
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v3, 0x7f0a00fa

    .line 23
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    const v3, 0x7f0a00fb

    .line 24
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    const v3, 0x7f0a00fc

    .line 25
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    const v3, 0x7f0a15e0

    .line 26
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    const v3, 0x7f0a15e1

    .line 27
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    const v3, 0x7f0a15e2

    .line 28
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    const v3, 0x7f0a0618

    .line 29
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->E:Landroid/widget/TextView;

    const v3, 0x7f0a0619

    .line 30
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->F:Landroid/widget/TextView;

    const v3, 0x7f0a0617

    .line 31
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->G:Landroid/widget/TextView;

    const v3, 0x7f0a12a6

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a7

    .line 33
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a8

    .line 34
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a1

    .line 35
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a2

    .line 36
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a3

    .line 37
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    .line 38
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    goto/16 :goto_0

    .line 39
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/d0$p;

    invoke-direct {v3, p0}, Lcom/join/mgps/adapter/d0$p;-><init>(Lcom/join/mgps/adapter/d0;)V

    .line 40
    iget-object v4, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d026b

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f0a061f

    .line 41
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    const v4, 0x7f0a061d

    .line 42
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    const v4, 0x7f0a0e7a

    .line 43
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_0

    .line 45
    :cond_2
    new-instance v6, Lcom/join/mgps/adapter/d0$o;

    invoke-direct {v6, p0}, Lcom/join/mgps/adapter/d0$o;-><init>(Lcom/join/mgps/adapter/d0;)V

    .line 46
    iget-object v7, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d0269

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v6, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v6, Lcom/join/mgps/adapter/d0$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0a060c

    .line 49
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lcom/join/mgps/adapter/d0$o;->c:Landroid/widget/ImageView;

    const v4, 0x7f0a060d

    .line 50
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lcom/join/mgps/adapter/d0$o;->d:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/d0$o;->e:Landroid/widget/RelativeLayout;

    .line 52
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v6

    move-object v6, v1

    :goto_0
    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_6

    if-eq p3, v0, :cond_5

    if-eq p3, v2, :cond_4

    move-object v3, v1

    move-object v4, v3

    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/d0$n;

    move-object v4, v1

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/d0$p;

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_1

    .line 55
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/d0$o;

    move-object v4, v3

    move-object v3, v1

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p3, :cond_15

    if-eq p3, v0, :cond_d

    if-eq p3, v2, :cond_7

    goto/16 :goto_7

    .line 56
    :cond_7
    iget p3, p0, Lcom/join/mgps/adapter/d0;->o:I

    if-lez p3, :cond_8

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_8

    .line 57
    iget p3, p0, Lcom/join/mgps/adapter/d0;->o:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    .line 58
    :cond_8
    iget p3, p0, Lcom/join/mgps/adapter/d0;->p:I

    if-lez p3, :cond_9

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_9

    .line 59
    iget p3, p0, Lcom/join/mgps/adapter/d0;->p:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    .line 60
    :cond_9
    iget p3, p0, Lcom/join/mgps/adapter/d0;->q:I

    if-lez p3, :cond_a

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_a

    .line 61
    iget p3, p0, Lcom/join/mgps/adapter/d0;->q:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    .line 62
    :cond_a
    iget p3, p0, Lcom/join/mgps/adapter/d0;->r:I

    if-lez p3, :cond_b

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_b

    .line 63
    iget p3, p0, Lcom/join/mgps/adapter/d0;->r:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    .line 64
    :cond_b
    iget p3, p0, Lcom/join/mgps/adapter/d0;->s:I

    if-lez p3, :cond_c

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_c

    .line 65
    iget p3, p0, Lcom/join/mgps/adapter/d0;->s:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    .line 66
    :cond_c
    iget p3, p0, Lcom/join/mgps/adapter/d0;->t:I

    if-lez p3, :cond_1e

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_1e

    .line 67
    iget p3, p0, Lcom/join/mgps/adapter/d0;->t:I

    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V

    goto/16 :goto_7

    .line 68
    :cond_d
    iget p3, p0, Lcom/join/mgps/adapter/d0;->o:I

    if-ne p3, p1, :cond_e

    .line 69
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 71
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 73
    :cond_e
    iget v0, p0, Lcom/join/mgps/adapter/d0;->p:I

    if-ne v0, p1, :cond_f

    .line 74
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 76
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 78
    :cond_f
    iget v2, p0, Lcom/join/mgps/adapter/d0;->q:I

    if-ne v2, p1, :cond_10

    .line 79
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 81
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 83
    :cond_10
    iget v3, p0, Lcom/join/mgps/adapter/d0;->r:I

    if-ne v3, p1, :cond_11

    .line 84
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 86
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 88
    :cond_11
    iget v4, p0, Lcom/join/mgps/adapter/d0;->s:I

    if-ne v4, p1, :cond_12

    .line 89
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 91
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 93
    :cond_12
    iget v7, p0, Lcom/join/mgps/adapter/d0;->t:I

    if-ne v7, p1, :cond_13

    .line 94
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 96
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_13
    if-eqz p3, :cond_14

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    if-nez v7, :cond_1e

    .line 98
    :cond_14
    iget-object p1, v1, Lcom/join/mgps/adapter/d0$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 99
    :cond_15
    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    if-eqz p3, :cond_1e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1e

    .line 100
    iget-object p3, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/FightMainTable;

    .line 101
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f080caf

    if-eqz v1, :cond_16

    .line 102
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v7

    invoke-static {v1, v2, v3, v7}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_2

    .line 103
    :cond_16
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_2
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v0, :cond_19

    .line 105
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 106
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_17

    .line 107
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v3, :cond_17

    .line 108
    iget-object v7, v4, Lcom/join/mgps/adapter/d0$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 109
    :cond_17
    iget-object v7, v4, Lcom/join/mgps/adapter/d0$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_3
    invoke-static {v1, p3}, Lcom/join/mgps/Util/UtilsMy;->w1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    .line 111
    iget-object v7, v4, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v8, Lcom/join/mgps/adapter/d0$e;

    invoke-direct {v8, p0, v1, p3}, Lcom/join/mgps/adapter/d0$e;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 112
    :cond_18
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 113
    :cond_19
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v7, Lcom/join/mgps/adapter/d0$f;

    invoke-direct {v7, p0, p3}, Lcom/join/mgps/adapter/d0$f;-><init>(Lcom/join/mgps/adapter/d0;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    add-int/2addr p1, v0

    .line 114
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1d

    .line 115
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/FightMainTable;

    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_5

    .line 120
    :cond_1a
    iget-object v1, v4, Lcom/join/mgps/adapter/d0$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, p0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v1

    if-ne v1, v0, :cond_1c

    .line 122
    iget-object v0, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1b

    .line 123
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_1b

    .line 124
    iget-object v0, v4, Lcom/join/mgps/adapter/d0$o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 125
    :cond_1b
    iget-object v0, v4, Lcom/join/mgps/adapter/d0$o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :goto_6
    invoke-static {p1, p3}, Lcom/join/mgps/Util/UtilsMy;->w1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    .line 127
    iget-object v0, v4, Lcom/join/mgps/adapter/d0$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/d0$g;

    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/adapter/d0$g;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 128
    :cond_1c
    iget-object p3, v4, Lcom/join/mgps/adapter/d0$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/d0$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/d0$h;-><init>(Lcom/join/mgps/adapter/d0;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 129
    :cond_1d
    iget-object p1, v4, Lcom/join/mgps/adapter/d0$o;->e:Landroid/widget/RelativeLayout;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    :goto_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public h(Lcom/join/mgps/dto/LoadWarCenterBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadWarCenterBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getDownloadTasksMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getFightMainTables()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getWaradInfoDataBeans()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->f:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getHotGameInfoDataBeans()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkGameInfoDataBeans()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkPassInfoDataBeans()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkMatchingInfoDataBeans()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkLocalInfoDataBeans()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/adapter/d0;->m:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkRoomInfoDataBeans()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    const/4 v1, 0x7

    .line 78
    if-ge v0, v1, :cond_7

    .line 79
    .line 80
    packed-switch v0, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :pswitch_0
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lez v1, :cond_0

    .line 94
    .line 95
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->l:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    add-int/lit8 v2, v2, 0x2

    .line 106
    .line 107
    div-int/lit8 v2, v2, 0x3

    .line 108
    .line 109
    add-int/2addr v1, v2

    .line 110
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_0
    iput p1, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 119
    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-lez v1, :cond_1

    .line 127
    .line 128
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->k:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    add-int/lit8 v2, v2, 0x2

    .line 139
    .line 140
    div-int/lit8 v2, v2, 0x3

    .line 141
    .line 142
    add-int/2addr v1, v2

    .line 143
    iput v1, p0, Lcom/join/mgps/adapter/d0;->t:I

    .line 144
    .line 145
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_1
    iput p1, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :pswitch_2
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 154
    .line 155
    if-eqz v1, :cond_2

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-lez v1, :cond_2

    .line 162
    .line 163
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->j:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    add-int/lit8 v2, v2, 0x2

    .line 174
    .line 175
    div-int/lit8 v2, v2, 0x3

    .line 176
    .line 177
    add-int/2addr v1, v2

    .line 178
    iput v1, p0, Lcom/join/mgps/adapter/d0;->s:I

    .line 179
    .line 180
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_2
    iput p1, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 189
    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-lez v1, :cond_3

    .line 197
    .line 198
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 199
    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    .line 202
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->i:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    add-int/lit8 v2, v2, 0x2

    .line 209
    .line 210
    div-int/lit8 v2, v2, 0x3

    .line 211
    .line 212
    add-int/2addr v1, v2

    .line 213
    iput v1, p0, Lcom/join/mgps/adapter/d0;->r:I

    .line 214
    .line 215
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_3
    iput p1, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_4
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 222
    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-lez v1, :cond_4

    .line 230
    .line 231
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 232
    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->h:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    add-int/lit8 v2, v2, 0x2

    .line 242
    .line 243
    div-int/lit8 v2, v2, 0x3

    .line 244
    .line 245
    add-int/2addr v1, v2

    .line 246
    iput v1, p0, Lcom/join/mgps/adapter/d0;->q:I

    .line 247
    .line 248
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_4
    iput p1, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :pswitch_5
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 255
    .line 256
    if-eqz v1, :cond_5

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-lez v1, :cond_5

    .line 263
    .line 264
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->g:Ljava/util/List;

    .line 269
    .line 270
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    add-int/lit8 v2, v2, 0x2

    .line 275
    .line 276
    div-int/lit8 v2, v2, 0x3

    .line 277
    .line 278
    add-int/2addr v1, v2

    .line 279
    iput v1, p0, Lcom/join/mgps/adapter/d0;->p:I

    .line 280
    .line 281
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_5
    iput p1, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :pswitch_6
    iget-object v1, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    .line 288
    .line 289
    if-eqz v1, :cond_6

    .line 290
    .line 291
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-lez v1, :cond_6

    .line 296
    .line 297
    iget v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 298
    .line 299
    iget-object v2, p0, Lcom/join/mgps/adapter/d0;->e:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 306
    .line 307
    div-int/lit8 v2, v2, 0x2

    .line 308
    .line 309
    add-int/2addr v1, v2

    .line 310
    iput v1, p0, Lcom/join/mgps/adapter/d0;->o:I

    .line 311
    .line 312
    iput v1, p0, Lcom/join/mgps/adapter/d0;->n:I

    .line 313
    .line 314
    iput v1, p0, Lcom/join/mgps/adapter/d0;->u:I

    .line 315
    .line 316
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    nop

    .line 325
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

.method i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "titlePos",
            "fightSubGameInfoDataBeans",
            "viewHolderFight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Lcom/join/mgps/adapter/d0$n;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    add-int/lit8 v4, p2, 0x1

    if-ge v1, v4, :cond_0

    return-void

    :cond_0
    sub-int/2addr v1, v4

    const/4 v4, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 2
    iget-object v6, v0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\u66f4\u65b0"

    const-string v9, "\u7ee7\u7eed"

    const-string v10, "/S"

    const-string v11, "\u6682\u505c"

    const-string v8, "\u6682\u505c\u4e2d"

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    const v12, 0x7f080caf

    const-string v4, "/"

    if-eqz v6, :cond_c

    .line 3
    iget-object v6, v0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v6, :cond_c

    .line 4
    invoke-static {v6, v5}, Lcom/join/mgps/Util/UtilsMy;->x1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    .line 5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 6
    iget-object v15, v3, Lcom/join/mgps/adapter/d0$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v14}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v14

    invoke-static {v15, v12, v13, v14}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    invoke-static {v13, v12, v14, v15}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 8
    :goto_0
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->E:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_2

    .line 10
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->m:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->j:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->a:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/join/mgps/adapter/d0$i;

    invoke-direct {v14, v0, v6, v5}, Lcom/join/mgps/adapter/d0$i;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    const/4 v14, 0x7

    if-eq v13, v14, :cond_b

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_1

    .line 15
    :cond_3
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->m:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->j:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    new-instance v14, Lcom/join/mgps/adapter/d0$k;

    invoke-direct {v14, v0, v6, v5}, Lcom/join/mgps/adapter/d0$k;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    mul-double v13, v13, v16

    mul-double v13, v13, v16

    double-to-long v13, v13

    .line 20
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v15

    const/4 v12, 0x2

    if-eq v15, v12, :cond_a

    const/4 v12, 0x3

    if-eq v15, v12, :cond_9

    const/4 v12, 0x6

    if-eq v15, v12, :cond_9

    const/16 v12, 0x1b

    if-eq v15, v12, :cond_8

    const/16 v12, 0x9

    if-eq v15, v12, :cond_7

    const/16 v12, 0xa

    if-eq v15, v12, :cond_6

    const/16 v12, 0xc

    if-eq v15, v12, :cond_5

    const/16 v12, 0xd

    if-eq v15, v12, :cond_4

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-object v12, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v15, 0x7f080585

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    iget-object v12, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const-string v15, "\u89e3\u538b"

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v12, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    const-string v12, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 28
    :cond_5
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v12, 0x7f080596

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const-string v12, "\u89e3\u538b\u4e2d"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    const-string v12, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 35
    :cond_6
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v12, 0x7f080585

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 36
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const-string v12, "\u7b49\u5f85"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    const-string v12, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v13

    long-to-int v6, v13

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_7
    const/16 v12, 0x8

    .line 42
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v6, 0x7f080593

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 48
    :cond_8
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 49
    :cond_9
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v12, 0x7f080585

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 56
    :cond_a
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    const v12, 0x7f080585

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->v:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v13

    long-to-int v6, v13

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v12, 0x8

    .line 63
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->a:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/join/mgps/adapter/d0$j;

    invoke-direct {v12, v0, v6, v5}, Lcom/join/mgps/adapter/d0$j;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .line 67
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_18

    .line 68
    iget-object v6, v3, Lcom/join/mgps/adapter/d0$n;->b:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, p3

    .line 69
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 70
    iget-object v12, v0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v12, :cond_19

    .line 71
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 72
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    const v6, 0x7f080caf

    invoke-static {v13, v6, v14, v15}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_3

    :cond_d
    const v6, 0x7f080caf

    .line 73
    iget-object v13, v3, Lcom/join/mgps/adapter/d0$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    invoke-static {v13, v6, v14, v15}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 74
    :goto_3
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    mul-double v13, v13, v16

    mul-double v13, v13, v16

    double-to-long v13, v13

    .line 75
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->F:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_e

    .line 77
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->n:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->k:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->b:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/d0$l;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/d0$l;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 81
    :cond_e
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x7

    if-eq v2, v6, :cond_17

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_4

    .line 82
    :cond_f
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->n:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->k:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/d0$a;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/d0$a;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_16

    const/4 v6, 0x3

    if-eq v2, v6, :cond_15

    const/4 v6, 0x6

    if-eq v2, v6, :cond_15

    const/16 v6, 0x1b

    if-eq v2, v6, :cond_14

    const/16 v6, 0x9

    if-eq v2, v6, :cond_13

    const/16 v6, 0xa

    if-eq v2, v6, :cond_12

    const/16 v6, 0xc

    if-eq v2, v6, :cond_11

    const/16 v6, 0xd

    if-eq v2, v6, :cond_10

    goto/16 :goto_5

    .line 87
    :cond_10
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080585

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 94
    :cond_11
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080596

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 101
    :cond_12
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080585

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-virtual {v2, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    :cond_13
    const/16 v6, 0x8

    .line 108
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v12, 0x7f080593

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 114
    :cond_14
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 115
    :cond_15
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080585

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 122
    :cond_16
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080585

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->w:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-virtual {v2, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    :cond_17
    :goto_4
    const/16 v6, 0x8

    .line 129
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->b:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/d0$m;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/d0$m;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 133
    :cond_18
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->b:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_5
    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 134
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 135
    iget-object v2, v3, Lcom/join/mgps/adapter/d0$n;->c:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v2, p3

    .line 136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 137
    iget-object v2, v0, Lcom/join/mgps/adapter/d0;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_26

    .line 138
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 139
    iget-object v6, v3, Lcom/join/mgps/adapter/d0$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v13

    const v14, 0x7f080caf

    invoke-static {v6, v14, v12, v13}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_6

    :cond_1a
    const v14, 0x7f080caf

    .line 140
    iget-object v6, v3, Lcom/join/mgps/adapter/d0$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/join/mgps/adapter/d0;->c:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v13

    invoke-static {v6, v14, v12, v13}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 141
    :goto_6
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    mul-double v12, v12, v16

    mul-double v12, v12, v16

    double-to-long v12, v12

    .line 142
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->G:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_1b

    .line 144
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->o:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->l:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d0$b;

    invoke-direct {v3, v0, v2, v5}, Lcom/join/mgps/adapter/d0$b;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 148
    :cond_1b
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v6, 0x7

    if-eq v1, v6, :cond_24

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_7

    .line 149
    :cond_1c
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->o:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->l:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/d0$d;

    invoke-direct {v6, v0, v2, v5}, Lcom/join/mgps/adapter/d0$d;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_23

    const/4 v5, 0x3

    if-eq v1, v5, :cond_22

    const/4 v5, 0x6

    if-eq v1, v5, :cond_22

    const/16 v5, 0x1b

    if-eq v1, v5, :cond_21

    const/16 v5, 0x9

    if-eq v1, v5, :cond_20

    const/16 v5, 0xa

    if-eq v1, v5, :cond_1f

    const/16 v5, 0xc

    if-eq v1, v5, :cond_1e

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1d

    goto/16 :goto_8

    .line 154
    :cond_1d
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080585

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 161
    :cond_1e
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080596

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b\u4e2d"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 168
    :cond_1f
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080585

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const-string v5, "\u7b49\u5f85"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    :cond_20
    const/16 v4, 0x8

    .line 175
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v2, 0x7f080593

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 181
    :cond_21
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 182
    :cond_22
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080585

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 189
    :cond_23
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080585

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->x:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8

    :cond_24
    :goto_7
    const/16 v4, 0x8

    .line 196
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d0$c;

    invoke-direct {v3, v0, v2, v5}, Lcom/join/mgps/adapter/d0$c;-><init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 200
    :cond_25
    iget-object v1, v3, Lcom/join/mgps/adapter/d0$n;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    :goto_8
    return-void
.end method
