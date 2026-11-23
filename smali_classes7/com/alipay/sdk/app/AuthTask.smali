.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0x49

.field static final d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/util/f;

    .line 2
    .line 3
    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->d:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lx/b;->c(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/alipay/sdk/widget/a;

    .line 22
    .line 23
    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    .line 29
    .line 30
    return-void
.end method

.method private a()Lcom/alipay/sdk/util/f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/alipay/sdk/app/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lx/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lx/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1}, Lcom/alipay/sdk/app/AuthTask;->e(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Lcom/alipay/sdk/util/f;

    .line 19
    .line 20
    new-instance v1, Lcom/alipay/sdk/app/a;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/util/f;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "failed"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_1
    return-object v0

    .line 57
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method private c(Lw/a;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lw/a;->c:[Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    const-string v1, "url"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 19
    .line 20
    const-class v2, Lcom/alipay/sdk/app/H5AuthActivity;

    .line 21
    .line 22
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/alipay/sdk/app/AuthTask;->d:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p1

    .line 40
    sget-object p1, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_0
    return-object p1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    return-object v0

    .line 61
    :goto_0
    monitor-exit p1

    .line 62
    throw v0
.end method

.method static synthetic d(Lcom/alipay/sdk/app/AuthTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.eg.android.AlipayGphone"

    .line 7
    .line 8
    const/16 v2, 0x80

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    const/16 v1, 0x49

    .line 20
    .line 21
    if-ge p0, v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    return v0
.end method

.method private f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->g()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/alipay/sdk/packet/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "form"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "onload"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lw/a;->b(Lorg/json/JSONObject;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge p2, v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lw/a;

    .line 48
    .line 49
    iget-object v0, v0, Lw/a;->a:Lcom/alipay/sdk/protocol/a;

    .line 50
    .line 51
    sget-object v1, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    .line 52
    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lw/a;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/AuthTask;->c(Lw/a;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    const-string p2, "biz"

    .line 74
    .line 75
    const-string v0, "H5AuthDataAnalysisError"

    .line 76
    .line 77
    invoke-static {p2, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    sget-object p2, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/alipay/sdk/app/i;->a()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-static {p2}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const-string v0, "net"

    .line 97
    .line 98
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 102
    .line 103
    .line 104
    move-object p1, p2

    .line 105
    :goto_1
    if-nez p1, :cond_2

    .line 106
    .line 107
    sget-object p1, Lcom/alipay/sdk/app/i;->b:Lcom/alipay/sdk/app/i;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {p1}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, ""

    .line 126
    .line 127
    invoke-static {p2, p1, v0}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->g()V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lx/b;->c(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 24
    .line 25
    new-instance v1, Lx/a;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lx/a;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lx/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0}, Lcom/alipay/sdk/app/AuthTask;->e(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/alipay/sdk/util/f;

    .line 41
    .line 42
    new-instance v3, Lcom/alipay/sdk/app/a;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v0, v3}, Lcom/alipay/sdk/util/f;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/alipay/sdk/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "failed"

    .line 55
    .line 56
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object p2, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 92
    .line 93
    :goto_1
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p2

    .line 98
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 111
    .line 112
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2

    .line 116
    :catch_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :goto_2
    monitor-exit p0

    .line 132
    return-object p2

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    monitor-exit p0

    .line 135
    throw p1
.end method
