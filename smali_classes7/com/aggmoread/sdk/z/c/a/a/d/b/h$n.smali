.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 6

    if-eqz p3, :cond_0

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;

    invoke-direct {p2, p0, p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    :goto_0
    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->D:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result p3

    if-gt p2, p3, :cond_1

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->n:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->C:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result p3

    if-gt p2, p3, :cond_2

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$c;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->m:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result p2

    if-lez p2, :cond_3

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->F:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result p3

    if-gt p2, p3, :cond_3

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$d;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->l:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result p2

    if-lez p2, :cond_4

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->E:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result p3

    if-gt p2, p3, :cond_4

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$e;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$e;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_0

    :cond_4
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->x:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    aput-object v1, p3, v0

    const-string v0, "REQ_%s_LAST"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-lez p2, :cond_5

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object p2

    const-wide/16 v4, 0x0

    invoke-virtual {p2, p3, v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-ltz p2, :cond_5

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$f;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "AMSdkThread"

    const-string p3, "cc bid "

    invoke-static {p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p2, p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    const-string p2, "AMGTAG"

    const-string p3, "rs "

    invoke-static {p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    :goto_1
    return-void
.end method
