.class Lcom/join/mgps/activity/MGGameDetailActivity$k;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$002(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$302(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dialog/f1;)Lcom/join/mgps/dialog/f1;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$300(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dialog/f1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/join/mgps/dto/GameVoucherBean;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getVoucher(Lcom/join/mgps/dto/GameVoucherBean;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$200(Lcom/join/mgps/activity/MGGameDetailActivity;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGiftPackageOperation(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$k;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->postPraised(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    :goto_0
    return-void
.end method
