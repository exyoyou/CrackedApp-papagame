.class public Lcom/byazt/im/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x2a
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Z

.field public ve:Lcom/byazt/nc/tt;


# direct methods
.method public constructor <init>(ZLcom/byazt/nc/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/byazt/im/i;->tt:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/im/i;->ve:Lcom/byazt/nc/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/nc/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/i;->ve:Lcom/byazt/nc/tt;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/im/i;->c:Z

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/i;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/i;->tt:Z

    .line 2
    .line 3
    return v0
.end method
