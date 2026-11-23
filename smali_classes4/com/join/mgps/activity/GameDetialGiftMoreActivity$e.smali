.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$500(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p3, p3, -0x1

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$600(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-gt p3, p1, :cond_3

    .line 22
    .line 23
    if-gez p3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$600(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Lcom/join/mgps/activity/GiftsDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 73
    .line 74
    invoke-static {p3}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p3}, Lcom/join/mgps/activity/GiftsDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p3, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->a(I)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return-void
.end method
