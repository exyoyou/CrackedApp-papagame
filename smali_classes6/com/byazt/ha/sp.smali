.class public abstract Lcom/byazt/ha/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e0,
        0x5b
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/lh/tt;

.field public tt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    sget-object v2, Lcom/byazt/hi/tt;->c:Lcom/byazt/hi/tt;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    new-instance v2, Lcom/byazt/ha/sp$2;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/byazt/ha/sp$2;-><init>(Lcom/byazt/ha/sp;ZLcom/byazt/lq/ve;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 9
    invoke-static {p2}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object p2

    check-cast p2, Lcom/byazt/lh/ve;

    .line 10
    new-instance p3, Lcom/byazt/ha/sp$3;

    invoke-direct {p3, p0}, Lcom/byazt/ha/sp$3;-><init>(Lcom/byazt/ha/sp;)V

    invoke-virtual {p2, p1, p3}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    iget-object p2, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    sget-object p3, Lcom/byazt/hi/tt;->uj:Lcom/byazt/hi/tt;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    new-instance v2, Lcom/byazt/ha/sp$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/ha/sp$1;-><init>(Lcom/byazt/ha/sp;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    iget-object v0, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    sget-object v1, Lcom/byazt/hi/tt;->ve:Lcom/byazt/hi/tt;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v2, Lcom/byazt/hi/tt;->tt:Lcom/byazt/hi/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
