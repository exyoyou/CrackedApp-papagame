.class public final synthetic Lcom/join/mgps/fragment/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/v2;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/v2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/n2;->b:Lcom/join/mgps/fragment/v2;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n2;->b:Lcom/join/mgps/fragment/v2;

    invoke-static {v0}, Lcom/join/mgps/fragment/v2;->X(Lcom/join/mgps/fragment/v2;)V

    return-void
.end method
