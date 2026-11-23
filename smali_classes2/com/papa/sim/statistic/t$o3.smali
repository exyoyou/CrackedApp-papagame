.class Lcom/papa/sim/statistic/t$o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->w0(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$o3;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/sim/statistic/t$o3;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$o3;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$o3;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/t$o3;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickFunGameMainBtn:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    sget-object v3, Lcom/papa/sim/statistic/Event;->ad:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    iget v4, p0, Lcom/papa/sim/statistic/t$o3;->b:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/papa/sim/statistic/t$o3;->c:Ljava/lang/String;

    .line 14
    .line 15
    iget v6, p0, Lcom/papa/sim/statistic/t$o3;->d:I

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/s;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method
