.class public final synthetic Lcom/windmill/gdt/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/compliance/DownloadConfirmListener;


# instance fields
.field public final synthetic b:Lcom/windmill/gdt/GDTInterstitialAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/gdt/GDTInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/gdt/i;->b:Lcom/windmill/gdt/GDTInterstitialAdapter;

    return-void
.end method


# virtual methods
.method public final onDownloadConfirm(Landroid/app/Activity;ILjava/lang/String;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/gdt/i;->b:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/windmill/gdt/GDTInterstitialAdapter;->g(Lcom/windmill/gdt/GDTInterstitialAdapter;Landroid/app/Activity;ILjava/lang/String;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V

    return-void
.end method
