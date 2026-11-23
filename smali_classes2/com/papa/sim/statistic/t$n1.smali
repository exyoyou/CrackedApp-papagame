.class Lcom/papa/sim/statistic/t$n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->x1(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$n1;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$n1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$n1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n1;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n1;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n1;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
