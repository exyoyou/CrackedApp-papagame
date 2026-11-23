.class public abstract Lcom/byazt/iuu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x673,
        0xd
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/iu/ve;

.field public da:Ljava/lang/String;

.field public i:I

.field public n:Lcom/byazt/ete/x$ve;

.field public sl:I

.field public sp:Lcom/byazt/iu/ve;

.field public x:Lcom/byazt/iu/n;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/iuu/tt;->sl:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/iuu/tt;->x:Lcom/byazt/iu/n;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/iu/ve;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/iuu/tt;->a:Lcom/byazt/iu/ve;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt(ILjava/lang/String;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/iuu/tt;->i:I

    .line 3
    iput-object p2, p0, Lcom/byazt/iuu/tt;->da:Ljava/lang/String;

    return-void
.end method

.method public tt(Lcom/byazt/iu/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iuu/tt;->sp:Lcom/byazt/iu/ve;

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iuu/tt;->sp:Lcom/byazt/iu/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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

.method public ve()V
    .locals 0

    return-void
.end method
