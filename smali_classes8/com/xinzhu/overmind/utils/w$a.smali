.class public Lcom/xinzhu/overmind/utils/w$a;
.super Lcom/xinzhu/overmind/utils/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/utils/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected g:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/w;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/xinzhu/overmind/utils/w$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/utils/w$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/xinzhu/overmind/utils/w;->a:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-object v0
.end method

.method public static B(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 2

    .line 1
    const-class v0, Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p0, v1, v0}, Lcom/xinzhu/overmind/utils/w$a;->D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/w$a;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static C(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/w$a;->D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/w$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/w$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/w$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    move-object v0, p0

    .line 13
    goto :goto_0

    .line 14
    :catchall_1
    move-exception p1

    .line 15
    :goto_0
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/w$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/w$a;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static J(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/w$a;->z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/w$a;->z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/utils/w$a;->u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/w$a;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Exception;

    .line 4
    .line 5
    const-string v1, "Type was null!"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/w$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/w$a;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public E(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/w;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method protected G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method protected H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/w;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

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

.method public I()Lcom/xinzhu/overmind/utils/w$a;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/utils/w;->s()Lcom/xinzhu/overmind/utils/w;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/w$a;->u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/w;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 18
    .line 19
    return-object v1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 18
    .line 19
    return-object v1
.end method

.method public bridge synthetic e([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/w$a;->v([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/w$a;->w(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0}, Lcom/xinzhu/overmind/utils/w;->i()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 18
    .line 19
    return-object v1
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 18
    .line 19
    return-object v1
.end method

.method public bridge synthetic k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/w$a;->y(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs l([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->l([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 18
    .line 19
    return-object v1
.end method

.method public bridge synthetic q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/w$a;->E(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/w$a;->F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic s()Lcom/xinzhu/overmind/utils/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->I()Lcom/xinzhu/overmind/utils/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->a(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public varargs v([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/w$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->e([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/w;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public x()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs y(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/w$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/w$a;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/w;->k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/w$a;->g:Ljava/lang/Throwable;

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method
