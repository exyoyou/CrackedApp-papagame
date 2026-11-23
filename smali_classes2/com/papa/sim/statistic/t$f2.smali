.class Lcom/papa/sim/statistic/t$f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->G0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$f2;->k:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$f2;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$f2;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/papa/sim/statistic/t$f2;->d:J

    .line 8
    .line 9
    iput p6, p0, Lcom/papa/sim/statistic/t$f2;->e:I

    .line 10
    .line 11
    iput-object p7, p0, Lcom/papa/sim/statistic/t$f2;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput p8, p0, Lcom/papa/sim/statistic/t$f2;->g:I

    .line 14
    .line 15
    iput p9, p0, Lcom/papa/sim/statistic/t$f2;->h:I

    .line 16
    .line 17
    iput p10, p0, Lcom/papa/sim/statistic/t$f2;->i:I

    .line 18
    .line 19
    iput-object p11, p0, Lcom/papa/sim/statistic/t$f2;->j:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$f2;->k:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/papa/sim/statistic/t$f2;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/papa/sim/statistic/t$f2;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v5, p0, Lcom/papa/sim/statistic/t$f2;->d:J

    .line 14
    .line 15
    iget v7, p0, Lcom/papa/sim/statistic/t$f2;->e:I

    .line 16
    .line 17
    iget-object v8, p0, Lcom/papa/sim/statistic/t$f2;->f:Ljava/lang/String;

    .line 18
    .line 19
    const-wide/16 v9, -0x1

    .line 20
    .line 21
    iget v11, p0, Lcom/papa/sim/statistic/t$f2;->g:I

    .line 22
    .line 23
    iget v12, p0, Lcom/papa/sim/statistic/t$f2;->h:I

    .line 24
    .line 25
    iget v13, p0, Lcom/papa/sim/statistic/t$f2;->i:I

    .line 26
    .line 27
    iget-object v14, p0, Lcom/papa/sim/statistic/t$f2;->j:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v14}, Lcom/papa/sim/statistic/s;->M(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIIILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
