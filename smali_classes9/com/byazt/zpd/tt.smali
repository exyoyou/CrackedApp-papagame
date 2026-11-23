.class public Lcom/byazt/zpd/tt;
.super Lcom/byazt/zpd/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77f,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/nr/d;

.field public tt:Lcom/byazt/nr/zm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/zpd/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/zpd/tt;->c:Lcom/byazt/nr/d;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zpd/tt;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zpd/tt;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private c()Lcom/byazt/nr/zm;
    .locals 11

    .line 13
    new-instance v0, Lcom/byazt/nr/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->uj()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    move-result v2

    const-string v3, "reg res:"

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "csj_sen"

    invoke-static {v4, v3}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const/4 v6, 0x0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/zpd/c;->c(IJJ)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;JJ)V
    .locals 2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long p1, v0, p4

    if-lez p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/byazt/zpd/tt;->c()Lcom/byazt/nr/zm;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/zpd/tt;->tt:Lcom/byazt/nr/zm;

    .line 11
    iget-object p1, p0, Lcom/byazt/zpd/tt;->c:Lcom/byazt/nr/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/zpd/tt;->c:Lcom/byazt/nr/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zpd/tt;)Lcom/byazt/nr/zm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zpd/tt;->tt:Lcom/byazt/nr/zm;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;I)V
    .locals 7

    .line 2
    invoke-virtual {p0, p2}, Lcom/byazt/zpd/c;->c(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/byazt/zpd/c;->tt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/pf/c;->tt()J

    move-result-wide v3

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/byazt/zpd/tt;->c(Lorg/json/JSONObject;JJ)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/zpd/c;->ve(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/pf/c;->ve()J

    move-result-wide v3

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/byazt/zpd/tt;->c(Lorg/json/JSONObject;JJ)V

    :cond_1
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/zpd/tt;->tt:Lcom/byazt/nr/zm;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->tt(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v2, 0x3

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    move-object v1, p0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/zpd/c;->c(IJJ)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/byazt/zpd/tt;->tt:Lcom/byazt/nr/zm;

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    new-instance v0, Lcom/byazt/zpd/tt$1;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/byazt/zpd/tt$1;-><init>(Lcom/byazt/zpd/tt;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$ve;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->kz()Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/byazt/zpd/tt;->c:Lcom/byazt/nr/d;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/byazt/zpd/c;->c(Lorg/json/JSONObject;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-long v2, p1

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
