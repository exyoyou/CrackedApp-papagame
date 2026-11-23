.class Lcom/join/mgps/activity/AccountBindPhoneNew_$f;
.super Lorg/androidannotations/api/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew_;->reginAnonymousThird(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

.field final synthetic c:Lcom/join/mgps/activity/AccountBindPhoneNew_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "id",
            "delay",
            "serial",
            "val$accountAnonymousReginRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;->c:Lcom/join/mgps/activity/AccountBindPhoneNew_;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;->b:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;->c:Lcom/join/mgps/activity/AccountBindPhoneNew_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;->b:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->access$901(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
