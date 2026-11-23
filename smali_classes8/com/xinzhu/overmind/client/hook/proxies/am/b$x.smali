.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/IIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic f(Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "registerReceiver"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-static {p3, v0}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "registerReceiver stub get no arg with type IntentFilter "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 29
    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    add-int/lit8 v3, v2, 0x1

    .line 33
    .line 34
    invoke-static {p3}, Lsa/r;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object v4, p3, v2

    .line 39
    .line 40
    invoke-virtual {p0, p3, v3}, Lcom/xinzhu/overmind/client/hook/e;->e([Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    aget-object v2, p3, v0

    .line 44
    .line 45
    check-cast v2, Landroid/content/IntentFilter;

    .line 46
    .line 47
    invoke-static {v2}, Lna/c;->l(Landroid/content/IntentFilter;)V

    .line 48
    .line 49
    .line 50
    aput-object v2, p3, v0

    .line 51
    .line 52
    aget-object v0, p3, v1

    .line 53
    .line 54
    check-cast v0, Landroid/os/IInterface;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    instance-of v3, v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$a;

    .line 73
    .line 74
    invoke-direct {v4, p0, v3}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;Landroid/os/IBinder;)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;->a:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroid/content/IIntentReceiver;

    .line 88
    .line 89
    if-nez v4, :cond_1

    .line 90
    .line 91
    new-instance v4, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;

    .line 92
    .line 93
    invoke-direct {v4, v0, v2}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;-><init>(Landroid/os/IInterface;Landroid/content/IntentFilter;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;->a:Ljava/util/WeakHashMap;

    .line 97
    .line 98
    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_1
    new-instance v2, Lcom/xinzhu/haunted/android/app/v$a$b;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/app/v$a$b;-><init>(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/v$a$b;->b()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    new-instance v2, Lcom/xinzhu/haunted/android/app/v$a;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/app/v$a;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/app/v$a;->c(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    aput-object v4, p3, v1

    .line 127
    .line 128
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/content/Intent;

    .line 133
    .line 134
    invoke-static {p1}, Lna/c;->i(Landroid/content/Intent;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method
