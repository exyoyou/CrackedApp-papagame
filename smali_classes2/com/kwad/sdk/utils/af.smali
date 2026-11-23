.class public final Lcom/kwad/sdk/utils/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/af$a;,
        Lcom/kwad/sdk/utils/af$b;
    }
.end annotation


# static fields
.field private static bpk:Lcom/kwad/sdk/utils/af;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final bpg:Landroid/content/Context;

.field private final bph:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/utils/af$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bpi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/utils/af$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bpj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/utils/af$a;",
            ">;"
        }
    .end annotation
.end field

.field private final jk:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/utils/af;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/sdk/utils/af;->bpj:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/kwad/sdk/utils/af;->bpg:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Lcom/kwad/sdk/utils/af$1;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/utils/af$1;-><init>(Lcom/kwad/sdk/utils/af;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/kwad/sdk/utils/af;->jk:Landroid/os/Handler;

    .line 37
    .line 38
    return-void
.end method

.method public static dj(Landroid/content/Context;)Lcom/kwad/sdk/utils/af;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/af;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/kwad/sdk/utils/af;->bpk:Lcom/kwad/sdk/utils/af;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/kwad/sdk/utils/af;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/sdk/utils/af;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kwad/sdk/utils/af;->bpk:Lcom/kwad/sdk/utils/af;

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/kwad/sdk/utils/af;->bpk:Lcom/kwad/sdk/utils/af;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method final UR()V
    .locals 10

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/utils/af;->bpj:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gtz v1, :cond_1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_1
    new-array v2, v1, [Lcom/kwad/sdk/utils/af$a;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/kwad/sdk/utils/af;->bpj:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/kwad/sdk/utils/af;->bpj:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_0

    .line 30
    .line 31
    aget-object v4, v2, v3

    .line 32
    .line 33
    iget-object v5, v4, Lcom/kwad/sdk/utils/af$a;->bpm:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x0

    .line 40
    :goto_1
    if-ge v6, v5, :cond_3

    .line 41
    .line 42
    iget-object v7, v4, Lcom/kwad/sdk/utils/af$a;->bpm:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lcom/kwad/sdk/utils/af$b;

    .line 49
    .line 50
    iget-boolean v8, v7, Lcom/kwad/sdk/utils/af$b;->bpp:Z

    .line 51
    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    iget-object v7, v7, Lcom/kwad/sdk/utils/af$b;->bpn:Landroid/content/BroadcastReceiver;

    .line 55
    .line 56
    iget-object v8, p0, Lcom/kwad/sdk/utils/af;->bpg:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v9, v4, Lcom/kwad/sdk/utils/af$a;->intent:Landroid/content/Intent;

    .line 59
    .line 60
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v1
.end method

.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/kwad/sdk/utils/af$b;

    .line 5
    .line 6
    invoke-direct {v1, p2, p1}, Lcom/kwad/sdk/utils/af$b;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge p1, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v4, p0, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final i(Landroid/content/Intent;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v10

    .line 12
    iget-object v3, v1, Lcom/kwad/sdk/utils/af;->bpg:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    and-int/lit8 v3, v3, 0x8

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    const/16 v16, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v16, 0x0

    .line 47
    .line 48
    :goto_0
    if-eqz v16, :cond_1

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "Resolving type "

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " scheme "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, " of intent "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v3, v1, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v8, v3

    .line 87
    check-cast v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    if-eqz v8, :cond_10

    .line 90
    .line 91
    if-eqz v16, :cond_2

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "Action list: "

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_2
    const/4 v3, 0x0

    .line 104
    move-object v7, v3

    .line 105
    const/4 v6, 0x0

    .line 106
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v6, v3, :cond_d

    .line 111
    .line 112
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v5, v3

    .line 117
    check-cast v5, Lcom/kwad/sdk/utils/af$b;

    .line 118
    .line 119
    if-eqz v16, :cond_3

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "Matching against filter "

    .line 124
    .line 125
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, v5, Lcom/kwad/sdk/utils/af$b;->filter:Landroid/content/IntentFilter;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-boolean v3, v5, Lcom/kwad/sdk/utils/af$b;->bpo:Z

    .line 134
    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    move/from16 v18, v6

    .line 138
    .line 139
    move-object/from16 v20, v8

    .line 140
    .line 141
    move-object/from16 v19, v10

    .line 142
    .line 143
    move-object/from16 v21, v11

    .line 144
    .line 145
    const/4 v11, 0x1

    .line 146
    move-object v10, v7

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_4
    iget-object v3, v5, Lcom/kwad/sdk/utils/af$b;->filter:Landroid/content/IntentFilter;

    .line 150
    .line 151
    const-string v17, "LocalBroadcastManager"

    .line 152
    .line 153
    move-object v4, v10

    .line 154
    move-object v15, v5

    .line 155
    move-object v5, v11

    .line 156
    move/from16 v18, v6

    .line 157
    .line 158
    move-object v6, v13

    .line 159
    move-object/from16 v19, v10

    .line 160
    .line 161
    move-object v10, v7

    .line 162
    move-object v7, v12

    .line 163
    move-object/from16 v20, v8

    .line 164
    .line 165
    move-object v8, v14

    .line 166
    move-object/from16 v21, v11

    .line 167
    .line 168
    const/4 v11, 0x1

    .line 169
    move-object/from16 v9, v17

    .line 170
    .line 171
    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-ltz v3, :cond_7

    .line 176
    .line 177
    if-eqz v16, :cond_5

    .line 178
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v5, "  Filter matched!  match=0x"

    .line 182
    .line 183
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_5
    if-nez v10, :cond_6

    .line 194
    .line 195
    new-instance v7, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_6
    move-object v7, v10

    .line 202
    :goto_2
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    iput-boolean v11, v15, Lcom/kwad/sdk/utils/af$b;->bpo:Z

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    if-eqz v16, :cond_c

    .line 209
    .line 210
    const/4 v4, -0x4

    .line 211
    if-eq v3, v4, :cond_b

    .line 212
    .line 213
    const/4 v4, -0x3

    .line 214
    if-eq v3, v4, :cond_a

    .line 215
    .line 216
    const/4 v4, -0x2

    .line 217
    if-eq v3, v4, :cond_9

    .line 218
    .line 219
    const/4 v4, -0x1

    .line 220
    if-eq v3, v4, :cond_8

    .line 221
    .line 222
    const-string v3, "unknown reason"

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    const-string v3, "type"

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    const-string v3, "data"

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_a
    const-string v3, "action"

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    const-string v3, "category"

    .line 235
    .line 236
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v5, "  Filter did not match: "

    .line 239
    .line 240
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    :cond_c
    :goto_4
    move-object v7, v10

    .line 247
    :goto_5
    add-int/lit8 v6, v18, 0x1

    .line 248
    .line 249
    move-object/from16 v10, v19

    .line 250
    .line 251
    move-object/from16 v8, v20

    .line 252
    .line 253
    move-object/from16 v11, v21

    .line 254
    .line 255
    const/4 v9, 0x1

    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :cond_d
    move-object v10, v7

    .line 259
    const/4 v11, 0x1

    .line 260
    if-eqz v10, :cond_10

    .line 261
    .line 262
    const/4 v3, 0x0

    .line 263
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-ge v3, v4, :cond_e

    .line 268
    .line 269
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    check-cast v4, Lcom/kwad/sdk/utils/af$b;

    .line 274
    .line 275
    const/4 v5, 0x0

    .line 276
    iput-boolean v5, v4, Lcom/kwad/sdk/utils/af$b;->bpo:Z

    .line 277
    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_e
    iget-object v3, v1, Lcom/kwad/sdk/utils/af;->bpj:Ljava/util/ArrayList;

    .line 282
    .line 283
    new-instance v4, Lcom/kwad/sdk/utils/af$a;

    .line 284
    .line 285
    invoke-direct {v4, v0, v10}, Lcom/kwad/sdk/utils/af$a;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Lcom/kwad/sdk/utils/af;->jk:Landroid/os/Handler;

    .line 292
    .line 293
    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_f

    .line 298
    .line 299
    iget-object v0, v1, Lcom/kwad/sdk/utils/af;->jk:Landroid/os/Handler;

    .line 300
    .line 301
    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    .line 303
    .line 304
    :cond_f
    monitor-exit v2

    .line 305
    return v11

    .line 306
    :cond_10
    monitor-exit v2

    .line 307
    const/4 v0, 0x0

    .line 308
    return v0

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    throw v0
.end method

.method public final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/utils/af;->bph:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    :goto_0
    if-ltz v2, :cond_5

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/kwad/sdk/utils/af$b;

    .line 29
    .line 30
    iput-boolean v3, v4, Lcom/kwad/sdk/utils/af$b;->bpp:Z

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_1
    iget-object v6, v4, Lcom/kwad/sdk/utils/af$b;->filter:Landroid/content/IntentFilter;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_4

    .line 40
    .line 41
    iget-object v6, v4, Lcom/kwad/sdk/utils/af$b;->filter:Landroid/content/IntentFilter;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v7, p0, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    sub-int/2addr v8, v3

    .line 62
    :goto_2
    if-ltz v8, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lcom/kwad/sdk/utils/af$b;

    .line 69
    .line 70
    iget-object v10, v9, Lcom/kwad/sdk/utils/af$b;->bpn:Landroid/content/BroadcastReceiver;

    .line 71
    .line 72
    if-ne v10, p1, :cond_1

    .line 73
    .line 74
    iput-boolean v3, v9, Lcom/kwad/sdk/utils/af$b;->bpp:Z

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-gtz v7, :cond_3

    .line 87
    .line 88
    iget-object v7, p0, Lcom/kwad/sdk/utils/af;->bpi:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p1
.end method
