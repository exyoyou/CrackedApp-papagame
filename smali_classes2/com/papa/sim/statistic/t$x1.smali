.class Lcom/papa/sim/statistic/t$x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->p1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/papa/sim/statistic/Ext;

.field final synthetic h:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$x1;->h:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$x1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$x1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$x1;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/t$x1;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/papa/sim/statistic/t$x1;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/papa/sim/statistic/t$x1;->g:Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$x1;->h:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/papa/sim/statistic/t$x1;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/papa/sim/statistic/t$x1;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, p0, Lcom/papa/sim/statistic/t$x1;->d:I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/papa/sim/statistic/t$x1;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v7, p0, Lcom/papa/sim/statistic/t$x1;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v8, p0, Lcom/papa/sim/statistic/t$x1;->g:Lcom/papa/sim/statistic/Ext;

    .line 20
    .line 21
    invoke-virtual/range {v1 .. v8}, Lcom/papa/sim/statistic/s;->o0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
