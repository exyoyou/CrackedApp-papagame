.class final Lcom/windmill/gdt/GDTInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

.field final synthetic b:Lcom/windmill/gdt/GDTInterstitialAdapter;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/windmill/gdt/GDTInterstitialAdapter;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->b:Lcom/windmill/gdt/GDTInterstitialAdapter;

    iput-object p2, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->a:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->c:Z

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->a:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;->onCancel()V

    :cond_0
    return-void
.end method

.method public final onConfirm()V
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->c:Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->b:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClickDownload()V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$2;->a:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;->onConfirm()V

    :cond_1
    return-void
.end method
