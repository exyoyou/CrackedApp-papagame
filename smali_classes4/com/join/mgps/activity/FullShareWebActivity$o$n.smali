.class Lcom/join/mgps/activity/FullShareWebActivity$o$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->getAccount()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

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
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

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
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

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
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v3, "javascript:papaPutAccountData("

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ")"

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1202(Lcom/join/mgps/activity/FullShareWebActivity;Z)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$n;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v3, 0x2

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
