.class public Lcom/xinzhu/overmind/server/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "ClientServiceManager"

.field private static d:Lcom/xinzhu/overmind/server/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/client/service/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/b;->d:Lcom/xinzhu/overmind/server/b;

    .line 7
    .line 8
    return-void
.end method

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

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
    check-cast p1, Lcom/xinzhu/overmind/client/service/a;

    .line 13
    .line 14
    return-object p1
.end method

.method public static b()Lcom/xinzhu/overmind/server/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/b;->d:Lcom/xinzhu/overmind/server/b;

    .line 2
    .line 3
    return-object v0
.end method

.method private c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Z)Landroid/app/Service;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    if-nez p3, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/client/f;->createService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance p3, Lcom/xinzhu/overmind/client/service/a;

    .line 31
    .line 32
    invoke-direct {p3}, Lcom/xinzhu/overmind/client/service/a;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/client/service/a;->n(Landroid/app/Service;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 39
    .line 40
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method private l(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public d(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 8
    .line 9
    iget p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mFlags:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "ClientServiceManager"

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "restarting service "

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v4, p1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "onBind: "

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    and-int/2addr p1, v3

    .line 73
    const/4 v5, 0x0

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Z)Landroid/app/Service;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "bind without bind_auto_create flag, ignore: "

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {v4, p1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/client/service/a;->k(Landroid/content/Intent;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/client/service/a;->j(Landroid/content/Intent;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->l()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v5}, Lcom/xinzhu/overmind/client/service/a;->m(Z)V

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/client/service/a;->e(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/client/service/a;->b(Landroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_1
    return-object v2
.end method

.method public e(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/app/Service;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public h(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {p0, v0, v2, v3}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Z)Landroid/app/Service;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "ClientServiceManager"

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "onStartCommand unexpected behavior"

    .line 36
    .line 37
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    iget-object v3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 51
    .line 52
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "operation"

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    const-string v5, "start_service"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p2, "stop_service"

    .line 74
    .line 75
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-object p2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/b;->stopService(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget p3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mUserId:I

    .line 91
    .line 92
    invoke-virtual {p2, p1, p3}, Lma/a;->q(Landroid/content/Intent;I)V

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p2, "get unexpected <operation> "

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    :goto_0
    iget v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mStartId:I

    .line 118
    .line 119
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/client/service/a;->o(I)V

    .line 120
    .line 121
    .line 122
    :try_start_0
    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 123
    .line 124
    iget v3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mStartId:I

    .line 125
    .line 126
    invoke-virtual {v0, v2, p2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget p3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mUserId:I

    .line 135
    .line 136
    invoke-virtual {v0, p1, p3}, Lma/a;->s(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    return p2

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    return v1
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Landroid/app/Service;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "ClientServiceManager"

    .line 45
    .line 46
    const-string v0, "onTrimMemory"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public j(Landroid/content/Intent;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 22
    .line 23
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, p1, v4}, Lma/a;->r(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    iget-object v4, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v5, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    invoke-direct {p0, v4, v5, v2}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Z)Landroid/app/Service;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    iget-object v0, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3}, Lcom/xinzhu/overmind/entity/UnbindRecord;->w()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v5, 0x1

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x0

    .line 72
    :goto_0
    if-nez v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/service/a;->c(Landroid/content/Intent;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_6

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v4, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 81
    .line 82
    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/app/Service;->onDestroy()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0, p1, v3}, Lma/a;->q(Landroid/content/Intent;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/b;->l(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lcom/xinzhu/overmind/server/b;->b:Landroid/app/Service;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    invoke-virtual {v0, v5}, Lcom/xinzhu/overmind/client/service/a;->m(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    return v2
.end method

.method public k(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/service/a;->e(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public stopService(Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "stopService\uff1a"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "ClientServiceManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->i()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-gtz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->h()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    :goto_0
    if-eqz v2, :cond_3

    .line 59
    .line 60
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v3, "stopService real destroy\uff1a"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->l(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    const-string p1, "stopService stubservice"

    .line 103
    .line 104
    invoke-static {v1, p1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/xinzhu/overmind/server/b;->b:Landroid/app/Service;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return-void
.end method
