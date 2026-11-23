.class public abstract Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;,
        Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "PackageManager"

.field private static final m:Z = false

.field protected static final n:Ljava/lang/String; = "registered_services"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field protected final e:Ljava/lang/Object;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private g:Lcom/xinzhu/overmind/server/pm/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xinzhu/overmind/server/pm/t<",
            "TV;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private final i:Lcom/xinzhu/overmind/server/pm/r;

.field private final j:Lcom/xinzhu/overmind/server/user/b;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->f:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;-><init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->i:Lcom/xinzhu/overmind/server/pm/r;

    .line 25
    .line 26
    new-instance v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$b;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$b;-><init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->j:Lcom/xinzhu/overmind/server/user/b;

    .line 32
    .line 33
    new-instance v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$3;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$3;-><init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->k:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->a:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->c:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->addPackageMonitor(Lcom/xinzhu/overmind/server/pm/r;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v1}, Lcom/xinzhu/overmind/server/user/c;->registerListener(Lcom/xinzhu/overmind/server/user/b;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic g(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->r(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V

    return-void
.end method

.method static synthetic h(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->q(Landroid/content/Intent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private j(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 14
    .line 15
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget v3, v3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 24
    .line 25
    if-ne v3, p3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method private k([Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/d;->f([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method private l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;-><init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->f:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method private m([Ljava/lang/Integer;I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->x(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->w(Landroid/content/pm/ResolveInfo;)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "Unable to load service info "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "Unable to load service info "

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x1

    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    :goto_1
    if-eqz v3, :cond_3

    .line 87
    .line 88
    new-instance v6, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v6, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const/4 v7, 0x0

    .line 100
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_8

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 111
    .line 112
    iget-object v9, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 113
    .line 114
    iget-object v10, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Ljava/lang/Integer;

    .line 121
    .line 122
    if-nez v9, :cond_7

    .line 123
    .line 124
    iget-object v7, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 125
    .line 126
    iget-object v9, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v7, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 132
    .line 133
    iget-object v9, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 134
    .line 135
    iget v10, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 136
    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    iget-boolean v7, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->c:Z

    .line 145
    .line 146
    if-eqz v7, :cond_5

    .line 147
    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    :cond_5
    iget-object v7, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-direct {p0, v7, p2, v4}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->s(Ljava/lang/Object;IZ)V

    .line 153
    .line 154
    .line 155
    :cond_6
    const/4 v7, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    iget v10, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 162
    .line 163
    if-ne v9, v10, :cond_4

    .line 164
    .line 165
    iget-object v9, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 166
    .line 167
    iget-object v10, v8, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_a

    .line 193
    .line 194
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-direct {p0, v0, v6}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->i(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-nez v8, :cond_9

    .line 203
    .line 204
    iget-object v8, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 205
    .line 206
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    check-cast v8, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-direct {p0, p1, v8}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->k([Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_9

    .line 217
    .line 218
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 237
    .line 238
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 242
    .line 243
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, v0, p2, v5}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->s(Ljava/lang/Object;IZ)V

    .line 247
    .line 248
    .line 249
    const/4 v7, 0x1

    .line 250
    goto :goto_4

    .line 251
    :cond_b
    if-eqz v7, :cond_c

    .line 252
    .line 253
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->t(I)V

    .line 254
    .line 255
    .line 256
    :cond_c
    monitor-exit v1

    .line 257
    return-void

    .line 258
    :catchall_0
    move-exception p1

    .line 259
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    throw p1
.end method

.method private q(Landroid/content/Intent;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    const-string v1, "android.intent.extra.REPLACING"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    const-string v0, "android.intent.extra.UID"

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-lez p1, :cond_3

    .line 46
    .line 47
    new-array v0, v2, [Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    aput-object p1, v0, v3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->m([Ljava/lang/Integer;I)V

    .line 58
    .line 59
    .line 60
    :goto_3
    return-void
.end method

.method private static synthetic r(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/t;->a(Ljava/lang/Object;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string p1, "PackageManager"

    .line 7
    .line 8
    const-string p2, "Exception from onServiceChanged"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Lcom/xinzhu/overmind/utils/y;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method private s(Ljava/lang/Object;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->g:Lcom/xinzhu/overmind/server/pm/t;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h:Landroid/os/Handler;

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Lcom/xinzhu/overmind/server/pm/s;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/s;-><init>(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->t(I)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public c(I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, v2, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->m([Ljava/lang/Integer;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    monitor-exit v0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public d(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    iget-object p4, p3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "RegisteredServicesCache: "

    .line 18
    .line 19
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " services"

    .line 32
    .line 33
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p3, p3, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    if-eqz p4, :cond_1

    .line 58
    .line 59
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    check-cast p4, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "  "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string p3, "RegisteredServicesCache: services not loaded"

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    monitor-exit p1

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p2

    .line 94
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p2
.end method

.method public e(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 42
    .line 43
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 44
    .line 45
    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->b:Landroid/content/pm/ComponentInfo;

    .line 46
    .line 47
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/xinzhu/haunted/android/content/pm/b;->C0()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    int-to-long v3, v3

    .line 57
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->b:Landroid/content/pm/ComponentInfo;

    .line 58
    .line 59
    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-virtual {v6, v5, v7, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    new-instance v6, Lcom/xinzhu/haunted/android/content/pm/b;

    .line 73
    .line 74
    invoke-direct {v6, v5}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/xinzhu/haunted/android/content/pm/b;->C0()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    int-to-long v5, v5

    .line 82
    cmp-long v7, v5, v3

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    :cond_2
    if-nez v1, :cond_3

    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget v2, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, [Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->m([Ljava/lang/Integer;I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p1
.end method

.method public f(Lcom/xinzhu/overmind/server/pm/t;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/t<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->g:Lcom/xinzhu/overmind/server/pm/t;

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public n()Lcom/xinzhu/overmind/server/pm/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xinzhu/overmind/server/pm/t<",
            "TV;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->g:Lcom/xinzhu/overmind/server/pm/t;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method protected o(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    .line 6
    .line 7
    return-object p1
.end method

.method public p(Ljava/lang/Object;I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->l(I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, v2, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->m([Ljava/lang/Integer;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method protected t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->f:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public abstract v(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method protected w(Landroid/content/pm/ResolveInfo;)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    .line 8
    .line 9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    new-instance v2, Landroid/content/ComponentName;

    .line 23
    .line 24
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 40
    .line 41
    .line 42
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eq v6, v7, :cond_1

    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    if-eq v6, v7, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, v3, v6, v5}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->v(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_2
    :try_start_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 91
    .line 92
    new-instance v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 93
    .line 94
    invoke-direct {v1, v3, p1, v2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_3
    :try_start_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "Meta-data does not start with "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->d:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " tag "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    move-object v1, v4

    .line 136
    goto :goto_2

    .line 137
    :catch_0
    move-object v1, v4

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "No "

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->c:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " meta-data"

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :catchall_1
    move-exception p1

    .line 170
    goto :goto_2

    .line 171
    :catch_1
    :goto_1
    :try_start_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v3, "Unable to load resources for pacakge "

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :goto_2
    if-eqz v1, :cond_5

    .line 197
    .line 198
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 199
    .line 200
    .line 201
    :cond_5
    throw p1
.end method

.method protected x(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0xc0080

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v3, v2, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
