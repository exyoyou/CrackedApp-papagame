.class public final Lcom/byazt/zlb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sq/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x238,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zlb/c$c;,
        Lcom/byazt/zlb/c$tt;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/sq/ve$c;

.field public tt:Lcom/byazt/zlb/c$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/sq/ve$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/zlb/c$tt;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/byazt/zlb/c$tt;-><init>(Lcom/byazt/zlb/c;Lcom/byazt/zlb/c$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/zlb/c;->tt:Lcom/byazt/zlb/c$tt;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zlb/c;)Lcom/byazt/sq/ve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V
    .locals 1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/byazt/zlb/c$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/zlb/c$6;-><init>(Lcom/byazt/zlb/c;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->tt:Lcom/byazt/zlb/c$tt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/zlb/c$tt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, ""

    const-string p3, "print big Str failed!"

    .line 11
    invoke-static {p2, p3, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zlb/c;)Lcom/byazt/zlb/c$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zlb/c;->tt:Lcom/byazt/zlb/c$tt;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0}, Lcom/byazt/sq/ve$c;->c()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/zlb/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/zlb/c$1;-><init>(Lcom/byazt/zlb/c;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sq/ve$c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/zlb/c$5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/zlb/c$5;-><init>(Lcom/byazt/zlb/c;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/zlb/c$2;

    invoke-direct {v0, p0}, Lcom/byazt/zlb/c$2;-><init>(Lcom/byazt/zlb/c;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sq/ve$c;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/zlb/c$4;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/zlb/c$4;-><init>(Lcom/byazt/zlb/c;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/zlb/c$3;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/zlb/c$3;-><init>(Lcom/byazt/zlb/c;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/zlb/c;->c:Lcom/byazt/sq/ve$c;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
