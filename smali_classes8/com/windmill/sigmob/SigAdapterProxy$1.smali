.class final Lcom/windmill/sigmob/SigAdapterProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/OnInitializationListener;


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

    iput-object p1, p0, Lcom/windmill/sigmob/SigAdapterProxy$1;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFail(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitializationFail: error = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SigAdapterProxy#"

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onInitializationSuccess()V
    .locals 2

    const-string v0, "SigAdapterProxy#"

    const-string v1, "onInitializationSuccess"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
