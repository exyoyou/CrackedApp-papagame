.class Lcom/papa/sim/statistic/t$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/sim/statistic/Event;

.field final synthetic c:Lcom/papa/sim/statistic/Ext;

.field final synthetic d:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$l0;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$l0;->b:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$l0;->c:Lcom/papa/sim/statistic/Ext;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/t$l0;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/papa/sim/statistic/t$l0;->b:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/papa/sim/statistic/t$l0;->c:Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/s;->S(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
