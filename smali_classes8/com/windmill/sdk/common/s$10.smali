.class Lcom/windmill/sdk/common/s$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->a(Landroid/view/ViewGroup;Z)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/windmill/sdk/common/s$a;->onSplashAdSuccessLoad(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->d(Lcom/windmill/sdk/common/s;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/common/s$10;->a:Lcom/windmill/sdk/common/s;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->e(Lcom/windmill/sdk/common/s;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
