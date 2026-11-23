.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;
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
.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/dto/AccountVoucher;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/dto/AccountVoucher;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/AccountVoucher;->setGame_id(J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setGame_name(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/join/mgps/dto/AccountVoucherStatus;

    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 43
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v1, v2, v3, v4}, Lcom/join/mgps/dto/AccountVoucherStatusBean;-><init>(DI)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dto/AccountVoucherStatus;-><init>(Lcom/join/mgps/dto/AccountVoucherStatusBean;Lcom/join/mgps/dto/AccountVoucherStatusBean;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setStatus(Lcom/join/mgps/dto/AccountVoucherStatus;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_tpl_type()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setGame_tpl(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setSp_tpl_two_position(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;->a(Lcom/join/mgps/dto/AccountVoucher;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 104
    .line 105
    .line 106
    return-void
.end method
