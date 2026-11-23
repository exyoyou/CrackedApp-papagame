.class Lcom/join/mgps/Util/x1$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/x1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/Util/x1$c;

.field final synthetic e:Lcom/join/mgps/Util/x1$b;

.field final synthetic f:Lcom/join/mgps/Util/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/x1;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$c;Lcom/join/mgps/Util/x1$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$appkey",
            "val$result",
            "val$listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/x1$a;->f:Lcom/join/mgps/Util/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/x1$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/x1$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/x1$a;->e:Lcom/join/mgps/Util/x1$b;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    new-instance v2, Lcom/join/mgps/dto/PayGameDataRequest;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/join/mgps/dto/PayGameDataRequest;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v3, p0, Lcom/join/mgps/Util/x1$a;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setDevice_id(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ""

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setUid(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setApp_key(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/join/mgps/Util/x1$a$a;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/x1$a$a;-><init>(Lcom/join/mgps/Util/x1$a;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, Lcom/join/mgps/rpc/n;->b(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
