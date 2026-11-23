.class Lcom/join/mgps/service/CommonService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/service/CommonService;->I:I

    .line 4
    .line 5
    iget v2, v0, Lcom/join/mgps/service/CommonService;->H:I

    .line 6
    .line 7
    if-gt v1, v2, :cond_2

    .line 8
    .line 9
    iget v2, v0, Lcom/join/mgps/service/CommonService;->G:I

    .line 10
    .line 11
    mul-int v1, v1, v2

    .line 12
    .line 13
    iput v1, v0, Lcom/join/mgps/service/CommonService;->E:I

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Lcom/join/mgps/service/CommonService;->F:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 31
    .line 32
    iget v2, v1, Lcom/join/mgps/service/CommonService;->E:I

    .line 33
    .line 34
    iget v1, v1, Lcom/join/mgps/service/CommonService;->F:I

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 41
    .line 42
    iget v2, v1, Lcom/join/mgps/service/CommonService;->I:I

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    iput v2, v1, Lcom/join/mgps/service/CommonService;->I:I

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-gtz v1, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/join/mgps/service/CommonService;->w(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/service/CommonService;->D:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/join/mgps/service/CommonService;->D:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$d;->c:Lcom/join/mgps/service/CommonService;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    iput-object v1, v0, Lcom/join/mgps/service/CommonService;->D:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    .line 86
    :cond_3
    :goto_1
    return-void
.end method
