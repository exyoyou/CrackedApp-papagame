.class Lcom/papa/sim/statistic/t$z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->k2(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;BB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:B

.field final synthetic h:B

.field final synthetic i:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZBB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$z3;->i:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/sim/statistic/t$z3;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$z3;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/t$z3;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/t$z3;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/papa/sim/statistic/t$z3;->f:Z

    .line 12
    .line 13
    iput-byte p7, p0, Lcom/papa/sim/statistic/t$z3;->g:B

    .line 14
    .line 15
    iput-byte p8, p0, Lcom/papa/sim/statistic/t$z3;->h:B

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/t$z3;->i:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->user_filters_refresh:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/papa/sim/statistic/t;->c(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/papa/sim/statistic/t$z3;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setPlug_id(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/papa/sim/statistic/t$z3;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setGame_type(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/papa/sim/statistic/t$z3;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setZone(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/papa/sim/statistic/t$z3;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setUid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/papa/sim/statistic/t$z3;->f:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setIs_visitors(I)V

    .line 37
    .line 38
    .line 39
    iget-byte v1, p0, Lcom/papa/sim/statistic/t$z3;->g:B

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setPapa_allow_spectators(I)V

    .line 42
    .line 43
    .line 44
    iget-byte v1, p0, Lcom/papa/sim/statistic/t$z3;->h:B

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setPapa_has_slot(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/papa/sim/statistic/t$z3;->i:Lcom/papa/sim/statistic/t;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/s;->b0(Lcom/papa/sim/statistic/StatDataCenterReq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    return-void
.end method
