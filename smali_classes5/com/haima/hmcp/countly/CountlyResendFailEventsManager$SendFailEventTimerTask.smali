.class Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendFailEventTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;->this$0:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;-><init>(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;->this$0:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->access$100(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager$SendFailEventTimerTask;->this$0:Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->access$200(Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
