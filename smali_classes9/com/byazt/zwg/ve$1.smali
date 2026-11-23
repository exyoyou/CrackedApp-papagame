.class public Lcom/byazt/zwg/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/uhf/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x425,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zwg/ve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zwg/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/zwg/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->tt(Lcom/byazt/zwg/ve;)Lcom/byazt/zwg/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    new-instance v1, Lcom/byazt/zwg/c;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->ve(Lcom/byazt/zwg/ve;)Lcom/byazt/hz/t;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/zwg/c;-><init>(Lcom/byazt/hz/t;)V

    invoke-static {v0, v1}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;Lcom/byazt/zwg/c;)Lcom/byazt/zwg/c;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v1}, Lcom/byazt/zwg/ve;->tt(Lcom/byazt/zwg/ve;)Lcom/byazt/zwg/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nh/sp;->c(Lcom/byazt/nc/z;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    move-result-object v0

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/nh/sp;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/zwg/ve;->tt(Lcom/byazt/zwg/ve;)Lcom/byazt/zwg/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 27
    .line 28
    new-instance v1, Lcom/byazt/zwg/c;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/zwg/ve;->ve(Lcom/byazt/zwg/ve;)Lcom/byazt/hz/t;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Lcom/byazt/zwg/c;-><init>(Lcom/byazt/hz/t;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;Lcom/byazt/zwg/c;)Lcom/byazt/zwg/c;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/zwg/ve;->c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/zwg/ve$1;->c:Lcom/byazt/zwg/ve;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/zwg/ve;->tt(Lcom/byazt/zwg/ve;)Lcom/byazt/zwg/c;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/nh/sp;->tt(Lcom/byazt/nc/z;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
