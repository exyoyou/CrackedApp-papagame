.class Lcom/join/mgps/fragment/p$b;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p;->T(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/wufan/user/service/protobuf/UserInfo;

.field final synthetic c:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic d:Lcom/join/mgps/fragment/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p;Ljava/lang/String;JLjava/lang/String;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$accountBean",
            "val$bean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p$b;->d:Lcom/join/mgps/fragment/p;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/fragment/p$b;->b:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/join/mgps/fragment/p$b;->c:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p$b;->d:Lcom/join/mgps/fragment/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/p$b;->b:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/p$b;->c:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/p;->h0(Lcom/join/mgps/fragment/p;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
