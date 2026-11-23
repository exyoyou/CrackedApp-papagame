.class public Lcn/fly/tcp/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tcp/c/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/fly/tcp/c/d;

.field private final b:Lcn/fly/tcp/c/b;

.field private final c:Lcn/fly/tcp/c/c$a;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/c/d;Lcn/fly/tcp/c/b;Lcn/fly/tcp/c/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/c/c;->b:Lcn/fly/tcp/c/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    .line 9
    .line 10
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 33
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcn/fly/tcp/b/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    iget-object v0, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    iget-object v2, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcn/fly/tcp/c/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 16
    :cond_1
    iput-object v0, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcn/fly/tcp/b/a;Lcn/fly/tcp/d/a;)Z
    .locals 12

    .line 17
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pu5h-msg msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/fly/tcp/b/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    iget-object v1, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/fly/tcp/c/c$a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "004BedMeje"

    .line 19
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "expire"

    .line 20
    invoke-static {v0, v1, v2}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v7

    const-string v1, "workId"

    .line 21
    invoke-direct {p0, v0, v1}, Lcn/fly/tcp/c/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "004!ed8eje"

    .line 22
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/fly/tcp/c/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string p2, "TP pu5h-msg data empty"

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v1, "needRepeat"

    .line 25
    invoke-static {v0, v1, v2}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v3, "004j>fd.kg"

    .line 26
    invoke-static {v3}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v8

    const-string v0, " data = "

    if-eq v8, v11, :cond_5

    const/4 v3, 0x2

    if-ne v8, v3, :cond_3

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "innermsg-pu5h msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcn/fly/tcp/c/c;->b:Lcn/fly/tcp/c/b;

    iget-wide v4, p1, Lcn/fly/tcp/b/a;->c:J

    move-object v10, p2

    invoke-virtual/range {v3 .. v10}, Lcn/fly/tcp/c/b;->a(JLjava/lang/String;IILjava/lang/String;Lcn/fly/tcp/d/a;)Z

    move-result p2

    if-eqz v1, :cond_4

    .line 29
    iget-object v0, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    iget-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    invoke-virtual {v0, v1, v2, p2}, Lcn/fly/tcp/c/d;->a(JZ)V

    :cond_4
    return v11

    .line 30
    :cond_5
    :goto_1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "innermsg-mlp msgType: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return v2
.end method

.method private b(Lcn/fly/tcp/b/a;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "redir-msg msgType: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p1, Lcn/fly/tcp/b/a;->b:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " body = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    .line 38
    .line 39
    iget-object p1, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcn/fly/tcp/c/c$a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "006$edelegEeWejBf"

    .line 46
    .line 47
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcn/fly/tcp/c/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    .line 62
    .line 63
    invoke-interface {v0, p1}, Lcn/fly/tcp/c/c$a;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private c(Lcn/fly/tcp/b/a;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "trans-msg msgType: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p1, Lcn/fly/tcp/b/a;->b:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " body = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcn/fly/tcp/b/a;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/c/c;->c:Lcn/fly/tcp/c/c$a;

    invoke-interface {v1, p1}, Lcn/fly/tcp/c/c$a;->a(Lcn/fly/tcp/a/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    invoke-virtual {p1, v0}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    iget-wide v1, p2, Lcn/fly/tcp/b/a;->c:J

    invoke-virtual {p1, v1, v2}, Lcn/fly/tcp/c/d;->a(J)Lcn/fly/tcp/d/a;

    move-result-object v0

    .line 4
    invoke-direct {p0, p2}, Lcn/fly/tcp/c/c;->a(Lcn/fly/tcp/b/a;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    invoke-virtual {p1, v0}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget p1, p2, Lcn/fly/tcp/b/a;->b:I

    const/16 v1, 0x2329

    if-ne p1, v1, :cond_2

    .line 7
    invoke-direct {p0, p2, v0}, Lcn/fly/tcp/c/c;->a(Lcn/fly/tcp/b/a;Lcn/fly/tcp/d/a;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 v1, 0x232a

    if-ne p1, v1, :cond_3

    .line 8
    invoke-direct {p0, p2}, Lcn/fly/tcp/c/c;->b(Lcn/fly/tcp/b/a;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x232c

    if-ne p1, v1, :cond_4

    .line 9
    invoke-direct {p0, p2}, Lcn/fly/tcp/c/c;->c(Lcn/fly/tcp/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :goto_2
    iget-object p1, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    invoke-virtual {p1, v0}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcn/fly/tcp/c/c;->a:Lcn/fly/tcp/c/d;

    invoke-virtual {p2, v0}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    .line 12
    throw p1
.end method
