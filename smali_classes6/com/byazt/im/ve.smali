.class public Lcom/byazt/im/ve;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x36
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public da:Lcom/byazt/dj/tt;

.field public i:I

.field public n:Lcom/byazt/im/a;

.field public sl:Z

.field public sp:Ljava/lang/String;

.field public t:Z

.field public uj:Lcom/byazt/im/x;

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/dj/tt;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/im/ve;->x:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/im/ve;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/im/ve;->sp:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/byazt/im/ve;->n:Lcom/byazt/im/a;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/byazt/im/a;->n()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lcom/byazt/im/ve;->sl:Z

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/byazt/im/ve;->uj:Lcom/byazt/im/x;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/byazt/im/ve;->da:Lcom/byazt/dj/tt;

    .line 28
    .line 29
    iput-boolean p6, p0, Lcom/byazt/im/ve;->t:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/ve;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/ve;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/ve;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/ve;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Lcom/byazt/im/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/ve;->uj:Lcom/byazt/im/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/dj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/ve;->da:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/im/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/ve;->n:Lcom/byazt/im/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/ve;->i:I

    .line 2
    .line 3
    return v0
.end method
