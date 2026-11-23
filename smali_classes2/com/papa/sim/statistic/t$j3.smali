.class Lcom/papa/sim/statistic/t$j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->B(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/papa/sim/statistic/t$j3;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$j3;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$j3;->c:Ljava/lang/String;

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
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/t$j3;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/papa/sim/statistic/t$j3;->d:Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/papa/sim/statistic/Event;->articleClickDownload:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/papa/sim/statistic/t$j3;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/s;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
