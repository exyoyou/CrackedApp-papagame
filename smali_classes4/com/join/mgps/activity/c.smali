.class public final synthetic Lcom/join/mgps/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/BindAccountActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/BindAccountActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/c;->b:Lcom/join/mgps/activity/BindAccountActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/c;->b:Lcom/join/mgps/activity/BindAccountActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/join/mgps/activity/BindAccountActivity;->l(Lcom/join/mgps/activity/BindAccountActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
