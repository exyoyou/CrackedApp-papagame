.class Lcn/fly/commons/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/fly/commons/w$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/fly/commons/w$a;-><init>()V

    return-void
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[LGSM] SLR: onL"

    invoke-virtual {v0, v3, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 7
    invoke-static {}, Lcn/fly/commons/w;->a()Lcn/fly/commons/w;

    move-result-object v0

    new-instance v8, Lcn/fly/commons/w$a$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/fly/commons/w$a$1;-><init>(Lcn/fly/commons/w$a;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v8}, Lcn/fly/commons/w;->a(Lcn/fly/commons/w;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcn/fly/commons/aa;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    const-string p2, "[LGSM] SLR: U"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    sget-object p1, Lcn/fly/commons/ac;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcn/fly/commons/w$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcn/fly/commons/w$c;-><init>(Lcn/fly/commons/w$1;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(IILjava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[LGSM] SLR: onL"

    invoke-virtual {v0, v3, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 12
    invoke-static {}, Lcn/fly/commons/w;->a()Lcn/fly/commons/w;

    move-result-object v0

    new-instance v8, Lcn/fly/commons/w$a$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move v5, p1

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcn/fly/commons/w$a$2;-><init>(Lcn/fly/commons/w$a;Ljava/util/List;ILjava/lang/String;I)V

    invoke-static {v0, v8}, Lcn/fly/commons/w;->a(Lcn/fly/commons/w;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcn/fly/commons/aa;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    const-string p2, "[LGSM] SLR: U"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 15
    sget-object p1, Lcn/fly/commons/ac;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcn/fly/commons/w$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcn/fly/commons/w$c;-><init>(Lcn/fly/commons/w$1;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcn/fly/commons/w$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/fly/commons/w$a;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcn/fly/commons/w$a;->a:I

    .line 2
    iput p2, p0, Lcn/fly/commons/w$a;->b:I

    .line 3
    iput-object p3, p0, Lcn/fly/commons/w$a;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/fly/commons/w$a;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/fly/commons/w$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/fly/commons/w$a;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcn/fly/commons/w$a;->a:I

    .line 12
    .line 13
    iget v1, p0, Lcn/fly/commons/w$a;->b:I

    .line 14
    .line 15
    iget-object v2, p0, Lcn/fly/commons/w$a;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lcn/fly/commons/w$a;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/fly/commons/w$a;->a(IILjava/lang/String;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/w$a;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcn/fly/commons/w$a;->a:I

    .line 31
    .line 32
    iget v1, p0, Lcn/fly/commons/w$a;->b:I

    .line 33
    .line 34
    iget-object v2, p0, Lcn/fly/commons/w$a;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcn/fly/commons/w$a;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/fly/commons/w$a;->a(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
