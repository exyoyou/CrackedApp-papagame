.class public Lcn/fly/tcp/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tcp/c/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/fly/tcp/a/c;

.field private final b:Lcn/fly/tcp/c/d$a;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/c/d;->a:Lcn/fly/tcp/a/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/c/d;->b:Lcn/fly/tcp/c/d$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(J)Lcn/fly/tcp/d/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/c/d;->a:Lcn/fly/tcp/a/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcn/fly/tcp/b/a;

    const/16 v1, 0x3ed

    invoke-direct {v0, v1}, Lcn/fly/tcp/b/a;-><init>(I)V

    .line 3
    iput-wide p1, v0, Lcn/fly/tcp/b/a;->c:J

    .line 4
    iget-object v1, p0, Lcn/fly/tcp/c/d;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v1, v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;

    move-result-object v1

    .line 5
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP sd ty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/fly/tcp/b/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , u = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JZ)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcn/fly/tcp/c/d;->a:Lcn/fly/tcp/a/c;

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/c/d;->b:Lcn/fly/tcp/c/d$a;

    invoke-interface {v0}, Lcn/fly/tcp/c/d$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "repeat"

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 12
    new-instance v1, Lcn/fly/tcp/b/a;

    iget-object v2, p0, Lcn/fly/tcp/c/d;->b:Lcn/fly/tcp/c/d$a;

    invoke-interface {v2, v0, p3}, Lcn/fly/tcp/c/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3ef

    invoke-direct {v1, v2, v0}, Lcn/fly/tcp/b/a;-><init>(ILjava/lang/String;)V

    .line 13
    iput-wide p1, v1, Lcn/fly/tcp/b/a;->c:J

    .line 14
    iget-object v0, p0, Lcn/fly/tcp/c/d;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, v1}, Lcn/fly/tcp/a/c;->b(Lcn/fly/tcp/b/a;)Z

    .line 15
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcn/fly/tcp/b/a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , u = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcn/fly/tcp/d/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcn/fly/tcp/d/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1, v0}, Lcn/fly/tcp/d/a;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
