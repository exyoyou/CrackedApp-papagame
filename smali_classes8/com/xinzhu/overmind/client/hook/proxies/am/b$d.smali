.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
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
    const-string v0, "bindService"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lsa/r;->f([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    check-cast v1, Landroid/content/Intent;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    aget-object v2, p3, v2

    .line 11
    .line 12
    move-object v5, v2

    .line 13
    check-cast v5, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    aget-object v2, p3, v2

    .line 17
    .line 18
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x4

    .line 23
    aget-object v2, p3, v8

    .line 24
    .line 25
    move-object v9, v2

    .line 26
    check-cast v9, Landroid/app/IServiceConnection;

    .line 27
    .line 28
    invoke-static {p3}, Lsa/r;->f([Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lsa/r;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v10, 0x0

    .line 43
    invoke-virtual {v2, v1, v10, v5, v3}, Lma/g;->C(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    if-eqz v11, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;->f()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    aput-object v3, p3, v2

    .line 58
    .line 59
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v9}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    move-object v4, v3

    .line 71
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    move-object v3, v1

    .line 76
    invoke-virtual/range {v2 .. v7}, Lma/a;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;II)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    new-instance v3, Landroid/content/ComponentName;

    .line 83
    .line 84
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 85
    .line 86
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v3}, Lcom/xinzhu/overmind/client/hook/delegate/c;->createProxy(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)Landroid/app/IServiceConnection;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    aput-object v3, p3, v8

    .line 98
    .line 99
    :cond_2
    if-eqz v2, :cond_3

    .line 100
    .line 101
    aput-object v2, p3, v0

    .line 102
    .line 103
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lna/c;->e(Landroid/content/ComponentName;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-static {p3}, Lsa/r;->f([Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string p2, "bindService failed and skip "

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string p2, "ActivityManagerStub"

    .line 144
    .line 145
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1
.end method

.method protected f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
