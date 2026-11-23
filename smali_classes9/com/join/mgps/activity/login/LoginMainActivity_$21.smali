.class Lcom/join/mgps/activity/login/LoginMainActivity_$21;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity_;->checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$token",
            "val$accessToken",
            "val$quickLogin",
            "val$phone"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$token:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$accessToken:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 8
    .line 9
    iput-object p9, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$phone:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$token:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$accessToken:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$21;->val$phone:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/login/LoginMainActivity_;->access$801(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
