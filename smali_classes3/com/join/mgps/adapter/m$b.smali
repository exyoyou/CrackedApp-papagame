.class Lcom/join/mgps/adapter/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/m;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$giftPackageDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m$b;->c:Lcom/join/mgps/adapter/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/m$b;->c:Lcom/join/mgps/adapter/m;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/adapter/m;->a(Lcom/join/mgps/adapter/m;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "\u8be5\u793c\u5305\u5df2\u8fc7\u671f"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/m$b;->c:Lcom/join/mgps/adapter/m;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/adapter/m;->a(Lcom/join/mgps/adapter/m;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "clipboard"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/content/ClipboardManager;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/m$b;->c:Lcom/join/mgps/adapter/m;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/join/mgps/adapter/m;->a(Lcom/join/mgps/adapter/m;)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Landroid/os/Message;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 97
    .line 98
    .line 99
    iput v0, p1, Landroid/os/Message;->what:I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/adapter/m$b;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 102
    .line 103
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/adapter/m$b;->c:Lcom/join/mgps/adapter/m;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/join/mgps/adapter/m;->b(Lcom/join/mgps/adapter/m;)Landroid/os/Handler;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method
