.class public Lcom/byazt/ukr/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gs/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x48
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/va/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/va/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ukr/da;->c:Lcom/byazt/va/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/gs/n;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/ukr/da;->c:Lcom/byazt/va/ve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lcom/byazt/ukr/sl;

    invoke-virtual {v0}, Lcom/byazt/va/ve;->c()Lcom/byazt/hm/tt;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/byazt/ukr/sl;-><init>(Lcom/byazt/hm/tt;)V

    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ukr/da;->c:Lcom/byazt/va/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ukr/da;->c:Lcom/byazt/va/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
