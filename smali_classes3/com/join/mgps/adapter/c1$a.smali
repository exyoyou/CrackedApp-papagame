.class Lcom/join/mgps/adapter/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/c1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/c1$a;->c:Lcom/join/mgps/adapter/c1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/c1$a;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/c1$a;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/c1$a;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iput v0, p1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/c1$a;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 31
    .line 32
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/adapter/c1$a;->c:Lcom/join/mgps/adapter/c1;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/adapter/c1;->a(Lcom/join/mgps/adapter/c1;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/os/Message;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    iput v0, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/adapter/c1$a;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 53
    .line 54
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/adapter/c1$a;->c:Lcom/join/mgps/adapter/c1;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/adapter/c1;->a(Lcom/join/mgps/adapter/c1;)Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
