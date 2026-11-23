.class Lcom/join/mgps/customview/ViewPagerWithADs$a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
