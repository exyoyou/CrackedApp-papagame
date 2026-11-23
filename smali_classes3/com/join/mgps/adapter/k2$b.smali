.class Lcom/join/mgps/adapter/k2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->c:Lcom/join/mgps/adapter/k2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/k2$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/k2$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/os/Message;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 13
    .line 14
    .line 15
    iput v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/k2$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 18
    .line 19
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/k2$b;->c:Lcom/join/mgps/adapter/k2;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/adapter/k2;->b(Lcom/join/mgps/adapter/k2;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/k2$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    new-instance p1, Landroid/os/Message;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    iput v0, p1, Landroid/os/Message;->what:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/adapter/k2$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 48
    .line 49
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/k2$b;->c:Lcom/join/mgps/adapter/k2;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/adapter/k2;->b(Lcom/join/mgps/adapter/k2;)Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method
