.class Lcom/papa/sim/statistic/t$i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->b1(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$i1;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$i1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa/sim/statistic/t$i1;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$i1;->d:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$i1;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRecovery:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/papa/sim/statistic/t$i1;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget v3, p0, Lcom/papa/sim/statistic/t$i1;->c:I

    .line 12
    .line 13
    iget v4, p0, Lcom/papa/sim/statistic/t$i1;->d:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->F(Lcom/papa/sim/statistic/Event;Ljava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
