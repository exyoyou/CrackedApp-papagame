.class Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;->onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic c:Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$intentDateBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity$a;->c:Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity$a;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity$a;->c:Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity$a;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    const/high16 v3, 0x24000000

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->checkAndStartMain(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
