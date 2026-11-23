.class Lcom/join/mgps/ad/union/channel/tbid/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/union/channel/tbid/b;->renderAdView(Landroid/view/View;Lcom/windmill/sdk/natives/WMNativeAdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/windmill/sdk/natives/WMNativeAdData;

.field final synthetic c:Lcom/join/mgps/ad/union/channel/tbid/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/union/channel/tbid/b;Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->c:Lcom/join/mgps/ad/union/channel/tbid/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->b:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->c:Lcom/join/mgps/ad/union/channel/tbid/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ad/union/channel/tbid/b;->a(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->b:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->startVideo()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->c:Lcom/join/mgps/ad/union/channel/tbid/b;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/ad/union/channel/tbid/b;->b(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->b:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->pauseVideo()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->c:Lcom/join/mgps/ad/union/channel/tbid/b;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/ad/union/channel/tbid/b;->c(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b$a;->b:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->stopVideo()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method
