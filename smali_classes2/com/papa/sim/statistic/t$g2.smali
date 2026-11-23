.class Lcom/papa/sim/statistic/t$g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->H0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
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

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$g2;->l:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$g2;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$g2;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/papa/sim/statistic/t$g2;->d:J

    .line 8
    .line 9
    iput p6, p0, Lcom/papa/sim/statistic/t$g2;->e:I

    .line 10
    .line 11
    iput-object p7, p0, Lcom/papa/sim/statistic/t$g2;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/papa/sim/statistic/t$g2;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput p9, p0, Lcom/papa/sim/statistic/t$g2;->h:I

    .line 16
    .line 17
    iput p10, p0, Lcom/papa/sim/statistic/t$g2;->i:I

    .line 18
    .line 19
    iput p11, p0, Lcom/papa/sim/statistic/t$g2;->j:I

    .line 20
    .line 21
    iput-object p12, p0, Lcom/papa/sim/statistic/t$g2;->k:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/papa/sim/statistic/t$g2;->l:Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/papa/sim/statistic/t$g2;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/papa/sim/statistic/t$g2;->c:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v6, v0, Lcom/papa/sim/statistic/t$g2;->d:J

    .line 16
    .line 17
    iget v8, v0, Lcom/papa/sim/statistic/t$g2;->e:I

    .line 18
    .line 19
    iget-object v9, v0, Lcom/papa/sim/statistic/t$g2;->f:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/papa/sim/statistic/t$g2;->g:Ljava/lang/String;

    .line 22
    .line 23
    const-wide/16 v11, -0x1

    .line 24
    .line 25
    iget v13, v0, Lcom/papa/sim/statistic/t$g2;->h:I

    .line 26
    .line 27
    iget v14, v0, Lcom/papa/sim/statistic/t$g2;->i:I

    .line 28
    .line 29
    iget v15, v0, Lcom/papa/sim/statistic/t$g2;->j:I

    .line 30
    .line 31
    iget-object v1, v0, Lcom/papa/sim/statistic/t$g2;->k:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    invoke-virtual/range {v2 .. v16}, Lcom/papa/sim/statistic/s;->N(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
