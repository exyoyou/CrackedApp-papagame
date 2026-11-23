.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/d;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/d;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->T(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
