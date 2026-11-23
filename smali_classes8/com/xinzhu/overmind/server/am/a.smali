.class public Lcom/xinzhu/overmind/server/am/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/am/a$c;,
        Lcom/xinzhu/overmind/server/am/a$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/server/am/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/server/am/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/am/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;II)Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v6, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/ComponentName;

    .line 7
    .line 8
    iget-boolean v1, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    iget v2, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 22
    .line 23
    invoke-static {v2}, Lcom/xinzhu/overmind/client/g;->m(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget v3, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 45
    .line 46
    move-object v0, v6

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move v4, p4

    .line 50
    move v5, p5

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;III)V

    .line 52
    .line 53
    .line 54
    return-object v6
.end method

.method private c(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xinzhu/overmind/server/am/a$c;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->e(Lcom/xinzhu/overmind/server/am/a$c;)Lcom/xinzhu/overmind/server/am/a$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/xinzhu/overmind/server/am/a$c;

    .line 13
    .line 14
    return-object p1
.end method

.method private e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/xinzhu/overmind/server/am/a$c;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/a$c;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v2, Landroid/content/Intent$FilterComparison;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method private j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 10

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    move v6, p4

    .line 28
    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    iget-object p3, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 35
    .line 36
    monitor-enter p3

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/xinzhu/overmind/server/am/a$b;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/am/a$b;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/a$b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :try_start_1
    new-instance v4, Lcom/xinzhu/overmind/server/am/a$a;

    .line 62
    .line 63
    invoke-direct {v4, p0, p2}, Lcom/xinzhu/overmind/server/am/a$a;-><init>(Lcom/xinzhu/overmind/server/am/a;Landroid/os/IBinder;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v4

    .line 71
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/server/am/a$b;->a(Lcom/xinzhu/overmind/server/am/a$b;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/server/am/a$b;->c(Lcom/xinzhu/overmind/server/am/a$b;Landroid/content/Intent;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    :goto_1
    if-nez p2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/am/a$c;->i()I

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {p4, v0}, Lcom/xinzhu/overmind/server/am/a$c;->f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;

    .line 92
    .line 93
    .line 94
    :cond_3
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {p4}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    move-object v0, p0

    .line 104
    move-object v1, p1

    .line 105
    move v5, p5

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/am/a;->b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;II)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p4, p1}, Lcom/xinzhu/overmind/server/am/a$c;->b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p1

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string p3, "Unable to create "

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object p3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public f(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public g(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object p2

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_1
    new-instance p2, Lcom/xinzhu/overmind/entity/UnbindRecord;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/UnbindRecord;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/UnbindRecord;->y(Landroid/content/ComponentName;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/UnbindRecord;->x(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/UnbindRecord;->z(I)V

    .line 52
    .line 53
    .line 54
    return-object p2
.end method

.method public h(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 14
    .line 15
    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2, p2, p3}, Lcom/xinzhu/overmind/server/h;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    :try_start_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 27
    .line 28
    invoke-interface {p2, p1}, Lcom/xinzhu/overmind/client/c;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v7, -0x1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    move v6, p3

    .line 29
    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/am/a$c;->h()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    move v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/am/a;->b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;II)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/server/am/a$c;->b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p3, "Unable to create "

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p3, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    monitor-exit p2

    .line 12
    return-object p3

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    monitor-exit p2

    .line 24
    return-object p3

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->a(Lcom/xinzhu/overmind/server/am/a$c;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-exit p2

    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/xinzhu/overmind/server/am/a$b;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Lcom/xinzhu/overmind/server/am/a$b;->b(Lcom/xinzhu/overmind/server/am/a$b;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p2, v0}, Lcom/xinzhu/overmind/server/am/a$c;->f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/am/a$c;->g()I

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
.end method
