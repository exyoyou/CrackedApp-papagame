.class Lcom/papa/sim/statistic/t$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->u0(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/papa/sim/statistic/t$q;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$q;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$q;->c:Ljava/lang/String;

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
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa/sim/statistic/t$q;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "forum"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setModule(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "index"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/papa/sim/statistic/t$q;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/papa/sim/statistic/t$q;->d:Lcom/papa/sim/statistic/t;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/s;->B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    return-void
.end method
