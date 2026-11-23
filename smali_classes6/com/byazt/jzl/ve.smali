.class public Lcom/byazt/jzl/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x626,
        0x36
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/byazt/jzl/ve;->c:I

    .line 3
    iput p2, p0, Lcom/byazt/jzl/ve;->tt:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/byazt/jzl/ve;->c:I

    .line 6
    iput p2, p0, Lcom/byazt/jzl/ve;->tt:I

    .line 7
    iput-object p3, p0, Lcom/byazt/jzl/ve;->ve:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/ve;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtraCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/ve;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/ve;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtraCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/ve;->tt:I

    .line 2
    .line 3
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
