.class public final synthetic Lcom/windmill/sdk/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/windmill/sdk/widget/BannerView_7002001;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/widget/BannerView_7002001;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/widget/f;->b:Lcom/windmill/sdk/widget/BannerView_7002001;

    iput p2, p0, Lcom/windmill/sdk/widget/f;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/f;->b:Lcom/windmill/sdk/widget/BannerView_7002001;

    iget v1, p0, Lcom/windmill/sdk/widget/f;->c:F

    invoke-static {v0, v1}, Lcom/windmill/sdk/widget/BannerView_7002001;->a(Lcom/windmill/sdk/widget/BannerView_7002001;F)V

    return-void
.end method
