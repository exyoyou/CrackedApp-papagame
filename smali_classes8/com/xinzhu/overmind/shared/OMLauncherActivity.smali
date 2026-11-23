.class public Lcom/xinzhu/overmind/shared/OMLauncherActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field public static final B:Ljava/lang/String; = "_extra_pkg"

.field public static final C:Ljava/lang/String; = "_extra_game_name"

.field public static final D:Ljava/lang/String; = "_extra_game_ext"

.field public static final E:Ljava/lang/String; = "_extra_game_id"

.field public static final F:Ljava/lang/String; = "_extra_user_id"

.field public static final G:Ljava/lang/String; = "_extra_mod_version"

.field public static final H:Ljava/lang/String; = "_extra_mod_info"

.field public static final I:Ljava/lang/String; = "_extra_mod_path"

.field public static final J:Ljava/lang/String; = "_extra_mod_code"

.field public static final K:Ljava/lang/String; = "_extra_mod_type"

.field public static final L:Ljava/lang/String; = "action.close.launcher"


# instance fields
.field A:Landroidx/appcompat/app/AlertDialog$Builder;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field i:Landroid/graphics/drawable/AnimationDrawable;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/Integer;

.field o:I

.field p:I

.field q:Ljava/lang/String;

.field r:Z

.field s:Ljava/lang/Integer;

.field t:Landroid/content/BroadcastReceiver;

.field u:Landroid/os/Handler;

.field v:Landroid/os/Messenger;

.field w:Landroid/os/Messenger;

.field x:Z

.field y:Landroid/content/ServiceConnection;

.field z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.popcap.pvz"

    .line 5
    .line 6
    const-string v1, "com.chucklefish.stardewvalley"

    .line 7
    .line 8
    const-string v2, "com.abuksigun.rpg_prototype"

    .line 9
    .line 10
    const-string v3, "com.wingjoy.mylife"

    .line 11
    .line 12
    const-string v4, "com.kleientertainment.doNotStarveShipwrecked"

    .line 13
    .line 14
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->b:Ljava/util/List;

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->l:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->m:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->n:Ljava/lang/Integer;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->r:Z

    .line 42
    .line 43
    const/16 v1, 0x3e8

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->s:Ljava/lang/Integer;

    .line 50
    .line 51
    new-instance v1, Lcom/xinzhu/overmind/shared/OMLauncherActivity$1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity$1;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    new-instance v1, Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v2, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->u:Landroid/os/Handler;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 72
    .line 73
    new-instance v2, Landroid/os/Messenger;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->u:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->w:Landroid/os/Messenger;

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->x:Z

    .line 83
    .line 84
    new-instance v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->y:Landroid/content/ServiceConnection;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 92
    .line 93
    return-void
.end method

.method public static synthetic a(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->p(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic b(Lcom/xinzhu/overmind/shared/OMLauncherActivity;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->y(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->s(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "_extra_pkg"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "_extra_game_name"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "_extra_game_id"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "_extra_user_id"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->n:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "_extra_mod_version"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->m:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "_extra_mod_path"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "_extra_mod_code"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->o:I

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "_extra_mod_type"

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->p:I

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "_extra_game_ext"

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput-boolean v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->r:Z

    .line 113
    .line 114
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->ll_download_status:I

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->pb_progress:I

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroid/widget/ProgressBar;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->f:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->tv_progress_status_1:I

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->g:Landroid/widget/TextView;

    .line 155
    .line 156
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->tv_progress_status_2:I

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->h:Landroid/widget/TextView;

    .line 165
    .line 166
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->tv_launch_status:I

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->d:Landroid/widget/TextView;

    .line 175
    .line 176
    sget v0, Lcom/xinzhu/overmind/shared/R$id;->iv_loading:I

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/ImageView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->c:Landroid/widget/ImageView;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 195
    .line 196
    .line 197
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 198
    .line 199
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v1, Landroid/content/ComponentName;

    .line 203
    .line 204
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v3, "com.join.mgps.va.service.OMPluginService"

    .line 209
    .line 210
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->y:Landroid/content/ServiceConnection;

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_0
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    .line 228
    .line 229
    new-instance v1, Landroid/content/IntentFilter;

    .line 230
    .line 231
    const-string v2, "action.close.launcher"

    .line 232
    .line 233
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method private synthetic p(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->n:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->launchApk(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->u:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v1, Lcom/xinzhu/overmind/shared/OMLauncherActivity$c;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity$c;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x1388

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->d:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x17

    .line 17
    .line 18
    if-lt v0, v1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->b:Ljava/util/List;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 47
    .line 48
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 49
    .line 50
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 51
    .line 52
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-boolean v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->r:Z

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->i([Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->s:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {p0, v0, v1}, Lcom/xinzhu/overmind/shared/c;->a(Lcom/xinzhu/overmind/shared/OMLauncherActivity;[Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_0
    return-void
.end method

.method private s(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "_progress"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->f:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->g:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lcom/xinzhu/overmind/shared/R$string;->s_mod_progress_status_3:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "%"

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v3, 0x0

    .line 45
    aput-object p1, v2, v3

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->f:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->h:Landroid/widget/TextView;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->g:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget v3, Lcom/xinzhu/overmind/shared/R$string;->s_mod_progress_status_3:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v4, "0%"

    .line 35
    .line 36
    aput-object v4, v3, v1

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->d:Landroid/widget/TextView;

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

.method private v(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "_progress"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "_expectSize"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-string v3, "_actualSize"

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-string v5, "_speed"

    .line 22
    .line 23
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "_modVersion"

    .line 28
    .line 29
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v6, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->f:Landroid/widget/ProgressBar;

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 36
    .line 37
    .line 38
    iget-object v6, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->g:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    sget v8, Lcom/xinzhu/overmind/shared/R$string;->s_mod_progress_status_1:I

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v8, 0x3

    .line 51
    new-array v9, v8, [Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v11, Lcom/xinzhu/overmind/utils/k;->a:Lcom/xinzhu/overmind/utils/k;

    .line 59
    .line 60
    invoke-virtual {v11, v3, v4}, Lcom/xinzhu/overmind/utils/k;->a(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, ""

    .line 68
    .line 69
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v10, 0x0

    .line 77
    aput-object v4, v9, v10

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v1, v2}, Lcom/xinzhu/overmind/utils/k;->a(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const/4 v12, 0x1

    .line 99
    aput-object v4, v9, v12

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, "%"

    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v4, 0x2

    .line 119
    aput-object v0, v9, v4

    .line 120
    .line 121
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->h:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    sget v7, Lcom/xinzhu/overmind/shared/R$string;->s_mod_progress_status_2:I

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    new-array v7, v8, [Ljava/lang/Object;

    .line 141
    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v1, v2}, Lcom/xinzhu/overmind/utils/k;->a(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    aput-object v1, v7, v10

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aput-object v1, v7, v12

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "v"

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    aput-object p1, v7, v4

    .line 198
    .line 199
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e:Landroid/widget/LinearLayout;

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

.method private x(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->y(ILandroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private y(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method i([Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2, p2}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    return-object p1
.end method

.method j(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->o()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const-string p2, "com.join.android.app.mgsim.wufun.addon"

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_3
    const-string p2, "com.join.android.app.mgsim.wufun"

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v1, 0x0

    .line 60
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method l()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->o()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x17

    .line 28
    .line 29
    if-lt v1, v2, :cond_4

    .line 30
    .line 31
    if-ge v0, v2, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 35
    .line 36
    if-le p1, v2, :cond_3

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_4
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    return-object p1
.end method

.method public n([I)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    const/4 v4, -0x1

    .line 9
    if-ne v3, v4, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    :goto_1
    return v1
.end method

.method o()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/xinzhu/overmind/shared/R$layout;->activity_mod_loading:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->y:Landroid/content/ServiceConnection;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->u:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->n([I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V

    .line 11
    .line 12
    .line 13
    goto :goto_5

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->z:Landroid/app/Dialog;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 19
    .line 20
    sget p3, Lcom/xinzhu/overmind/shared/R$style;->AlertDialogCustom:I

    .line 21
    .line 22
    invoke-direct {p1, p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    .line 37
    const-string p3, "\u63d0\u793a"

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    array-length p1, p2

    .line 43
    const/4 p3, 0x0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_1
    if-ge p3, p1, :cond_5

    .line 46
    .line 47
    aget-object v1, p2, p3

    .line 48
    .line 49
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    :goto_2
    const/4 v0, 0x1

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    .line 76
    const-string p2, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    .line 84
    const-string p2, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    .line 88
    .line 89
    :goto_4
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    .line 91
    new-instance p2, Lcom/xinzhu/overmind/shared/OMLauncherActivity$d;

    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity$d;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 94
    .line 95
    .line 96
    const-string p3, "\u53bb\u6253\u5f00"

    .line 97
    .line 98
    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    .line 103
    new-instance p2, Lcom/xinzhu/overmind/shared/d;

    .line 104
    .line 105
    invoke-direct {p2, p0}, Lcom/xinzhu/overmind/shared/d;-><init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->A:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->z:Landroid/app/Dialog;

    .line 118
    .line 119
    :goto_5
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->l()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
