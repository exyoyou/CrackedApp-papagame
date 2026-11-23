.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getRecentTasks"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Lsa/r;->f([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lsa/w;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/xinzhu/haunted/android/content/pm/o;

    .line 15
    .line 16
    invoke-direct {p3, p1}, Lcom/xinzhu/haunted/android/content/pm/o;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/xinzhu/haunted/android/content/pm/o;->f()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 49
    .line 50
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lma/a;->j(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :try_start_1
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/client/hook/proxies/am/e;->a(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/ComponentName;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/client/hook/proxies/am/f;->a(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v3, 0x17

    .line 75
    .line 76
    if-lt v2, v3, :cond_1

    .line 77
    .line 78
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->e:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/client/hook/proxies/am/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/ComponentName;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/client/hook/proxies/am/h;->a(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-eqz p2, :cond_4

    .line 99
    .line 100
    invoke-static {p1}, Lsa/w;->a(Ljava/util/List;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :cond_4
    return-object p1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method
