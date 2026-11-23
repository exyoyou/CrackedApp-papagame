.class public Lcom/papa/controller/core/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/core/f$e;
    }
.end annotation


# static fields
.field private static j:Lcom/papa/controller/core/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/core/c;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:I

.field g:Lcom/papa/controller/component/bluetooth/BluetoothManager;

.field h:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/papa/controller/core/f$e;",
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/papa/controller/core/f;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/papa/controller/core/f;->e:Z

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/papa/controller/core/f;->f:I

    .line 19
    .line 20
    iput-object p1, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/f;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/f;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/papa/controller/core/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/f;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/papa/controller/core/f;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/f;->m(Ljava/lang/String;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/papa/controller/core/f;Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/f;->z(Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 22
    .line 23
    :cond_1
    new-instance v0, Lcom/papa/controller/core/f$e;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/papa/controller/core/f$e;-><init>(Lcom/papa/controller/core/f;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/papa/controller/component/bluetooth/spp/a;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 43
    .line 44
    new-instance v2, Lcom/papa/controller/core/PadInfo;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/papa/controller/core/PadInfo;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 50
    .line 51
    iget v3, p0, Lcom/papa/controller/core/f;->f:I

    .line 52
    .line 53
    add-int/lit8 v4, v3, 0x1

    .line 54
    .line 55
    iput v4, p0, Lcom/papa/controller/core/f;->f:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/papa/controller/core/PadInfo;->W(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->L()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance v0, Lcom/papa/controller/core/f$b;

    .line 73
    .line 74
    invoke-direct {v0, p0, p1}, Lcom/papa/controller/core/f$b;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/papa/controller/core/f$c;

    .line 81
    .line 82
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa/controller/core/f$c;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/papa/controller/core/f$d;

    .line 89
    .line 90
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa/controller/core/f$d;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x3

    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x3

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method private j(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/papa/controller/core/PadInfo;->a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;)Lcom/papa/controller/core/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/f;->j:Lcom/papa/controller/core/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/controller/core/f;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/controller/core/f;->j:Lcom/papa/controller/core/f;

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object v0
.end method

.method private m(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/core/hardware/a;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/a;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xf6

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/papa/controller/core/hardware/c;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/c;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->q(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/b;-><init>([B)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->p(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    .line 44
    .line 45
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/f;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->r(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/papa/controller/core/hardware/d;

    .line 53
    .line 54
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/d;-><init>([B)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->j(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

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
    iput-object v1, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/BluetoothManager;

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
    new-instance v0, Lcom/papa/controller/core/f$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/papa/controller/core/f$a;-><init>(Lcom/papa/controller/core/f;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/papa/controller/core/f;->h:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->u(Lcom/papa/controller/component/bluetooth/BluetoothManager$c;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/BluetoothManager;

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

.method private o()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private p(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/b;->k()[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lu7/a;->a([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/papa/controller/core/PadInfo;->a0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private q(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/papa/controller/core/f$e;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/a;->f()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    and-int/lit8 v2, v2, 0xf

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    shr-int/lit8 v1, v1, 0x4

    .line 31
    .line 32
    and-int/lit16 v1, v1, 0xff

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "."

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->n()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->o()[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->m()[B

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->k()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x1

    .line 72
    if-ne v5, v7, :cond_0

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v5, 0x0

    .line 77
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->l()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-ne p2, v7, :cond_1

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    :cond_1
    invoke-virtual {v0, v2}, Lcom/papa/controller/core/PadInfo;->i0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/papa/controller/core/PadInfo;->l0(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lu7/a;->a([B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {v0, p2}, Lcom/papa/controller/core/PadInfo;->p0(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Lu7/a;->a([B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0, p2}, Lcom/papa/controller/core/PadInfo;->k0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/PadInfo;->r0(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/PadInfo;->f0(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v5}, Lcom/papa/controller/core/PadInfo;->b0(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v6}, Lcom/papa/controller/core/PadInfo;->c0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method

.method private r(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->k()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->l()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->m()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne p2, v3, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_1
    invoke-virtual {p1, v0}, Lcom/papa/controller/core/PadInfo;->V(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/papa/controller/core/PadInfo;->m0(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lcom/papa/controller/core/PadInfo;->s0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method private w()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->M()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 57
    .line 58
    const-string v1, "Bluetooth is not enable!"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_3
    :goto_1
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    return-void
.end method

.method private z(Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/core/hardware/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/controller/core/hardware/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/hardware/e;->k(I)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/papa/controller/core/hardware/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/papa/controller/core/hardware/c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/c;->a()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/papa/controller/core/hardware/f;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/f;->a()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/papa/controller/core/hardware/b;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/b;->a()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public k()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/b;",
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
    iget-object v1, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/papa/controller/core/f$e;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->d()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->J()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->Q()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->E()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->b()I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    new-instance v2, Lcom/papa/controller/core/b;

    .line 72
    .line 73
    const-string v9, ""

    .line 74
    .line 75
    const-string v10, ""

    .line 76
    .line 77
    move-object v4, v2

    .line 78
    invoke-direct/range {v4 .. v11}, Lcom/papa/controller/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    :goto_1
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/papa/controller/core/f;->d:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/papa/controller/core/f;->f:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa/controller/core/f;->x()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(Lcom/papa/controller/core/c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/controller/core/f;->d:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/controller/core/f;->v()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 24
    .line 25
    new-instance v2, Lcom/papa/controller/core/hardware/g;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/papa/controller/core/hardware/g;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1, p2}, Lcom/papa/controller/core/hardware/g;->k(II)[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/core/f;->o()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa/controller/core/f;->n()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/papa/controller/core/f;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/papa/controller/core/f;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/f;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
