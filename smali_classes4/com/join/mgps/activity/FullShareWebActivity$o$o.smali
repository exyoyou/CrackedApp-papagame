.class Lcom/join/mgps/activity/FullShareWebActivity$o$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1102(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/join/mgps/dto/AccountBean;->convert(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/join/mgps/dto/AccountBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1202(Lcom/join/mgps/activity/FullShareWebActivity;Z)Z

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$o;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v3, 0x2

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
