.class Lcom/join/mgps/fragment/v$l$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/v$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/fragment/v;->Y(Lcom/join/mgps/fragment/v;)Landroid/content/Context;

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
    invoke-static {v1, v2}, Lcom/join/mgps/fragment/v;->l0(Lcom/join/mgps/fragment/v;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/fragment/v;->k0(Lcom/join/mgps/fragment/v;)Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/fragment/v;->Y(Lcom/join/mgps/fragment/v;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/join/mgps/fragment/v;->Y(Lcom/join/mgps/fragment/v;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v;->m0(Lcom/join/mgps/fragment/v;Z)Z

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f0;->b:Lcom/join/mgps/fragment/v$l;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/join/mgps/fragment/v;->Y(Lcom/join/mgps/fragment/v;)Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x2

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
