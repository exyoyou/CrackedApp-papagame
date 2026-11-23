.class final Lcom/windmill/gromore/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/e;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/e$1;->a:Lcom/windmill/gromore/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onClickRetry()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onAdClicked()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
