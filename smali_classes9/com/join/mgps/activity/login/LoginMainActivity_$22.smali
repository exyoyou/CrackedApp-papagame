.class Lcom/join/mgps/activity/login/LoginMainActivity_$22;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity_;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

.field final synthetic val$gender:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$userIcon:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$type",
            "val$userId",
            "val$name",
            "val$gender",
            "val$userIcon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iput p6, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$type:I

    .line 4
    .line 5
    iput-object p7, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$userId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$name:Ljava/lang/String;

    .line 8
    .line 9
    iput p9, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$gender:I

    .line 10
    .line 11
    iput-object p10, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$userIcon:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$type:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$userId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$name:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$gender:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$22;->val$userIcon:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginMainActivity_;->access$901(Lcom/join/mgps/activity/login/LoginMainActivity_;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
