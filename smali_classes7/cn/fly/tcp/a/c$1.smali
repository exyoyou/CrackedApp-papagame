.class Lcn/fly/tcp/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tcp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/a/c;->c()Lcn/fly/tcp/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/a/c;


# direct methods
.method constructor <init>(Lcn/fly/tcp/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tcp/a/a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP ignore stale sessionOpened"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-static {v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/c;)Lcn/fly/tcp/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p1}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "TP ignore stale messageReceived"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-static {v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/c;)Lcn/fly/tcp/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "TP ignore stale exceptionCaught"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-static {v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/c;)Lcn/fly/tcp/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1, p2}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "TP ignore stale sessionClosed"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/a/c$1;->a:Lcn/fly/tcp/a/c;

    invoke-static {v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/c;)Lcn/fly/tcp/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0, p1, p2}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Z)V

    :cond_1
    return-void
.end method
