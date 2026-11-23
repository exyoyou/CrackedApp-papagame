.class public final synthetic Lcom/haima/hmcp/widgets/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/InputEditDialog;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/c0;->b:Lcom/haima/hmcp/widgets/InputEditDialog;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/c0;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/c0;->b:Lcom/haima/hmcp/widgets/InputEditDialog;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/c0;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/InputEditDialog;->d(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/widget/EditText;)V

    return-void
.end method
