.class public Lcom/byazt/lq/ve;
.super Lcom/byazt/nc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33,
        0x36
    }
.end annotation


# instance fields
.field public final c:I

.field public final tt:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/lq/ve;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/lq/ve;->tt:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/lq/ve;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lq/ve;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
