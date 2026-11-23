.class final Lcom/windmill/sigmob/SigAdapterProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/SigAdapterProxy;->initializeADN(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/SigAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/SigAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/SigAdapterProxy$2;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$2;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    return-void
.end method

.method public final onStartSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$2;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V

    return-void
.end method
