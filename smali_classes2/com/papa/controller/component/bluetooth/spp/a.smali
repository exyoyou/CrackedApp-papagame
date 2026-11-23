.class public Lcom/papa/controller/component/bluetooth/spp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/spp/a$d;,
        Lcom/papa/controller/component/bluetooth/spp/a$e;,
        Lcom/papa/controller/component/bluetooth/spp/a$f;,
        Lcom/papa/controller/component/bluetooth/spp/a$g;
    }
.end annotation


# instance fields
.field private a:Lcom/papa/controller/component/bluetooth/spp/a$f;

.field private b:Lcom/papa/controller/component/bluetooth/spp/a$g;

.field private c:Lcom/papa/controller/component/bluetooth/spp/a$e;

.field private d:Lcom/papa/controller/component/bluetooth/spp/a$d;

.field private e:Landroid/content/Context;

.field private f:Landroid/bluetooth/BluetoothAdapter;

.field private g:Lcom/papa/controller/component/bluetooth/spp/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/papa/controller/component/bluetooth/spp/a$e;

.field private r:I

.field private final s:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    .line 38
    .line 39
    iput v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 40
    .line 41
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/a$b;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/spp/a$b;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->s:Landroid/os/Handler;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    .line 56
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->q:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/spp/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/papa/controller/component/bluetooth/spp/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/papa/controller/component/bluetooth/spp/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic p(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u(Lcom/papa/controller/component/bluetooth/spp/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public A(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/c;->r:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->j(Landroid/bluetooth/BluetoothDevice;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->j(Landroid/bluetooth/BluetoothDevice;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method

.method public I()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method

.method public J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public L()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public P(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "\r\n"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_0
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public Q([BZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    array-length p2, p1

    .line 13
    add-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    new-array v0, p2, [B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p1

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    aget-byte v2, p1, v1

    .line 22
    .line 23
    aput-byte v2, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 p1, p2, -0x2

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    aput-byte v1, v0, p1

    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    const/16 p1, 0xd

    .line 37
    .line 38
    aput-byte p1, v0, p2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public R(Lcom/papa/controller/component/bluetooth/spp/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 2
    .line 3
    return-void
.end method

.method public S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 2
    .line 3
    return-void
.end method

.method public T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 2
    .line 3
    return-void
.end method

.method public U(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    .line 8
    .line 9
    return-void
.end method

.method public V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 2
    .line 3
    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->s:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 11
    .line 12
    return-void
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method public startService(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 17
    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/papa/controller/component/bluetooth/spp/a$a;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/papa/controller/component/bluetooth/spp/a$a;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x1f4

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/papa/controller/component/bluetooth/spp/a$d;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->I()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->H()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    array-length v6, v2

    .line 40
    if-ge v5, v6, :cond_2

    .line 41
    .line 42
    aget-object v6, v2, v5

    .line 43
    .line 44
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    aget-object v6, v3, v5

    .line 51
    .line 52
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    aget-object v6, v2, v5

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p1, Lcom/papa/controller/component/bluetooth/spp/a$c;

    .line 64
    .line 65
    invoke-direct {p1, p0, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a$c;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->q:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    .line 71
    .line 72
    .line 73
    iput v4, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 74
    .line 75
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    aget-object v1, v2, v4

    .line 80
    .line 81
    aget-object v2, v3, v4

    .line 82
    .line 83
    invoke-interface {p1, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_4

    .line 91
    .line 92
    iget p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    .line 105
    .line 106
    const-string v0, "Device name mismatch"

    .line 107
    .line 108
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
