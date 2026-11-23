.class Lcom/sigmob/sdk/manager/d$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/manager/d;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/manager/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/manager/d$1;->a:Lcom/sigmob/sdk/manager/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/d$1;->a:Lcom/sigmob/sdk/manager/d;

    invoke-static {v0}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/manager/d;)V

    return-void
.end method
