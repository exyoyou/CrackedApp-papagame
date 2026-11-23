.class public Lcom/byazt/ra/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bi/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a9,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ra/sp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ra/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/ra/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

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
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v0}, Lcom/byazt/ra/sp;->tt(Lcom/byazt/ra/sp;)Lcom/byazt/ra/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    new-instance v1, Lcom/byazt/ra/n;

    invoke-static {v0}, Lcom/byazt/ra/sp;->ve(Lcom/byazt/ra/sp;)Lcom/byazt/hz/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/ra/n;-><init>(Lcom/byazt/hz/c;)V

    invoke-static {v0, v1}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;Lcom/byazt/ra/n;)Lcom/byazt/ra/n;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v1}, Lcom/byazt/ra/sp;->tt(Lcom/byazt/ra/sp;)Lcom/byazt/ra/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nh/uj;->c(Lcom/byazt/nc/sl;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    move-result-object v0

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/uj;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/nh/uj;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/ra/sp;->tt(Lcom/byazt/ra/sp;)Lcom/byazt/ra/n;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 27
    .line 28
    new-instance v1, Lcom/byazt/ra/n;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/ra/sp;->ve(Lcom/byazt/ra/sp;)Lcom/byazt/hz/c;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Lcom/byazt/ra/n;-><init>(Lcom/byazt/hz/c;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;Lcom/byazt/ra/n;)Lcom/byazt/ra/n;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/ra/sp;->c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/ra/sp$1;->c:Lcom/byazt/ra/sp;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/ra/sp;->tt(Lcom/byazt/ra/sp;)Lcom/byazt/ra/n;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/nh/uj;->tt(Lcom/byazt/nc/sl;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
