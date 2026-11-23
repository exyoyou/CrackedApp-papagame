.class Lcom/join/mgps/service/CommonService_$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->O1(Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/wufan/user/service/protobuf/UserInfo;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/PayOrderInfo;

.field final synthetic d:Lcom/wufan/user/service/protobuf/UserInfo;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/wufan/user/service/protobuf/UserInfo;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameid",
            "val$orderInfo",
            "val$accountBean",
            "val$fromSdk",
            "val$appkey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$a;->g:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/service/CommonService_$a;->c:Lcom/join/mgps/dto/PayOrderInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService_$a;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/join/mgps/service/CommonService_$a;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/service/CommonService_$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$a;->g:Lcom/join/mgps/service/CommonService_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$a;->c:Lcom/join/mgps/dto/PayOrderInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/service/CommonService_$a;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/join/mgps/service/CommonService_$a;->e:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/join/mgps/service/CommonService_$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/service/CommonService_;->b2(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/wufan/user/service/protobuf/UserInfo;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
