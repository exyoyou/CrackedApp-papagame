.class Lcom/papa/sim/statistic/t$m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->E2(ILjava/lang/String;I)V
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
    iput-object p1, p0, Lcom/papa/sim/statistic/t$m4;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/sim/statistic/t$m4;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$m4;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$m4;->d:I

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
    :try_start_0
    iget v0, p0, Lcom/papa/sim/statistic/t$m4;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/sim/statistic/t$m4;->e:Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    sget-object v2, Lcom/papa/sim/statistic/Event;->VsSingle:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/papa/sim/statistic/t$m4;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget v4, p0, Lcom/papa/sim/statistic/t$m4;->d:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/sim/statistic/t$m4;->e:Lcom/papa/sim/statistic/t;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    sget-object v2, Lcom/papa/sim/statistic/Event;->VsHall:Lcom/papa/sim/statistic/Event;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/papa/sim/statistic/t$m4;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget v4, p0, Lcom/papa/sim/statistic/t$m4;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x2

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa/sim/statistic/t$m4;->e:Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    .line 54
    .line 55
    sget-object v2, Lcom/papa/sim/statistic/Event;->VsLocal:Lcom/papa/sim/statistic/Event;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/papa/sim/statistic/t$m4;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget v4, p0, Lcom/papa/sim/statistic/t$m4;->d:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
