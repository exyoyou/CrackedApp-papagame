.class public Lcom/papa/controller/core/ControllerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/core/ControllerManager$ControllerManagerException;,
        Lcom/papa/controller/core/ControllerManager$d;,
        Lcom/papa/controller/core/ControllerManager$c;
    }
.end annotation


# static fields
.field private static i:Lcom/papa/controller/core/ControllerManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

.field private d:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

.field private e:Lcom/papa/controller/component/inputmanagercompat/a;

.field private f:Lcom/papa/controller/component/inputmanagercompat/a$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ControllerManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/ControllerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/papa/controller/core/ControllerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/papa/controller/core/ControllerManager$c;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method public static h(Landroid/content/Context;)Lcom/papa/controller/core/ControllerManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/ControllerManager;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    .line 13
    .line 14
    return-object p0
.end method

.method private i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcom/papa/controller/core/ControllerManager$ControllerManagerException;

    .line 18
    .line 19
    const-string v1, "Context is required!"

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/papa/controller/core/ControllerManager$ControllerManagerException;-><init>(Lcom/papa/controller/core/ControllerManager;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public static varargs j(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method private k(I)Z
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x401

    const/16 v1, 0x401

    if-eq v0, v1, :cond_1

    const v0, 0x1000010

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized l()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->m(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0

    .line 45
    throw v0
.end method

.method private declared-synchronized m(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/papa/controller/core/ControllerManager$d;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/papa/controller/core/ControllerManager$d;->onControllerDeviceAdded(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :cond_3
    :goto_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method private declared-synchronized n(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/papa/controller/core/ControllerManager$d;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/papa/controller/core/ControllerManager$d;->onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :cond_3
    :goto_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method private declared-synchronized o()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2}, Lcom/papa/controller/core/ControllerManager;->n(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->m(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_1
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p0

    .line 80
    throw v0
.end method

.method private declared-synchronized p()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->n(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0

    .line 45
    throw v0
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/papa/controller/core/ControllerManager$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager$a;-><init>(Lcom/papa/controller/core/ControllerManager;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->d:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->u(Lcom/papa/controller/component/bluetooth/BluetoothManager$c;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/papa/controller/component/inputmanagercompat/a$a;->a(Landroid/content/Context;)Lcom/papa/controller/component/inputmanagercompat/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/papa/controller/core/ControllerManager$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager$b;-><init>(Lcom/papa/controller/core/ControllerManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->f:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 25
    .line 26
    new-instance v2, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0, v2}, Lcom/papa/controller/component/inputmanagercompat/a;->a(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->y()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->f:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a;->c(Lcom/papa/controller/component/inputmanagercompat/a$b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
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
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    invoke-interface {v5}, Lcom/papa/controller/component/inputmanagercompat/a;->d()[I

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    array-length v7, v5

    .line 47
    const/4 v8, 0x0

    .line 48
    :goto_0
    if-ge v8, v7, :cond_4

    .line 49
    .line 50
    aget v9, v5, v8

    .line 51
    .line 52
    iget-object v10, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 53
    .line 54
    invoke-interface {v10, v9}, Lcom/papa/controller/component/inputmanagercompat/a;->b(I)Landroid/view/InputDevice;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    if-nez v9, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    :try_start_0
    const-string v12, "isExternal"

    .line 70
    .line 71
    new-array v13, v6, [Ljava/lang/Object;

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    invoke-static {v9, v12, v14, v13}, Lcom/papa/controller/core/ControllerManager;->j(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    check-cast v12, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-nez v12, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v12

    .line 88
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-direct {p0, v11}, Lcom/papa/controller/core/ControllerManager;->k(I)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_3

    .line 96
    .line 97
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    iget-object v5, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->k()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_7

    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 145
    .line 146
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    const/16 v9, 0x500

    .line 155
    .line 156
    if-ne v8, v9, :cond_5

    .line 157
    .line 158
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v9, 0x1e

    .line 161
    .line 162
    if-lt v8, v9, :cond_6

    .line 163
    .line 164
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    new-instance v10, Lcom/papa/controller/core/ControllerManager$c;

    .line 194
    .line 195
    invoke-direct {v10}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v7}, Lcom/papa/controller/core/ControllerManager$c;->f(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v8}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v9}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catch_1
    move-exception v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_9

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 238
    .line 239
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-nez v8, :cond_8

    .line 248
    .line 249
    const/4 v1, 0x0

    .line 250
    goto :goto_3

    .line 251
    :cond_9
    const/4 v1, 0x1

    .line 252
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    if-le v5, v7, :cond_10

    .line 258
    .line 259
    const-string v8, "OTG"

    .line 260
    .line 261
    const-string v9, ""

    .line 262
    .line 263
    if-nez v1, :cond_d

    .line 264
    .line 265
    if-nez v7, :cond_a

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    sub-int/2addr v5, v7

    .line 269
    :goto_4
    if-ge v6, v5, :cond_10

    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    if-nez v6, :cond_b

    .line 280
    .line 281
    move-object v2, v9

    .line 282
    goto :goto_5

    .line 283
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    if-nez v6, :cond_c

    .line 314
    .line 315
    move-object v3, v9

    .line 316
    goto :goto_6

    .line 317
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    new-instance v3, Lcom/papa/controller/core/ControllerManager$c;

    .line 340
    .line 341
    invoke-direct {v3}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v1}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v2}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_10

    .line 365
    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    check-cast v3, Landroid/view/InputDevice;

    .line 371
    .line 372
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_e

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :cond_e
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    if-nez v5, :cond_f

    .line 403
    .line 404
    move-object v5, v9

    .line 405
    goto :goto_9

    .line 406
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    :goto_9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    new-instance v7, Lcom/papa/controller/core/ControllerManager$c;

    .line 429
    .line 430
    invoke-direct {v7}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v3}, Lcom/papa/controller/core/ControllerManager$c;->f(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v7, v6}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v5}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_10
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public r(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->s()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->t()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->w()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
