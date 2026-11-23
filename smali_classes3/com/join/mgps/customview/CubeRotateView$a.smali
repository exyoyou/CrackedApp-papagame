.class Lcom/join/mgps/customview/CubeRotateView$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CubeRotateView;->setTimeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/CubeRotateView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CubeRotateView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$a;->b:Lcom/join/mgps/customview/CubeRotateView;

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
    invoke-static {}, Lcom/join/mgps/Util/k1;->a()Lcom/join/mgps/Util/k1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/CubeRotateView$a$a;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CubeRotateView$a$a;-><init>(Lcom/join/mgps/customview/CubeRotateView$a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
