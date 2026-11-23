.class Lcom/join/mgps/adapter/k3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/k3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/k3$d;->b:I

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
    iget p1, p0, Lcom/join/mgps/adapter/k3$d;->b:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/join/mgps/activity/MGSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGSettingActivity_$j;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 52
    .line 53
    .line 54
    const-string v0, "http://bbs.5fun.com/forum.php?mod=viewthread&tid=56"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$r;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_5

    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/join/mgps/adapter/k3$d;->c:Lcom/join/mgps/adapter/k3;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/adapter/k3;->b(Lcom/join/mgps/adapter/k3;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_0
    return-void
.end method
