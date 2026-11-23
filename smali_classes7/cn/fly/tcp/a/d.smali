.class public Lcn/fly/tcp/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tcp/a/b;


# instance fields
.field private final a:Lcn/fly/tcp/e/a;

.field private final b:Lcn/fly/tcp/e/b;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/e/a;Lcn/fly/tcp/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/a/d;->a:Lcn/fly/tcp/e/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/a/d;->b:Lcn/fly/tcp/e/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tcp/a/a;)V
    .locals 1

    .line 3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP sessionOpened"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/a/d;->b:Lcn/fly/tcp/e/b;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V

    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TP exceptionCaught : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Z)V
    .locals 2

    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TP sessionClosed, recon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/fly/tcp/a/d;->a:Lcn/fly/tcp/e/a;

    invoke-virtual {p1}, Lcn/fly/tcp/e/a;->l()V

    .line 6
    invoke-static {}, Lcn/fly/tcp/b;->a()Lcn/fly/tcp/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/fly/tcp/b;->a(Z)V

    return-void
.end method
