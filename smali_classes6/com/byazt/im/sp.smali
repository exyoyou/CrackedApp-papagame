.class public Lcom/byazt/im/sp;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x5b
    }
.end annotation


# instance fields
.field public a:Z

.field public da:J

.field public i:Lcom/byazt/nc/tt;

.field public n:Ljava/lang/String;

.field public sl:I

.field public sp:I

.field public uj:I

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/byazt/im/sp;->uj:I

    const-string v1, "unknown"

    .line 3
    iput-object v1, p0, Lcom/byazt/im/sp;->n:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/byazt/im/sp;->a:Z

    .line 5
    iput-boolean v1, p0, Lcom/byazt/im/sp;->x:Z

    .line 6
    iput v0, p0, Lcom/byazt/im/sp;->sl:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/im/sp;->a:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/byazt/im/sp;->sl:I

    .line 10
    iput p1, p0, Lcom/byazt/im/sp;->uj:I

    .line 11
    iput-object p2, p0, Lcom/byazt/im/sp;->n:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/byazt/im/sp;->x:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/sp;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/im/sp;->da:J

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/im/sp;->i:Lcom/byazt/nc/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/im/sp;->n:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/im/sp;->a:Z

    return-void
.end method

.method public i()Lcom/byazt/nc/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/sp;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/sp;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "unknown"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/im/sp;->n:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/sp;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/im/sp;->uj:I

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/im/sp;->x:Z

    return-void
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/sp;->uj:I

    return v0
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/im/sp;->sp:I

    return-void
.end method

.method public ve()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/im/sp;->da:J

    return-wide v0
.end method

.method public ve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/im/sp;->sl:I

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/sp;->x:Z

    .line 2
    .line 3
    return v0
.end method
