.class public Lcom/byazt/cc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/vw/tt;


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
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/vw/tt;->tt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/vw/tt;->c(Lcom/byazt/nc/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/vw/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/vw/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/c;->c:Lcom/byazt/vw/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
