.class Lcom/papa/sim/statistic/t$k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->w1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$k1;->f:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$k1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$k1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$k1;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/t$k1;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$k1;->f:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/papa/sim/statistic/t$k1;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/papa/sim/statistic/t$k1;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, p0, Lcom/papa/sim/statistic/t$k1;->d:I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/papa/sim/statistic/t$k1;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/s;->L(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
