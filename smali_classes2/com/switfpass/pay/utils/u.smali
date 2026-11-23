.class final Lcom/switfpass/pay/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic b:Lcom/switfpass/pay/utils/b0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/u;->b:Lcom/switfpass/pay/utils/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/switfpass/pay/utils/u;->b:Lcom/switfpass/pay/utils/b0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/b0;->m(Lcom/switfpass/pay/utils/b0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/utils/b0;->h(Lcom/switfpass/pay/utils/b0;Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void
.end method
