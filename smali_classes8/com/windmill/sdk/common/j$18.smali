.class Lcom/windmill/sdk/common/j$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/WindMillError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillError;

.field final synthetic b:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/WindMillError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$error"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$18;->a:Lcom/windmill/sdk/WindMillError;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/common/j$18;->a:Lcom/windmill/sdk/WindMillError;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/windmill/sdk/common/j;->h(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/j$b;->onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 40
    .line 41
    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->k:Z

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, v0, Lcom/windmill/sdk/common/l;->k:Z

    .line 47
    .line 48
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/windmill/sdk/common/j$18;->a:Lcom/windmill/sdk/WindMillError;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/windmill/sdk/common/j;->h(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/j$b;->onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->a:Lcom/windmill/sdk/WindMillError;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->a:Lcom/windmill/sdk/WindMillError;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ne v0, v1, :cond_4

    .line 94
    .line 95
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    iput-boolean v1, v0, Lcom/windmill/sdk/common/l;->k:Z

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/common/j$18;->b:Lcom/windmill/sdk/common/j;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_0
    return-void
.end method
