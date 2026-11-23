.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
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
    const-string v0, "getTasks"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lma/a;->j(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v2, 0x1d

    .line 47
    .line 48
    if-lt v1, v2, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-static {p3, v1}, Lcom/xinzhu/overmind/client/hook/proxies/am/i;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/Intent;

    .line 56
    .line 57
    invoke-static {p3, v1}, Lcom/xinzhu/overmind/client/hook/proxies/am/j;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->e:Landroid/content/ComponentName;

    .line 61
    .line 62
    invoke-static {p3, v1}, Lcom/xinzhu/overmind/client/hook/proxies/am/k;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-static {p3, v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/l;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p3

    .line 72
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    return-object p1
.end method
