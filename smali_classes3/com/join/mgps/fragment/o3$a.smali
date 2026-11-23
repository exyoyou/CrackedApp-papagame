.class Lcom/join/mgps/fragment/o3$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/join/mgps/fragment/o3;->N(Lcom/join/mgps/fragment/o3;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->O(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->O(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/f1;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$a;->a:Lcom/join/mgps/fragment/o3;

    .line 51
    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    .line 53
    .line 54
    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/fragment/o3;->Y(Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
