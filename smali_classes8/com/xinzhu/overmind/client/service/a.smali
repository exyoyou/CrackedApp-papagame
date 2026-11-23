.class public Lcom/xinzhu/overmind/client/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/service/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Service;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/client/service/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/service/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$b;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/service/a$b;-><init>(Lcom/xinzhu/overmind/client/service/a;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/client/service/a$b;->e(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    :try_start_0
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$a;

    .line 28
    .line 29
    invoke-direct {p1, p0, p2, v0}, Lcom/xinzhu/overmind/client/service/a$a;-><init>(Lcom/xinzhu/overmind/client/service/a;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/xinzhu/overmind/client/service/a$b;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->a()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-gtz p1, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public d(Landroid/content/Intent;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->b()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public e(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->c()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/xinzhu/overmind/client/service/a$b;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$b;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/service/a$b;-><init>(Lcom/xinzhu/overmind/client/service/a;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p1
.end method

.method public g()Landroid/app/Service;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a;->a:Landroid/app/Service;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/client/service/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

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
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/xinzhu/overmind/client/service/a$b;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/xinzhu/overmind/client/service/a$b;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v1
.end method

.method public j(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->c()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public k(Landroid/content/Intent;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->d()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/service/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xinzhu/overmind/client/service/a;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public n(Landroid/app/Service;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->a:Landroid/app/Service;

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/client/service/a;->d:I

    .line 2
    .line 3
    return-void
.end method
