.class Lcn/fly/tcp/e/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tcp/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/e/b;->d()Lcn/fly/tcp/c/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/e/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "rcv pu5h msg, but send token is 0"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    move-result-object v0

    iget-object v1, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    invoke-static {v1}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/fly/tcp/e/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/fly/tcp/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/fly/tcp/a/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->b(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->b(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP ignore stale messageReceived"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/b$4;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/a;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
