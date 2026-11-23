.class public final synthetic Lcom/haima/hmcp/virtual/dialogs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/b;->b:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/b;->b:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    invoke-static {v0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->a(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;Landroid/view/View;)V

    return-void
.end method
