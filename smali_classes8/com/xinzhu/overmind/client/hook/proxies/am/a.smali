.class public Lcom/xinzhu/overmind/client/hook/proxies/am/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "SourceFile"


# static fields
.field public static b:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Ll9/b;

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p1, v0}, Ll9/b;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ll9/b;->e(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/xinzhu/haunted/android/app/b$a;

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/b$a;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move-object v0, p2

    .line 35
    check-cast v0, Landroid/os/IInterface;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;->c(Landroid/os/IInterface;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    check-cast p2, Landroid/os/IInterface;

    .line 41
    .line 42
    sput-object p2, Lcom/xinzhu/overmind/client/hook/proxies/am/a;->b:Landroid/os/IInterface;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method protected onBindMethod()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->u()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "startAppLockService"

    .line 111
    .line 112
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void
.end method
