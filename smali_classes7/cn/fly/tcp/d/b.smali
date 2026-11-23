.class public Lcn/fly/tcp/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tcp/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/fly/tcp/a/c;

.field private final b:Lcn/fly/tcp/d/b$a;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/d/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/d/b;->a:Lcn/fly/tcp/a/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/d/b;->b:Lcn/fly/tcp/d/b$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tcp/b/a;I)Lcn/fly/tcp/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/b/a;",
            "I)",
            "Lcn/fly/tcp/b/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/d/b;->a:Lcn/fly/tcp/a/c;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/fly/tcp/d/b;->a(Lcn/fly/tcp/d/a;I)Lcn/fly/tcp/b/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/fly/tcp/b/a;Ljava/lang/String;I)Lcn/fly/tcp/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/b/a;",
            "Ljava/lang/String;",
            "I)",
            "Lcn/fly/tcp/b/c<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p3}, Lcn/fly/tcp/d/b;->a(Lcn/fly/tcp/b/a;I)Lcn/fly/tcp/b/c;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->b()Lcn/fly/tcp/b/a;

    move-result-object p1

    .line 12
    iget-object p3, p0, Lcn/fly/tcp/d/b;->b:Lcn/fly/tcp/d/b$a;

    iget-object v0, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-interface {p3, p2, v0}, Lcn/fly/tcp/d/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    .line 13
    iget-object p3, p0, Lcn/fly/tcp/d/b;->b:Lcn/fly/tcp/d/b$a;

    invoke-interface {p3, p2}, Lcn/fly/tcp/d/b$a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/fly/tcp/b/c;->a(Lcn/fly/tcp/b/a;Ljava/lang/Object;)Lcn/fly/tcp/b/c;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->b()Lcn/fly/tcp/b/a;

    move-result-object p1

    invoke-static {p1}, Lcn/fly/tcp/b/c;->b(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/b/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/fly/tcp/d/a;I)Lcn/fly/tcp/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/d/a;",
            "I)",
            "Lcn/fly/tcp/b/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_1

    int-to-long v0, p2

    .line 3
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lcn/fly/tcp/d/a;->a(JLjava/util/concurrent/TimeUnit;)Lcn/fly/tcp/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p2, p1, Lcn/fly/tcp/b/a;->b:I

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    .line 5
    invoke-static {p1}, Lcn/fly/tcp/b/c;->a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/b/c;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TP rp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "TP rp : null"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Lcn/fly/tcp/b/c;->b(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/b/c;

    move-result-object p1

    return-object p1
.end method
