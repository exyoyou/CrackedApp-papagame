.class Lcom/windmill/baidu/BdNativeAdData$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/h;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/h;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeAdData$8;->a:Lcom/windmill/baidu/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeViewClick(Lcom/baidu/mobads/sdk/api/XNativeView;)V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNativeViewClick:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
