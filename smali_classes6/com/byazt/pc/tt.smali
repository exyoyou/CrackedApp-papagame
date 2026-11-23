.class public Lcom/byazt/pc/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pc/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0xd
    }
.end annotation


# instance fields
.field public c:[B

.field public tt:Lcom/byazt/yj/sp;


# direct methods
.method public constructor <init>([BLcom/byazt/yj/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pc/tt;->c:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "image_type"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->n()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/byazt/pc/tt;->c:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->c(I)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/pc/tt;->c:[B

    invoke-static {v0}, Lcom/byazt/as/c;->tt([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/pc/yp;

    iget-object v2, p0, Lcom/byazt/pc/tt;->c:[B

    iget-object v3, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    invoke-direct {v1, v2, v2, v3, v0}, Lcom/byazt/pc/yp;-><init>(Ljava/lang/Object;[BLcom/byazt/yj/sp;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/pc/tt;->c:[B

    invoke-static {v1}, Lcom/byazt/as/c;->c([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/byazt/pc/n;

    iget-object v0, p0, Lcom/byazt/pc/tt;->c:[B

    iget-object v2, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    invoke-direct {v1, v0, v2}, Lcom/byazt/pc/n;-><init>([BLcom/byazt/yj/sp;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/byazt/pc/yp;

    iget-object v2, p0, Lcom/byazt/pc/tt;->c:[B

    iget-object v3, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    invoke-direct {v1, v2, v2, v3, v0}, Lcom/byazt/pc/yp;-><init>(Ljava/lang/Object;[BLcom/byazt/yj/sp;Z)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Lcom/byazt/pc/yp;

    iget-object v0, p0, Lcom/byazt/pc/tt;->c:[B

    iget-object v2, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    invoke-static {v0}, Lcom/byazt/as/c;->tt([B)Z

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/byazt/pc/yp;-><init>(Ljava/lang/Object;[BLcom/byazt/yj/sp;Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/byazt/pc/tt;->c:[B

    invoke-static {v0}, Lcom/byazt/as/c;->c([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance v1, Lcom/byazt/pc/n;

    iget-object v0, p0, Lcom/byazt/pc/tt;->c:[B

    iget-object v2, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    invoke-direct {v1, v0, v2}, Lcom/byazt/pc/n;-><init>([BLcom/byazt/yj/sp;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/byazt/pc/tt;->tt:Lcom/byazt/yj/sp;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    new-instance v1, Lcom/byazt/pc/sl;

    invoke-direct {v1}, Lcom/byazt/pc/sl;-><init>()V

    goto :goto_0

    .line 14
    :cond_5
    new-instance v1, Lcom/byazt/pc/x;

    const-string v0, "not image format"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v1, v3, v0, v2}, Lcom/byazt/pc/x;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method
