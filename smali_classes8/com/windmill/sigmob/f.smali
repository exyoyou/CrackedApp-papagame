.class public final Lcom/windmill/sigmob/f;
.super Lcom/windmill/sigmob/d;
.source "SourceFile"


# instance fields
.field a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/windmill/sigmob/d$a;

.field final d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/sigmob/d$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sigmob/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/windmill/sigmob/f;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/windmill/sigmob/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p2, p0, Lcom/windmill/sigmob/f;->c:Lcom/windmill/sigmob/d$a;

    return-void
.end method
