.class public final synthetic Lcom/haima/hmcp/widgets/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/InputEditDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/e0;->b:Lcom/haima/hmcp/widgets/InputEditDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/e0;->b:Lcom/haima/hmcp/widgets/InputEditDialog;

    invoke-static {v0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->c(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/view/View;)V

    return-void
.end method
