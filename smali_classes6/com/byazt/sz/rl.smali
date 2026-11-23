.class public Lcom/byazt/sz/rl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x75
    }
.end annotation


# instance fields
.field public c:I

.field public tt:Ljava/lang/String;

.field public ve:Lcom/byazt/xj/ve;


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
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/sz/rl;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/sz/rl;->c:I

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/sz/rl;->ve:Lcom/byazt/xj/ve;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/sz/rl;->tt:Ljava/lang/String;

    return-void
.end method
