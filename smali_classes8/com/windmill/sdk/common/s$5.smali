.class Lcom/windmill/sdk/common/s$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/windmill/sdk/common/s$a;->onSplashAdSuccessLoad(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->d(Lcom/windmill/sdk/common/s;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->e(Lcom/windmill/sdk/common/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Lcom/windmill/sdk/WindMillError;->getWindAdError(I)Lcom/windmill/sdk/WindMillError;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/windmill/sdk/common/s$5;->a:Lcom/windmill/sdk/common/s;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, v1, v2}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    return-void
.end method
