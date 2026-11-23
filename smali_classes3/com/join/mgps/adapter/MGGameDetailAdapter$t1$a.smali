.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameVoucherBean;

.field final synthetic c:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$mBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->b:Lcom/join/mgps/dto/GameVoucherBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->b:Lcom/join/mgps/dto/GameVoucherBean;

    .line 17
    .line 18
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
