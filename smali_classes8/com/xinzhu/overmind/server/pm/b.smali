.class public Lcom/xinzhu/overmind/server/pm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/b$b;,
        Lcom/xinzhu/overmind/server/pm/b$c;,
        Lcom/xinzhu/overmind/server/pm/b$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "ComponentResolver"

.field static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/xinzhu/overmind/server/pm/b$b;

.field private final c:Lcom/xinzhu/overmind/server/pm/b$c;

.field private final d:Lcom/xinzhu/overmind/server/pm/b$b;

.field private final e:Lcom/xinzhu/overmind/server/pm/b$d;

.field private final f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/b;->h:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/xinzhu/overmind/server/pm/b$b;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/b$b;-><init>(Lcom/xinzhu/overmind/server/pm/b$a;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 18
    .line 19
    new-instance v0, Lcom/xinzhu/overmind/server/pm/b$c;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/b$c;-><init>(Lcom/xinzhu/overmind/server/pm/b$a;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 25
    .line 26
    new-instance v0, Lcom/xinzhu/overmind/server/pm/b$b;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/b$b;-><init>(Lcom/xinzhu/overmind/server/pm/b$a;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/server/pm/b$d;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/b$d;-><init>(Lcom/xinzhu/overmind/server/pm/b$a;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 39
    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/server/pm/b;->j(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method

.method private b(Lcom/xinzhu/overmind/server/pm/MindPackage;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/MindPackage;",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 19
    .line 20
    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 33
    .line 34
    const-string v4, "activity"

    .line 35
    .line 36
    invoke-static {v3, v2, v4, p2}, Lcom/xinzhu/overmind/server/pm/b$b;->E(Lcom/xinzhu/overmind/server/pm/b$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method private d(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_5

    .line 10
    .line 11
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 20
    .line 21
    iget-object v5, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v5, v6}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/pm/b$c;->E(Lcom/xinzhu/overmind/server/pm/MindPackage$g;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 39
    .line 40
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    const-string v5, ";"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v5, v4

    .line 51
    const/4 v6, 0x0

    .line 52
    :goto_1
    if-ge v6, v5, :cond_4

    .line 53
    .line 54
    aget-object v7, v4, v6

    .line 55
    .line 56
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_1

    .line 63
    .line 64
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v8, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v8, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 70
    .line 71
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v9, :cond_0

    .line 74
    .line 75
    iput-object v7, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_0
    iput-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_1
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 88
    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-virtual {v8}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 v8, 0x0

    .line 103
    :goto_2
    if-eqz v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    const-string v8, "?"

    .line 111
    .line 112
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v10, "Skipping provider name "

    .line 118
    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v7, " (in package "

    .line 126
    .line 127
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v7, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 131
    .line 132
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v7, "): name already used by "

    .line 138
    .line 139
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const-string v8, "ComponentResolver"

    .line 150
    .line 151
    invoke-static {v8, v7}, Lcom/xinzhu/overmind/utils/y;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    return-void
.end method

.method private e(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 19
    .line 20
    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 33
    .line 34
    const-string v4, "receiver"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static {v3, v2, v4, v5}, Lcom/xinzhu/overmind/server/pm/b$b;->E(Lcom/xinzhu/overmind/server/pm/b$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private f(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 19
    .line 20
    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/b$d;->E(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private static synthetic j(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    :goto_0
    return v2

    .line 14
    :cond_1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 15
    .line 16
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    if-le v0, v1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v2, 0x1

    .line 24
    :goto_1
    return v2

    .line 25
    :cond_3
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 26
    .line 27
    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 28
    .line 29
    if-eq v0, v1, :cond_5

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_4
    const/4 v2, 0x1

    .line 35
    :goto_2
    return v2

    .line 36
    :cond_5
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 37
    .line 38
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 39
    .line 40
    if-eq v0, v1, :cond_7

    .line 41
    .line 42
    if-le v0, v1, :cond_6

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_6
    const/4 v2, 0x1

    .line 46
    :goto_3
    return v2

    .line 47
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    if-eqz v0, :cond_8

    .line 50
    .line 51
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 54
    .line 55
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_8
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 63
    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 69
    .line 70
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :cond_9
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 78
    .line 79
    if-eqz p0, :cond_a

    .line 80
    .line 81
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 84
    .line 85
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_a
    const/4 p0, 0x0

    .line 93
    return p0
.end method

.method private w(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 20
    .line 21
    const-string v5, "activity"

    .line 22
    .line 23
    invoke-static {v4, v3, v5}, Lcom/xinzhu/overmind/server/pm/b$b;->D(Lcom/xinzhu/overmind/server/pm/b$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_1
    if-ge v2, v0, :cond_4

    .line 37
    .line 38
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/pm/b$c;->L(Lcom/xinzhu/overmind/server/pm/MindPackage$g;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    const-string v4, ";"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_2
    array-length v5, v3

    .line 66
    if-ge v4, v5, :cond_3

    .line 67
    .line 68
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 69
    .line 70
    aget-object v6, v3, v4

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 79
    .line 80
    aget-object v6, v3, v4

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v2, 0x0

    .line 98
    :goto_4
    if-ge v2, v0, :cond_5

    .line 99
    .line 100
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 107
    .line 108
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 109
    .line 110
    const-string v5, "receiver"

    .line 111
    .line 112
    invoke-static {v4, v3, v5}, Lcom/xinzhu/overmind/server/pm/b$b;->D(Lcom/xinzhu/overmind/server/pm/b$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_5
    if-ge v1, v0, :cond_6

    .line 125
    .line 126
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/b$d;->K(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    return-void
.end method


# virtual methods
.method c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/pm/b;->b(Lcom/xinzhu/overmind/server/pm/MindPackage;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/b;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/b;->d(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/b;->e(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method g(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/b$c;->D(Lcom/xinzhu/overmind/server/pm/b$c;)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/b$b;->F(Lcom/xinzhu/overmind/server/pm/b$b;)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method h(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/b$b;->F(Lcom/xinzhu/overmind/server/pm/b$b;)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method i(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/b$d;->D(Lcom/xinzhu/overmind/server/pm/b$d;)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method k(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method l(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b$b;->L(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method m(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->b:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method n(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, ";"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object p1, p1, v1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->f:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 31
    .line 32
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/q;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    monitor-exit v0

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method o(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b$c;->J(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method p(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b$c;->K(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method q(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/xinzhu/overmind/server/pm/b$c;->D(Lcom/xinzhu/overmind/server/pm/b$c;)Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v2, :cond_7

    .line 22
    .line 23
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/b;->c:Lcom/xinzhu/overmind/server/pm/b$c;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/b$c;->D(Lcom/xinzhu/overmind/server/pm/b$c;)Landroid/util/ArrayMap;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 40
    .line 41
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 51
    .line 52
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v6, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 71
    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    invoke-virtual {v5, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v6, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 86
    .line 87
    invoke-virtual {v5, v6, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v4, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, p3, v4, p4}, Lcom/xinzhu/overmind/server/pm/q;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    monitor-exit v1

    .line 112
    return-object v0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p1
.end method

.method r(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method s(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->d:Lcom/xinzhu/overmind/server/pm/b$b;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b$b;->L(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method t(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b$d;->I(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method u(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/b;->e:Lcom/xinzhu/overmind/server/pm/b$d;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b$d;->J(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method v(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/b;->w(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method
