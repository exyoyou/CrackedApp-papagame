.class public final Lcom/join/mgps/activity/UploadActivity_;
.super Lcom/join/mgps/activity/UploadActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UploadActivity_$s;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final onViewChangedNotifier_:Lzc/c;

.field private final updateUIReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$1;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->updateUIReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->upLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->showToast()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->uploadFinishInUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->uploadFaildInUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->zipFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/UploadActivity_;Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/UploadActivity;->syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v0, "upload"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/UploadActivity_$s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/UploadActivity_$s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$s;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UploadActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d088d

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/UploadActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->updateUIReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->updateUIReceiver_:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0721

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameType:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1258

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformType:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0622

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->fileName:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a06ec

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameIcon:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a08fb

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 55
    .line 56
    const v0, 0x7f0a08fc

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 66
    .line 67
    const v0, 0x7f0a08fd

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img_3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const v0, 0x7f0a0713

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/EditText;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 88
    .line 89
    const v0, 0x7f0a06e3

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/EditText;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameDsc:Landroid/widget/EditText;

    .line 99
    .line 100
    const v0, 0x7f0a0dee

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/ScrollView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 110
    .line 111
    const v0, 0x7f0a0def

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_2:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v0, 0x7f0a0df0

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    const v0, 0x7f0a0df1

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const v0, 0x7f0a0548

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscIngTxt:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a0547

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscFaildTxt:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a0549

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscSuccessTxt:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0a0723

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const v1, 0x7f0a1259

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const v2, 0x7f0a0623

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const v3, 0x7f0a06f0

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const v4, 0x7f0a092b

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    const v5, 0x7f0a0140

    .line 213
    .line 214
    .line 215
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const v6, 0x7f0a1afc

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const v7, 0x7f0a1afa

    .line 227
    .line 228
    .line 229
    invoke-interface {p1, v7}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    const v8, 0x7f0a1639

    .line 234
    .line 235
    .line 236
    invoke-interface {p1, v8}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    const v9, 0x7f0a1326

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, v9}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    const v10, 0x7f0a0434

    .line 248
    .line 249
    .line 250
    invoke-interface {p1, v10}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    const v11, 0x7f0a1386

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v11}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-eqz v0, :cond_0

    .line 262
    .line 263
    new-instance v11, Lcom/join/mgps/activity/UploadActivity_$k;

    .line 264
    .line 265
    invoke-direct {v11, p0}, Lcom/join/mgps/activity/UploadActivity_$k;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    :cond_0
    if-eqz v1, :cond_1

    .line 272
    .line 273
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$l;

    .line 274
    .line 275
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$l;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    :cond_1
    if-eqz v2, :cond_2

    .line 282
    .line 283
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$m;

    .line 284
    .line 285
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$m;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    :cond_2
    if-eqz v3, :cond_3

    .line 292
    .line 293
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$n;

    .line 294
    .line 295
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$n;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    :cond_3
    if-eqz v4, :cond_4

    .line 302
    .line 303
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$o;

    .line 304
    .line 305
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$o;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    :cond_4
    if-eqz v5, :cond_5

    .line 312
    .line 313
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$p;

    .line 314
    .line 315
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$p;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    :cond_5
    if-eqz v6, :cond_6

    .line 322
    .line 323
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$q;

    .line 324
    .line 325
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$q;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    :cond_6
    if-eqz v7, :cond_7

    .line 332
    .line 333
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$r;

    .line 334
    .line 335
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$r;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    .line 340
    .line 341
    :cond_7
    if-eqz v8, :cond_8

    .line 342
    .line 343
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$a;

    .line 344
    .line 345
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$a;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .line 350
    .line 351
    :cond_8
    if-eqz v9, :cond_9

    .line 352
    .line 353
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$b;

    .line 354
    .line 355
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$b;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .line 360
    .line 361
    :cond_9
    if-eqz v10, :cond_a

    .line 362
    .line 363
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$c;

    .line 364
    .line 365
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$c;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    :cond_a
    if-eqz p1, :cond_b

    .line 372
    .line 373
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$d;

    .line 374
    .line 375
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$d;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->afterView()V

    .line 382
    .line 383
    .line 384
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method showToast()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$f;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "upLoadGameConfig",
            "file"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/UploadActivity_$j;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/UploadActivity_$j;-><init>(Lcom/join/mgps/activity/UploadActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method upLoad()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$e;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method uploadFaildInUI()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$h;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method uploadFinishInUI()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$g;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method zipFile()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/UploadActivity_$i;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/UploadActivity_$i;-><init>(Lcom/join/mgps/activity/UploadActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
