.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/m0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/m0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;

    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->b(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    return-void
.end method
