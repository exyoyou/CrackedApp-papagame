.class Lcom/baidu/oauth/sdkbqt/auth/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/j;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/j;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
