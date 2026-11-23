.class final Lcom/switfpass/pay/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic b:Lcom/switfpass/pay/utils/b0;

.field private final synthetic c:Lcom/switfpass/pay/utils/ProgressInfoDialog;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/b0;Lcom/switfpass/pay/utils/ProgressInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/a;->b:Lcom/switfpass/pay/utils/b0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/a;->c:Lcom/switfpass/pay/utils/ProgressInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/switfpass/pay/utils/a;->b:Lcom/switfpass/pay/utils/b0;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/switfpass/pay/utils/b0;->e(Lcom/switfpass/pay/utils/b0;Z)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/a;->c:Lcom/switfpass/pay/utils/ProgressInfoDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
