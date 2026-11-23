.class Lcom/sigmob/sdk/base/common/al$a$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/al$a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/al$a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/al$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al$a$1;->a:Lcom/sigmob/sdk/base/common/al$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/sigmob/sdk/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/al$a$1;->a:Lcom/sigmob/sdk/base/common/al$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/al$a;->a(Lcom/sigmob/sdk/base/common/al$a;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Lcom/sigmob/sdk/base/common/al$a;J)J

    :cond_0
    return-void
.end method
