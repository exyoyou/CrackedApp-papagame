.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
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
    const-string v0, "getRunningAppProcesses"

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
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 32
    .line 33
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lma/a;->c(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget v2, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 82
    .line 83
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v2, v3, :cond_4

    .line 88
    .line 89
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget v2, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 94
    .line 95
    iput v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 96
    .line 97
    iget-object v1, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    iput v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 103
    .line 104
    iput v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 105
    .line 106
    iput-object p2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 107
    .line 108
    iput-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    return-object p1

    .line 112
    :cond_6
    :goto_1
    return-object p2
.end method
