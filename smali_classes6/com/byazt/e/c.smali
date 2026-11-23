.class public Lcom/byazt/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bb,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/e/c$c;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/e/c$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/e/c;->tt:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/byazt/e/c$c;->c(Lcom/byazt/e/c$c;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/e/c;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/e/c$c;->tt(Lcom/byazt/e/c$c;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/e/c;->tt:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/byazt/e/c$c;->ve(Lcom/byazt/e/c$c;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/byazt/e/c;->ve:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/byazt/e/c$c;->uj(Lcom/byazt/e/c$c;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/e/c;->uj:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/byazt/e/c$c;->n(Lcom/byazt/e/c$c;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/byazt/e/c;->n:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method
