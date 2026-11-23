.class public Lcom/byazt/zlb/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ak/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x238,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/zlb/tt;


# instance fields
.field public tt:Lcom/byazt/sq/ve$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/sq/ve$c;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/zlb/tt;

    invoke-direct {v0}, Lcom/byazt/zlb/tt;-><init>()V

    sput-object v0, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/byazt/zlb/c;

    invoke-direct {p1, p0}, Lcom/byazt/zlb/c;-><init>(Lcom/byazt/sq/ve$c;)V

    iput-object p1, v0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    return-void

    .line 4
    :cond_0
    iput-object p0, v0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/sq/ve$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sq/ve$c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sq/ve$c;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zlb/tt;->tt:Lcom/byazt/sq/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/sq/ve$c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
