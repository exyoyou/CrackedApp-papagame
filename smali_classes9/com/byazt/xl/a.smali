.class public Lcom/byazt/xl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b3,
        0x22
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public tt:Lcom/byazt/xl/c;

.field public ve:Lcom/byazt/xl/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xl/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/xl/a;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/xl/a;->tt:Lcom/byazt/xl/c;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/xl/a;->ve:Lcom/byazt/xl/u;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xl/a;)Lcom/byazt/xl/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xl/a;->tt:Lcom/byazt/xl/c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/xl/ve;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/xl/a;->tt:Lcom/byazt/xl/c;

    invoke-virtual {v0, p1}, Lcom/byazt/xl/c;->c(Lcom/byazt/xl/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/xl/da$c;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/xl/a;->ve:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/xl/i;->i()V

    .line 4
    iget-object v0, p0, Lcom/byazt/xl/a;->tt:Lcom/byazt/xl/c;

    new-instance v1, Lcom/byazt/xl/a$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/xl/a$1;-><init>(Lcom/byazt/xl/a;Lcom/byazt/xl/da$c;)V

    invoke-interface {v0, v1}, Lcom/byazt/xl/uj;->c(Lcom/byazt/xl/sp;)V

    const/4 p1, 0x1

    return p1
.end method
