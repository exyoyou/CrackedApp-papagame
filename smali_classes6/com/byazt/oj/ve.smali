.class public Lcom/byazt/oj/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x313,
        0x36
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/oj/ve;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/oj/ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/oj/ve;->c:Lcom/byazt/oj/ve;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/oj/ve;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/oj/ve;->c:Lcom/byazt/oj/ve;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/oj/ve;

    invoke-direct {v1}, Lcom/byazt/oj/ve;-><init>()V

    sput-object v1, Lcom/byazt/oj/ve;->c:Lcom/byazt/oj/ve;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/oj/ve;->c:Lcom/byazt/oj/ve;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/aq/c;)Lcom/byazt/oj/uj;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    const-string v1, "scale"

    .line 11
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v0, Lcom/byazt/oj/sl;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/sl;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_3
    const-string v1, "translate"

    .line 13
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    new-instance v0, Lcom/byazt/oj/z;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/z;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_4
    const-string v1, "ripple"

    .line 15
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lcom/byazt/oj/x;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/x;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_5
    const-string v1, "marquee"

    .line 17
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v0, Lcom/byazt/oj/sp;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/sp;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_6
    const-string v1, "waggle"

    .line 19
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    new-instance v0, Lcom/byazt/oj/m;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/m;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_7
    const-string v1, "shine"

    .line 21
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    new-instance v0, Lcom/byazt/oj/t;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/t;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_8
    const-string v1, "swing"

    .line 23
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    new-instance v0, Lcom/byazt/oj/yp;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/yp;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_9
    const-string v1, "fade"

    .line 25
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    new-instance v0, Lcom/byazt/oj/c;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/c;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_a
    const-string v1, "rubIn"

    .line 27
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    new-instance v0, Lcom/byazt/oj/da;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/da;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_b
    const-string v1, "rotate"

    .line 29
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 30
    new-instance v0, Lcom/byazt/oj/i;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/i;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_c
    const-string v1, "cutIn"

    .line 31
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    new-instance v0, Lcom/byazt/oj/a;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/a;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_d
    const-string v1, "stretch"

    .line 33
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 34
    new-instance v0, Lcom/byazt/oj/u;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/u;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    return-object v0

    :cond_e
    const-string v1, "bounce"

    .line 35
    invoke-virtual {p2}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    new-instance v0, Lcom/byazt/oj/n;

    invoke-direct {v0, p1, p2}, Lcom/byazt/oj/n;-><init>(Landroid/view/View;Lcom/byazt/aq/c;)V

    :cond_f
    return-object v0
.end method
