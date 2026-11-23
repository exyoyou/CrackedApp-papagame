.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/a;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/i0;->b:Lcom/kongzue/dialogx/dialogs/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/i0;->b:Lcom/kongzue/dialogx/dialogs/a;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2$1;->e(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    return-void
.end method
