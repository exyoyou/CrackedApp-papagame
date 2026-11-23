.class final Lcom/switfpass/pay/activity/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic b:Lcom/switfpass/pay/activity/k0;

.field private final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/k0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/l0;->b:Lcom/switfpass/pay/activity/k0;

    iput-object p2, p0, Lcom/switfpass/pay/activity/l0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/l0;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/l0;->b:Lcom/switfpass/pay/activity/k0;

    invoke-static {v0}, Lcom/switfpass/pay/activity/k0;->a(Lcom/switfpass/pay/activity/k0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/l0;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->showToastInfo(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    const-string v1, "\u652f\u4ed8\u72b6\u6001\uff1a\u8be5\u7b14\u8ba2\u5355\u672a\u652f\u4ed8"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Ld8/a;->b(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/l0;->b:Lcom/switfpass/pay/activity/k0;

    invoke-static {v0}, Lcom/switfpass/pay/activity/k0;->a(Lcom/switfpass/pay/activity/k0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void
.end method
