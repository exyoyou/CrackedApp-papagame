.class public Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "OsStub"


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lea/a;->b()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic d([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->e([Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static e([Ljava/lang/Object;I)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    aget-object v0, p0, p1

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    aget-object v0, p0, p1

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getBaseVUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    aput-object v0, p0, p1

    .line 45
    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    invoke-static {}, Lea/a;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lea/a;->c(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onBindMethod()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
