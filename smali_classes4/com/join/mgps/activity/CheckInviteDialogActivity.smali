.class public Lcom/join/mgps/activity/CheckInviteDialogActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d077c
.end annotation


# static fields
.field public static final NO_PLUG:I = 0x2

.field public static final NO_ROM:I = 0x1

.field public static final NO_ROM_PLUG:I

.field public static arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

.field public static copyData:Ljava/lang/String;

.field public static fightId:Ljava/lang/String;

.field public static no:Ljava/lang/String;

.field public static password:Ljava/lang/String;


# instance fields
.field check:Ljava/lang/Runnable;

.field data:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

.field dialog_button_cancle:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_button_ok:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_content_2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gameId:Ljava/lang/Long;

.field private gameName:Ljava/lang/String;

.field game_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private hasPlug:Z

.field private hasRom:Z

.field loading_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field login:Ljava/lang/Runnable;

.field private mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

.field mDialog:Lcom/join/mgps/customview/t;

.field private mHintDialog:Lcom/join/mgps/dialog/d1;

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field private plugImg:Ljava/lang/String;

.field plugImgIv:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private plugName:Ljava/lang/String;

.field plugNameTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field plugSizeTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field plug_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private plugize:Ljava/lang/String;

.field recommendClient:Lcom/join/mgps/rpc/e;

.field private romImg:Ljava/lang/String;

.field romImgIv:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private romName:Ljava/lang/String;

.field romNameTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private romSize:Ljava/lang/String;

.field romSizeTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rom_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private roomId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$a;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->login:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->check:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 34
    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private handleServiceConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handleShare()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 18
    .line 19
    const-string v1, "register_type_share_join_room"

    .line 20
    .line 21
    invoke-static {v1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private isActivityFinished()Z
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

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    return v1
.end method


# virtual methods
.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    const-string v0, "\uffe5"

    .line 2
    .line 3
    const-string v1, "#"

    .line 4
    .line 5
    const-string v2, "&"

    .line 6
    .line 7
    const-string v3, "$"

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 20
    .line 21
    sput-object v4, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 22
    .line 23
    :try_start_0
    const-string v5, "\u3010"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 32
    .line 33
    const-string v7, "\u3011"

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 46
    .line 47
    const/16 v5, 0x263a

    .line 48
    .line 49
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->emoji(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->emoji(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->userName:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-gez v3, :cond_0

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x3

    .line 98
    .line 99
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iput v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->roomId:I

    .line 112
    .line 113
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-lez v3, :cond_1

    .line 126
    .line 127
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x4

    .line 130
    .line 131
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sput-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->password:Ljava/lang/String;

    .line 136
    .line 137
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-gez v1, :cond_2

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x3

    .line 157
    .line 158
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 187
    .line 188
    new-instance v0, Lcom/join/mgps/dto/ArenaInviteBean;

    .line 189
    .line 190
    invoke-direct {v0}, Lcom/join/mgps/dto/ArenaInviteBean;-><init>()V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setGameId(Ljava/lang/Long;)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 201
    .line 202
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setGroupId(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 208
    .line 209
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->no:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setNo(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 215
    .line 216
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->password:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setPassword(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->roomId:I

    .line 222
    .line 223
    if-lez v0, :cond_4

    .line 224
    .line 225
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_4

    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const-wide/16 v2, 0x0

    .line 240
    .line 241
    cmp-long v4, v0, v2

    .line 242
    .line 243
    if-gtz v4, :cond_3

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 247
    .line 248
    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;

    .line 249
    .line 250
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 254
    .line 255
    .line 256
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 259
    .line 260
    .line 261
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    .line 262
    .line 263
    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$d;

    .line 264
    .line 265
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$d;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 269
    .line 270
    .line 271
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 272
    .line 273
    const/16 v0, 0xbb8

    .line 274
    .line 275
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->initUI(I)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method checkRomAndPlug(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_4

    .line 4
    .line 5
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x5

    .line 39
    if-ne v2, v3, :cond_3

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 42
    .line 43
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v2, p1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-array v2, v1, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImg:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugize:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImg:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugize:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 117
    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->upDateUI()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->getData()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romImg:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romSize:Ljava/lang/String;

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 147
    .line 148
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v2, p1}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    new-array v2, v1, [Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_5

    .line 175
    .line 176
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImg:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugize:Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImg:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugize:Ljava/lang/String;

    .line 219
    .line 220
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->upDateUI()V

    .line 221
    .line 222
    .line 223
    :goto_2
    return-void
.end method

.method dealDialogDismissCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$g;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method dialog_button_cancle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->login:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->check:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method dialog_button_ok()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_cancle:Landroid/widget/Button;

    .line 6
    .line 7
    const-string v2, "\u6211\u77e5\u9053\u4e86"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->game_lay:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 25
    .line 26
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "\u3001"

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "..."

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 98
    .line 99
    if-nez v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content_2:Landroid/widget/TextView;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content_2:Landroid/widget/TextView;

    .line 130
    .line 131
    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\u540e\uff0c\u8bf7\u518d\u6b21\u590d\u5236\"\u7ea6\u6218\u53e3\u4ee4\"\u5373\u53ef\u5feb\u901f\u52a0\u5165\u7ea6\u6218~"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 137
    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 141
    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    const/4 v1, 0x5

    .line 207
    if-ne v0, v1, :cond_5

    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    :goto_1
    return-void
.end method

.method public emoji(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexEmoji"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method getData()V
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
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
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
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, ""

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->detialResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->checkRomAndPlug(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_1
    return-void
.end method

.method go()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->data:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\u5927\u5385\u5bf9\u6218"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->arenaInviteBean:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method goToGame()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handleServiceConnected()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method handleError(Lapp/mgsim/arena/ArenaResponse;)V
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
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const-string v2, "\u786e\u5b9a"

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x1

    .line 17
    const/16 v6, 0x101

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x4

    .line 21
    const-string v9, "dialog_error_hint"

    .line 22
    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x11

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v1, 0x7d0

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 66
    .line 67
    new-array v1, v8, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    aput-object v6, v1, v7

    .line 74
    .line 75
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    aput-object p1, v1, v5

    .line 82
    .line 83
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 84
    .line 85
    aput-object p1, v1, v4

    .line 86
    .line 87
    aput-object v2, v1, v3

    .line 88
    .line 89
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dealDialogDismissCallback()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 98
    .line 99
    new-array v1, v8, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    aput-object v6, v1, v7

    .line 106
    .line 107
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    aput-object p1, v1, v5

    .line 114
    .line 115
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 116
    .line 117
    aput-object p1, v1, v4

    .line 118
    .line 119
    aput-object v2, v1, v3

    .line 120
    .line 121
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dealDialogDismissCallback()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 129
    .line 130
    new-array v1, v8, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    aput-object v6, v1, v7

    .line 137
    .line 138
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    aput-object p1, v1, v5

    .line 145
    .line 146
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 147
    .line 148
    aput-object p1, v1, v4

    .line 149
    .line 150
    aput-object v2, v1, v3

    .line 151
    .line 152
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dealDialogDismissCallback()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 160
    .line 161
    new-array v1, v8, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    aput-object v6, v1, v7

    .line 168
    .line 169
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 170
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    aput-object p1, v1, v5

    .line 176
    .line 177
    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    .line 178
    .line 179
    aput-object p1, v1, v4

    .line 180
    .line 181
    aput-object v2, v1, v3

    .line 182
    .line 183
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dealDialogDismissCallback()V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 191
    .line 192
    new-array v1, v8, [Ljava/lang/Object;

    .line 193
    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    aput-object v6, v1, v7

    .line 199
    .line 200
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 201
    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    aput-object p1, v1, v5

    .line 207
    .line 208
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    .line 209
    .line 210
    aput-object p1, v1, v4

    .line 211
    .line 212
    aput-object v2, v1, v3

    .line 213
    .line 214
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dealDialogDismissCallback()V

    .line 218
    .line 219
    .line 220
    :goto_0
    return-void
.end method

.method handleShare()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "register_type_share_join_room"

    .line 8
    .line 9
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->roomId:I

    .line 20
    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameId:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    sget-object v7, Lcom/join/mgps/activity/CheckInviteDialogActivity;->password:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Lapp/mgsim/arena/ArenaRequestFactory;->shareJoinRoom(Ljava/lang/String;JIJLjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method initUI(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u6b63\u5728\u8fdb\u5165\u3010"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->gameName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\u3011\u6311\u6218\u597d\u53cb"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x263a

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->emoji(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->userName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->emoji(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->game_lay:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content_2:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loading_lay:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handler:Landroid/os/Handler;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->login:Ljava/lang/Runnable;

    .line 97
    .line 98
    int-to-long v2, p1

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handler:Landroid/os/Handler;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->check:Ljava/lang/Runnable;

    .line 106
    .line 107
    int-to-long v2, p1

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 5
    .line 6
    if-eqz v0, :cond_1

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
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->initUI(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showHintDialog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/d1;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/d1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d1;-><init>(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "\u52a0\u5165\u5931\u8d25\uff0c\u60a8\u4e0e"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\u623f\u95f4\u4e0d\u5728\u540c\u4e00\u6218\u533a\n\u8bf7\u8fdb\u5165\u8be5\u6e38\u620f\u623f\u95f4\u5217\u8868\uff0c\u5e76\u5207\u6362\u81f3\u3010"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "\u3011\u540e\u518d\u67e5\u627e\u623f\u95f4\u53f7\u8fdb\u5165"

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/d1;->d(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dialog/d1;->e()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dialog/d1;->b()Landroid/app/Dialog;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_cancle:Landroid/widget/Button;

    .line 2
    .line 3
    const-string v1, "\u6211\u77e5\u9053\u4e86"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->game_lay:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content_2:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loading_lay:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method upDateUI()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->goToGame()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 21
    .line 22
    const-string v2, "M"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->game_lay:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loading_lay:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->rom_lay:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romImg:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romImgIv:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-static {p0, v0, v4}, Lcom/join/mgps/Util/UtilsMy;->L3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romNameTv:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romSizeTv:Landroid/widget/TextView;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romSize:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 84
    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->game_lay:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->loading_lay:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plug_lay:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImg:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugImgIv:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 110
    .line 111
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->L3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugNameTv:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugSizeTv:Landroid/widget/TextView;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugize:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasRom:Z

    .line 144
    .line 145
    const-string v1, "\u4f60\u9700\u8981\u5148\u4e0b\u8f7d\u6e38\u620f<"

    .line 146
    .line 147
    if-nez v0, :cond_3

    .line 148
    .line 149
    iget-boolean v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 150
    .line 151
    if-nez v2, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ">\u548c"

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 186
    .line 187
    const/4 v1, 0x3

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_3
    const/16 v2, 0x11

    .line 193
    .line 194
    if-nez v0, :cond_4

    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->romName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, ">"

    .line 212
    .line 213
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->hasPlug:Z

    .line 230
    .line 231
    if-nez v0, :cond_5

    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 234
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v3, "\u4f60\u9700\u8981\u5148\u4e0b\u8f7d"

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->plugName:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    .line 261
    .line 262
    :cond_5
    :goto_0
    return-void
.end method

.method validAccount()Z
    .locals 2

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    return v0
.end method
