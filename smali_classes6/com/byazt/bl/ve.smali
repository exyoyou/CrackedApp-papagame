.class public Lcom/byazt/bl/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/zb;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb1,
        0x36
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I

.field public ve:Lcom/byazt/ep/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ep/ve<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/bl/ve;->tt:I

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/bl/ve;->c:I

    .line 7
    .line 8
    new-instance p2, Lcom/byazt/bl/ve$1;

    .line 9
    .line 10
    invoke-direct {p2, p0, p1}, Lcom/byazt/bl/ve$1;-><init>(Lcom/byazt/bl/ve;I)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/bl/ve;->ve:Lcom/byazt/ep/ve;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/bl/ve;->c(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/bl/ve;->c(D)V

    return-void
.end method

.method public c(D)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/bl/ve;->ve:Lcom/byazt/ep/ve;

    iget v1, p0, Lcom/byazt/bl/ve;->tt:I

    int-to-double v1, v1

    mul-double v1, v1, p1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/byazt/ep/ve;->c(I)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/byazt/bl/ve;->c(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;[B)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/bl/ve;->ve:Lcom/byazt/ep/ve;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ep/ve;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/bl/ve;->ve:Lcom/byazt/ep/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/ep/ve;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public bridge synthetic tt(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/bl/ve;->tt(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public tt(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/bl/ve;->ve:Lcom/byazt/ep/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/ep/ve;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
