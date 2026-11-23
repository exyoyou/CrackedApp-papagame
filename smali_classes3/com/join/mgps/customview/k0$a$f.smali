.class Lcom/join/mgps/customview/k0$a$f;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/k0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/k0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/k0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/k0$a$f;->b:Lcom/join/mgps/customview/k0$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0$a$f;->b:Lcom/join/mgps/customview/k0$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
